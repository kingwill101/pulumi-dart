import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_at_management_group_scope_args.dart';
import 'deployment_properties_extended_response.dart';

/// Deployment information.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create deployment at management group scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentAtManagementGroupScope = new AzureNative.Resources.DeploymentAtManagementGroupScope("deploymentAtManagementGroupScope", new()
///     {
///         DeploymentName = "my-deployment",
///         GroupId = "my-management-group-id",
///         Location = "eastus",
///         Properties = new AzureNative.Resources.Inputs.DeploymentPropertiesArgs
///         {
///             Mode = AzureNative.Resources.DeploymentMode.Incremental,
///             Parameters = null,
///             TemplateLink = new AzureNative.Resources.Inputs.TemplateLinkArgs
///             {
///                 Uri = "https://example.com/exampleTemplate.json",
///             },
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeploymentAtManagementGroupScope(ctx, "deploymentAtManagementGroupScope", &resources.DeploymentAtManagementGroupScopeArgs{
/// 			DeploymentName: pulumi.String("my-deployment"),
/// 			GroupId:        pulumi.String("my-management-group-id"),
/// 			Location:       pulumi.String("eastus"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode:       resources.DeploymentModeIncremental,
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					Uri: pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
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
/// import com.pulumi.azurenative.resources.DeploymentAtManagementGroupScope;
/// import com.pulumi.azurenative.resources.DeploymentAtManagementGroupScopeArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
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
///         var deploymentAtManagementGroupScope = new DeploymentAtManagementGroupScope("deploymentAtManagementGroupScope", DeploymentAtManagementGroupScopeArgs.builder()
///             .deploymentName("my-deployment")
///             .groupId("my-management-group-id")
///             .location("eastus")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Incremental")
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
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
/// const deploymentAtManagementGroupScope = new azure_native.resources.DeploymentAtManagementGroupScope("deploymentAtManagementGroupScope", {
///     deploymentName: "my-deployment",
///     groupId: "my-management-group-id",
///     location: "eastus",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Incremental,
///         parameters: {},
///         templateLink: {
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment_at_management_group_scope = azure_native.resources.DeploymentAtManagementGroupScope("deploymentAtManagementGroupScope",
///     deployment_name="my-deployment",
///     group_id="my-management-group-id",
///     location="eastus",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.INCREMENTAL,
///         "parameters": {},
///         "template_link": {
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentAtManagementGroupScope:
///     type: azure-native:resources:DeploymentAtManagementGroupScope
///     properties:
///       deploymentName: my-deployment
///       groupId: my-management-group-id
///       location: eastus
///       properties:
///         mode: Incremental
///         parameters: {}
///         templateLink:
///           uri: https://example.com/exampleTemplate.json
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
/// $ pulumi import azure-native:resources:DeploymentAtManagementGroupScope my-deployment /providers/Microsoft.Management/managementGroups/{groupId}/providers/Microsoft.Resources/deployments/{deploymentName}
/// ```
class DeploymentAtManagementGroupScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// the location of the deployment.
  late final pulumi.Output<String?> location;
  /// The name of the deployment.
  late final pulumi.Output<String> name;
  /// Deployment properties.
  late final pulumi.Output<DeploymentPropertiesExtendedResponse> properties;
  /// Deployment tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the deployment.
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentAtManagementGroupScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentAtManagementGroupScope]. {@macro pulumi_resources_deployment_at_management_group_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentAtManagementGroupScope(
    String name, {
    DeploymentAtManagementGroupScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:DeploymentAtManagementGroupScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<DeploymentPropertiesExtendedResponse>('properties');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
