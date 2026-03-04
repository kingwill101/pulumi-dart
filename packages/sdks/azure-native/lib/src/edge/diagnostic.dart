import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'diagnostic_args.dart';
import 'diagnostic_properties_response.dart';
import 'system_data_response.dart';

/// A Diagnostic resource.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Diagnostics_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diagnostic = new AzureNative.Edge.Diagnostic("diagnostic", new()
///     {
///         DiagnosticName = "testname",
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Location = "ouwfvnokjvivmjzqpupwrbsmls",
///         ResourceGroupName = "rgconfigurationmanager",
///         Tags =
///         {
///             { "key4304", "mdrwpsdrcicagvximokxrrp" },
///         },
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
/// 		_, err := edge.NewDiagnostic(ctx, "diagnostic", &edge.DiagnosticArgs{
/// 			DiagnosticName: pulumi.String("testname"),
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Location:          pulumi.String("ouwfvnokjvivmjzqpupwrbsmls"),
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			Tags: pulumi.StringMap{
/// 				"key4304": pulumi.String("mdrwpsdrcicagvximokxrrp"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.edge.Diagnostic;
/// import com.pulumi.azurenative.edge.DiagnosticArgs;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var diagnostic = new Diagnostic("diagnostic", DiagnosticArgs.builder()
///             .diagnosticName("testname")
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .location("ouwfvnokjvivmjzqpupwrbsmls")
///             .resourceGroupName("rgconfigurationmanager")
///             .tags(Map.of("key4304", "mdrwpsdrcicagvximokxrrp"))
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
/// const diagnostic = new azure_native.edge.Diagnostic("diagnostic", {
///     diagnosticName: "testname",
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     location: "ouwfvnokjvivmjzqpupwrbsmls",
///     resourceGroupName: "rgconfigurationmanager",
///     tags: {
///         key4304: "mdrwpsdrcicagvximokxrrp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// diagnostic = azure_native.edge.Diagnostic("diagnostic",
///     diagnostic_name="testname",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     location="ouwfvnokjvivmjzqpupwrbsmls",
///     resource_group_name="rgconfigurationmanager",
///     tags={
///         "key4304": "mdrwpsdrcicagvximokxrrp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   diagnostic:
///     type: azure-native:edge:Diagnostic
///     properties:
///       diagnosticName: testname
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       location: ouwfvnokjvivmjzqpupwrbsmls
///       resourceGroupName: rgconfigurationmanager
///       tags:
///         key4304: mdrwpsdrcicagvximokxrrp
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
/// $ pulumi import azure-native:edge:Diagnostic drohk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/diagnostics/{diagnosticName}
/// ```
class Diagnostic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The complex type of the extended location.
  late final pulumi.Output<
    AzureResourceManagerCommonTypesExtendedLocationResponse?
  >
  extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<DiagnosticPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Diagnostic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Diagnostic]. {@macro pulumi_edge_diagnostic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Diagnostic(
    String name, {
    DiagnosticArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:Diagnostic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation =
        registerOutput<
          AzureResourceManagerCommonTypesExtendedLocationResponse?
        >('extendedLocation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DiagnosticPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
