import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'target_args.dart';

/// Model that represents a Target resource.
///
/// Uses Azure REST API version 2024-03-22-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-15-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01, 2026-05-01-preview, 2026-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/update a Target that extends a virtual machine resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var target = new AzureNative.Chaos.Target("target", new()
///     {
///         ParentProviderNamespace = "Microsoft.Compute",
///         ParentResourceName = "exampleVM",
///         ParentResourceType = "virtualMachines",
///         Properties = new Dictionary<string, object?>
///         {
///             ["identities"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["subject"] = "CN=example.subject",
///                     ["type"] = "CertificateSubjectIssuer",
///                 },
///             },
///         },
///         ResourceGroupName = "exampleRG",
///         TargetName = "Microsoft-Agent",
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
/// 	chaos "github.com/pulumi/pulumi-azure-native-sdk/chaos/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chaos.NewTarget(ctx, "target", &chaos.TargetArgs{
/// 			ParentProviderNamespace: pulumi.String("Microsoft.Compute"),
/// 			ParentResourceName:      pulumi.String("exampleVM"),
/// 			ParentResourceType:      pulumi.String("virtualMachines"),
/// 			Properties: pulumi.Any(map[string]interface{}{
/// 				"identities": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"subject": "CN=example.subject",
/// 						"type":    "CertificateSubjectIssuer",
/// 					},
/// 				},
/// 			}),
/// 			ResourceGroupName: pulumi.String("exampleRG"),
/// 			TargetName:        pulumi.String("Microsoft-Agent"),
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
/// resource "azure-native_chaos_target" "target" {
///   parent_provider_namespace = "Microsoft.Compute"
///   parent_resource_name      = "exampleVM"
///   parent_resource_type      = "virtualMachines"
///   properties = {
///     "identities" = [{
///       "subject" = "CN=example.subject"
///       "type"    = "CertificateSubjectIssuer"
///     }]
///   }
///   resource_group_name = "exampleRG"
///   target_name         = "Microsoft-Agent"
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
/// import com.pulumi.azurenative.chaos.Target;
/// import com.pulumi.azurenative.chaos.TargetArgs;
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
///         var target = new Target("target", TargetArgs.builder()
///             .parentProviderNamespace("Microsoft.Compute")
///             .parentResourceName("exampleVM")
///             .parentResourceType("virtualMachines")
///             .properties(Map.of("identities", Arrays.asList(Map.ofEntries(
///                 Map.entry("subject", "CN=example.subject"),
///                 Map.entry("type", "CertificateSubjectIssuer")
///             ))))
///             .resourceGroupName("exampleRG")
///             .targetName("Microsoft-Agent")
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
/// const target = new azure_native.chaos.Target("target", {
///     parentProviderNamespace: "Microsoft.Compute",
///     parentResourceName: "exampleVM",
///     parentResourceType: "virtualMachines",
///     properties: {
///         identities: [{
///             subject: "CN=example.subject",
///             type: "CertificateSubjectIssuer",
///         }],
///     },
///     resourceGroupName: "exampleRG",
///     targetName: "Microsoft-Agent",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// target = azure_native.chaos.Target("target",
///     parent_provider_namespace="Microsoft.Compute",
///     parent_resource_name="exampleVM",
///     parent_resource_type="virtualMachines",
///     properties={
///         "identities": [{
///             "subject": "CN=example.subject",
///             "type": "CertificateSubjectIssuer",
///         }],
///     },
///     resource_group_name="exampleRG",
///     target_name="Microsoft-Agent")
///
/// ```
///
/// ```yaml
/// resources:
///   target:
///     type: azure-native:chaos:Target
///     properties:
///       parentProviderNamespace: Microsoft.Compute
///       parentResourceName: exampleVM
///       parentResourceType: virtualMachines
///       properties:
///         identities:
///           - subject: CN=example.subject
///             type: CertificateSubjectIssuer
///       resourceGroupName: exampleRG
///       targetName: Microsoft-Agent
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
/// $ pulumi import azure-native:chaos:Target Microsoft-Agent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{parentProviderNamespace}/{parentResourceType}/{parentResourceName}/providers/Microsoft.Chaos/targets/{targetName}
/// ```
class Target extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Location of the target resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the target resource.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_chaos_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:chaos:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Target] resource.
  Target.reference(String urn)
    : super(
        'azure-native:chaos:Target',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
