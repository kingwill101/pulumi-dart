import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_deployment_args.dart';
import 'content_safety_endpoint_deployment_resource_properties_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-04-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Azure OpenAI Connection Deployment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionDeployment = new AzureNative.MachineLearningServices.ConnectionDeployment("connectionDeployment", new()
///     {
///         ConnectionName = "testConnection",
///         DeploymentName = "text-davinci-003",
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
/// 		_, err := machinelearningservices.NewConnectionDeployment(ctx, "connectionDeployment", &machinelearningservices.ConnectionDeploymentArgs{
/// 			ConnectionName: pulumi.String("testConnection"),
/// 			DeploymentName: pulumi.String("text-davinci-003"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_connectiondeployment" "connectionDeployment" {
///   connection_name = "testConnection"
///   deployment_name = "text-davinci-003"
///   properties = {
///     "model" = {
///       "format"  = "OpenAI"
///       "name"    = "text-davinci-003"
///       "version" = "1"
///     }
///     "type"                 = "Azure.OpenAI"
///     "versionUpgradeOption" = "OnceNewDefaultVersionAvailable"
///   }
///   resource_group_name = "resourceGroup-1"
///   workspace_name      = "testworkspace"
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
/// import com.pulumi.azurenative.machinelearningservices.ConnectionDeployment;
/// import com.pulumi.azurenative.machinelearningservices.ConnectionDeploymentArgs;
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
///         var connectionDeployment = new ConnectionDeployment("connectionDeployment", ConnectionDeploymentArgs.builder()
///             .connectionName("testConnection")
///             .deploymentName("text-davinci-003")
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
/// const connectionDeployment = new azure_native.machinelearningservices.ConnectionDeployment("connectionDeployment", {
///     connectionName: "testConnection",
///     deploymentName: "text-davinci-003",
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
/// connection_deployment = azure_native.machinelearningservices.ConnectionDeployment("connectionDeployment",
///     connection_name="testConnection",
///     deployment_name="text-davinci-003",
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
///   connectionDeployment:
///     type: azure-native:machinelearningservices:ConnectionDeployment
///     properties:
///       connectionName: testConnection
///       deploymentName: text-davinci-003
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
/// $ pulumi import azure-native:machinelearningservices:ConnectionDeployment text-davinci-003 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/connections/{connectionName}/deployments/{deploymentName}
/// ```
class ConnectionDeployment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<ContentSafetyEndpointDeploymentResourcePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionDeployment]. {@macro pulumi_machinelearningservices_connection_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionDeployment(
    String name, {
    ConnectionDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ConnectionDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ContentSafetyEndpointDeploymentResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentSafetyEndpointDeploymentResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
