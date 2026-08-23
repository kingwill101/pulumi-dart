import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_reference_args.dart';
import 'site_reference_properties_response.dart';
import 'system_data_response.dart';

/// Site Reference Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01, 2025-08-15-preview, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SiteReferences_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var siteReference = new AzureNative.Edge.SiteReference("siteReference", new()
///     {
///         ContextName = "testname",
///         Properties = new AzureNative.Edge.Inputs.SiteReferencePropertiesArgs
///         {
///             SiteId = "xxjpxdcaumewwgpbwzkcrgrcw",
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         SiteReferenceName = "testname",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewSiteReference(ctx, "siteReference", &edge.SiteReferenceArgs{
/// 			ContextName: pulumi.String("testname"),
/// 			Properties: &edge.SiteReferencePropertiesArgs{
/// 				SiteId: pulumi.String("xxjpxdcaumewwgpbwzkcrgrcw"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			SiteReferenceName: pulumi.String("testname"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_edge_sitereference" "siteReference" {
///   context_name = "testname"
///   properties = {
///     site_id = "xxjpxdcaumewwgpbwzkcrgrcw"
///   }
///   resource_group_name = "rgconfigurationmanager"
///   site_reference_name = "testname"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.edge.SiteReference;
/// import com.pulumi.azurenative.edge.SiteReferenceArgs;
/// import com.pulumi.azurenative.edge.inputs.SiteReferencePropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var siteReference = new SiteReference("siteReference", SiteReferenceArgs.builder()
///             .contextName("testname")
///             .properties(SiteReferencePropertiesArgs.builder()
///                 .siteId("xxjpxdcaumewwgpbwzkcrgrcw")
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .siteReferenceName("testname")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const siteReference = new azure_native.edge.SiteReference("siteReference", {
///     contextName: "testname",
///     properties: {
///         siteId: "xxjpxdcaumewwgpbwzkcrgrcw",
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     siteReferenceName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// site_reference = azure_native.edge.SiteReference("siteReference",
///     context_name="testname",
///     properties={
///         "site_id": "xxjpxdcaumewwgpbwzkcrgrcw",
///     },
///     resource_group_name="rgconfigurationmanager",
///     site_reference_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   siteReference:
///     type: azure-native:edge:SiteReference
///     properties:
///       contextName: testname
///       properties:
///         siteId: xxjpxdcaumewwgpbwzkcrgrcw
///       resourceGroupName: rgconfigurationmanager
///       siteReferenceName: testname
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:edge:SiteReference egcgxnnunldslhvcg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/contexts/{contextName}/siteReferences/{siteReferenceName}
/// ```
class SiteReference extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SiteReferencePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SiteReference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteReference]. {@macro pulumi_edge_site_reference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteReference(
    String name, {
    SiteReferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:SiteReference',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SiteReferencePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteReferencePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
