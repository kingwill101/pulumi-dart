import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Cognitive Services account deployment.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutDeployment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.CognitiveServices.Deployment("deployment", new()
///     {
///         AccountName = "accountName",
///         DeploymentName = "deploymentName",
///         Properties = new AzureNative.CognitiveServices.Inputs.DeploymentPropertiesArgs
///         {
///             Model = new AzureNative.CognitiveServices.Inputs.DeploymentModelArgs
///             {
///                 Format = "OpenAI",
///                 Name = "ada",
///                 Version = "1",
///             },
///         },
///         ResourceGroupName = "resourceGroupName",
///         Sku = new AzureNative.CognitiveServices.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Name = "Standard",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewDeployment(ctx, "deployment", &cognitiveservices.DeploymentArgs{
/// 			AccountName:    pulumi.String("accountName"),
/// 			DeploymentName: pulumi.String("deploymentName"),
/// 			Properties: &cognitiveservices.DeploymentPropertiesArgs{
/// 				Model: &cognitiveservices.DeploymentModelArgs{
/// 					Format:  pulumi.String("OpenAI"),
/// 					Name:    pulumi.String("ada"),
/// 					Version: pulumi.String("1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Sku: &cognitiveservices.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("Standard"),
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
/// import com.pulumi.azurenative.cognitiveservices.Deployment;
/// import com.pulumi.azurenative.cognitiveservices.DeploymentArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.DeploymentModelArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.SkuArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .accountName("accountName")
///             .deploymentName("deploymentName")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .model(DeploymentModelArgs.builder()
///                     .format("OpenAI")
///                     .name("ada")
///                     .version("1")
///                     .build())
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .name("Standard")
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
/// const deployment = new azure_native.cognitiveservices.Deployment("deployment", {
///     accountName: "accountName",
///     deploymentName: "deploymentName",
///     properties: {
///         model: {
///             format: "OpenAI",
///             name: "ada",
///             version: "1",
///         },
///     },
///     resourceGroupName: "resourceGroupName",
///     sku: {
///         capacity: 1,
///         name: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.cognitiveservices.Deployment("deployment",
///     account_name="accountName",
///     deployment_name="deploymentName",
///     properties={
///         "model": {
///             "format": "OpenAI",
///             "name": "ada",
///             "version": "1",
///         },
///     },
///     resource_group_name="resourceGroupName",
///     sku={
///         "capacity": 1,
///         "name": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:cognitiveservices:Deployment
///     properties:
///       accountName: accountName
///       deploymentName: deploymentName
///       properties:
///         model:
///           format: OpenAI
///           name: ada
///           version: '1'
///       resourceGroupName: resourceGroupName
///       sku:
///         capacity: 1
///         name: Standard
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
/// $ pulumi import azure-native:cognitiveservices:Deployment deploymentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/deployments/{deploymentName}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Cognitive Services account deployment.
  late final pulumi.Output<DeploymentPropertiesResponse> properties;

  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_cognitiveservices_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentPropertiesResponse>('properties');
    sku = registerOutput<SkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
