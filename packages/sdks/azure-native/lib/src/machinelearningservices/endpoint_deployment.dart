import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_safety_endpoint_deployment_resource_properties_response.dart';
import 'endpoint_deployment_args.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Endpoint Deployment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpointDeployment = new AzureNative.MachineLearningServices.EndpointDeployment("endpointDeployment", new()
///     {
///         DeploymentName = "text-davinci-003",
///         EndpointName = "Azure.OpenAI",
///         Properties = new AzureNative.MachineLearningServices.Inputs.OpenAIEndpointDeploymentResourcePropertiesArgs
///         {
///             Model = new AzureNative.MachineLearningServices.Inputs.EndpointDeploymentModelArgs
///             {
///                 Format = "OpenAI",
///                 Name = "text-davinci-003",
///                 Version = "1",
///             },
///             Type = "Azure.OpenAI",
///             VersionUpgradeOption = AzureNative.MachineLearningServices.DeploymentModelVersionUpgradeOption.OnceNewDefaultVersionAvailable,
///         },
///         ResourceGroupName = "resourceGroup-1",
///         WorkspaceName = "testworkspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewEndpointDeployment(ctx, "endpointDeployment", &machinelearningservices.EndpointDeploymentArgs{
/// 			DeploymentName: pulumi.String("text-davinci-003"),
/// 			EndpointName:   pulumi.String("Azure.OpenAI"),
/// 			Properties: &machinelearningservices.OpenAIEndpointDeploymentResourcePropertiesArgs{
/// 				Model: &machinelearningservices.EndpointDeploymentModelArgs{
/// 					Format:  pulumi.String("OpenAI"),
/// 					Name:    pulumi.String("text-davinci-003"),
/// 					Version: pulumi.String("1"),
/// 				},
/// 				Type:                 pulumi.String("Azure.OpenAI"),
/// 				VersionUpgradeOption: pulumi.String(machinelearningservices.DeploymentModelVersionUpgradeOptionOnceNewDefaultVersionAvailable),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup-1"),
/// 			WorkspaceName:     pulumi.String("testworkspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.EndpointDeployment;
/// import com.pulumi.azurenative.machinelearningservices.EndpointDeploymentArgs;
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
///         var endpointDeployment = new EndpointDeployment("endpointDeployment", EndpointDeploymentArgs.builder()
///             .deploymentName("text-davinci-003")
///             .endpointName("Azure.OpenAI")
///             .properties(OpenAIEndpointDeploymentResourcePropertiesArgs.builder()
///                 .model(EndpointDeploymentModelArgs.builder()
///                     .format("OpenAI")
///                     .name("text-davinci-003")
///                     .version("1")
///                     .build())
///                 .type("Azure.OpenAI")
///                 .versionUpgradeOption("OnceNewDefaultVersionAvailable")
///                 .build())
///             .resourceGroupName("resourceGroup-1")
///             .workspaceName("testworkspace")
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
/// const endpointDeployment = new azure_native.machinelearningservices.EndpointDeployment("endpointDeployment", {
///     deploymentName: "text-davinci-003",
///     endpointName: "Azure.OpenAI",
///     properties: {
///         model: {
///             format: "OpenAI",
///             name: "text-davinci-003",
///             version: "1",
///         },
///         type: "Azure.OpenAI",
///         versionUpgradeOption: azure_native.machinelearningservices.DeploymentModelVersionUpgradeOption.OnceNewDefaultVersionAvailable,
///     },
///     resourceGroupName: "resourceGroup-1",
///     workspaceName: "testworkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint_deployment = azure_native.machinelearningservices.EndpointDeployment("endpointDeployment",
///     deployment_name="text-davinci-003",
///     endpoint_name="Azure.OpenAI",
///     properties={
///         "model": {
///             "format": "OpenAI",
///             "name": "text-davinci-003",
///             "version": "1",
///         },
///         "type": "Azure.OpenAI",
///         "version_upgrade_option": azure_native.machinelearningservices.DeploymentModelVersionUpgradeOption.ONCE_NEW_DEFAULT_VERSION_AVAILABLE,
///     },
///     resource_group_name="resourceGroup-1",
///     workspace_name="testworkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   endpointDeployment:
///     type: azure-native:machinelearningservices:EndpointDeployment
///     properties:
///       deploymentName: text-davinci-003
///       endpointName: Azure.OpenAI
///       properties:
///         model:
///           format: OpenAI
///           name: text-davinci-003
///           version: '1'
///         type: Azure.OpenAI
///         versionUpgradeOption: OnceNewDefaultVersionAvailable
///       resourceGroupName: resourceGroup-1
///       workspaceName: testworkspace
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
/// $ pulumi import azure-native:machinelearningservices:EndpointDeployment text-davinci-003 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/endpoints/{endpointName}/deployments/{deploymentName}
/// ```
class EndpointDeployment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<
    ContentSafetyEndpointDeploymentResourcePropertiesResponse
  >
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EndpointDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointDeployment]. {@macro pulumi_machinelearningservices_endpoint_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointDeployment(
    String name, {
    EndpointDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:EndpointDeployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<
          ContentSafetyEndpointDeploymentResourcePropertiesResponse
        >('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
