import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_deployment_properties_response.dart';

/// An environment, which is essentially an ARM template deployment.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Environments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var environment = new AzureNative.DevTestLab.Environment("environment", new()
///     {
///         DeploymentProperties = new AzureNative.DevTestLab.Inputs.EnvironmentDeploymentPropertiesArgs
///         {
///             ArmTemplateId = "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/artifactSources/{artifactSourceName}/armTemplates/{armTemplateName}",
///             Parameters = new() { },
///         },
///         LabName = "{labName}",
///         Name = "{environmentName}",
///         ResourceGroupName = "resourceGroupName",
///         UserName = "@me",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewEnvironment(ctx, "environment", &devtestlab.EnvironmentArgs{
/// 			DeploymentProperties: &devtestlab.EnvironmentDeploymentPropertiesArgs{
/// 				ArmTemplateId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/artifactSources/{artifactSourceName}/armTemplates/{armTemplateName}"),
/// 				Parameters:    devtestlab.ArmTemplateParameterPropertiesArray{},
/// 			},
/// 			LabName:           pulumi.String("{labName}"),
/// 			Name:              pulumi.String("{environmentName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			UserName:          pulumi.String("@me"),
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
/// import com.pulumi.azurenative.devtestlab.Environment;
/// import com.pulumi.azurenative.devtestlab.EnvironmentArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.EnvironmentDeploymentPropertiesArgs;
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
///         var environment = new Environment("environment", EnvironmentArgs.builder()
///             .deploymentProperties(EnvironmentDeploymentPropertiesArgs.builder()
///                 .armTemplateId("/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/artifactSources/{artifactSourceName}/armTemplates/{armTemplateName}")
///                 .parameters()
///                 .build())
///             .labName("{labName}")
///             .name("{environmentName}")
///             .resourceGroupName("resourceGroupName")
///             .userName("@me")
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
/// const environment = new azure_native.devtestlab.Environment("environment", {
///     deploymentProperties: {
///         armTemplateId: "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/artifactSources/{artifactSourceName}/armTemplates/{armTemplateName}",
///         parameters: [],
///     },
///     labName: "{labName}",
///     name: "{environmentName}",
///     resourceGroupName: "resourceGroupName",
///     userName: "@me",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// environment = azure_native.devtestlab.Environment("environment",
///     deployment_properties={
///         "arm_template_id": "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/artifactSources/{artifactSourceName}/armTemplates/{armTemplateName}",
///         "parameters": [],
///     },
///     lab_name="{labName}",
///     name="{environmentName}",
///     resource_group_name="resourceGroupName",
///     user_name="@me")
///
/// ```
///
/// ```yaml
/// resources:
///   environment:
///     type: azure-native:devtestlab:Environment
///     properties:
///       deploymentProperties:
///         armTemplateId: /subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/artifactSources/{artifactSourceName}/armTemplates/{armTemplateName}
///         parameters: []
///       labName: '{labName}'
///       name: '{environmentName}'
///       resourceGroupName: resourceGroupName
///       userName: '@me'
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
/// $ pulumi import azure-native:devtestlab:Environment {environmentName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/users/{userName}/environments/{name}
/// ```
class Environment extends pulumi.CustomResource {
  /// The display name of the Azure Resource Manager template that produced the environment.
  late final pulumi.Output<String?> armTemplateDisplayName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creator of the environment.
  late final pulumi.Output<String> createdByUser;
  /// The deployment properties of the environment.
  late final pulumi.Output<EnvironmentDeploymentPropertiesResponse?> deploymentProperties;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The identifier of the resource group containing the environment's resources.
  late final pulumi.Output<String> resourceGroupId;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_devtestlab_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.armTemplateDisplayName = registerOutput<String?>('armTemplateDisplayName');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdByUser = registerOutput<String>('createdByUser');
    this.deploymentProperties = registerOutput<EnvironmentDeploymentPropertiesResponse?>('deploymentProperties');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
