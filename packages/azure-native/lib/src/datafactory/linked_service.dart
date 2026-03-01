import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_mwslinked_service_response.dart';
import 'linked_service_args.dart';

/// Linked service resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LinkedServices_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedService = new AzureNative.DataFactory.LinkedService("linkedService", new()
///     {
///         FactoryName = "exampleFactoryName",
///         LinkedServiceName = "exampleLinkedService",
///         Properties = new AzureNative.DataFactory.Inputs.AzureStorageLinkedServiceArgs
///         {
///             ConnectionString = new Dictionary<string, object?>
///             {
///                 ["type"] = "SecureString",
///                 ["value"] = "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///             },
///             Type = "AzureStorage",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewLinkedService(ctx, "linkedService", &datafactory.LinkedServiceArgs{
/// 			FactoryName:       pulumi.String("exampleFactoryName"),
/// 			LinkedServiceName: pulumi.String("exampleLinkedService"),
/// 			Properties: &datafactory.AzureStorageLinkedServiceArgs{
/// 				ConnectionString: pulumi.Any(map[string]interface{}{
/// 					"type":  "SecureString",
/// 					"value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
/// 				}),
/// 				Type: pulumi.String("AzureStorage"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.LinkedService;
/// import com.pulumi.azurenative.datafactory.LinkedServiceArgs;
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
///         var linkedService = new LinkedService("linkedService", LinkedServiceArgs.builder()
///             .factoryName("exampleFactoryName")
///             .linkedServiceName("exampleLinkedService")
///             .properties(AzureStorageLinkedServiceArgs.builder()
///                 .connectionString(Map.ofEntries(
///                     Map.entry("type", "SecureString"),
///                     Map.entry("value", "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>")
///                 ))
///                 .type("AzureStorage")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const linkedService = new azure_native.datafactory.LinkedService("linkedService", {
///     factoryName: "exampleFactoryName",
///     linkedServiceName: "exampleLinkedService",
///     properties: {
///         connectionString: {
///             type: "SecureString",
///             value: "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         type: "AzureStorage",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_service = azure_native.datafactory.LinkedService("linkedService",
///     factory_name="exampleFactoryName",
///     linked_service_name="exampleLinkedService",
///     properties={
///         "connection_string": {
///             "type": "SecureString",
///             "value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         "type": "AzureStorage",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedService:
///     type: azure-native:datafactory:LinkedService
///     properties:
///       factoryName: exampleFactoryName
///       linkedServiceName: exampleLinkedService
///       properties:
///         connectionString:
///           type: SecureString
///           value: DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>
///         type: AzureStorage
///       resourceGroupName: exampleResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### LinkedServices_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedService = new AzureNative.DataFactory.LinkedService("linkedService", new()
///     {
///         FactoryName = "exampleFactoryName",
///         LinkedServiceName = "exampleLinkedService",
///         Properties = new AzureNative.DataFactory.Inputs.AzureStorageLinkedServiceArgs
///         {
///             ConnectionString = new Dictionary<string, object?>
///             {
///                 ["type"] = "SecureString",
///                 ["value"] = "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///             },
///             Description = "Example description",
///             Type = "AzureStorage",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewLinkedService(ctx, "linkedService", &datafactory.LinkedServiceArgs{
/// 			FactoryName:       pulumi.String("exampleFactoryName"),
/// 			LinkedServiceName: pulumi.String("exampleLinkedService"),
/// 			Properties: &datafactory.AzureStorageLinkedServiceArgs{
/// 				ConnectionString: pulumi.Any(map[string]interface{}{
/// 					"type":  "SecureString",
/// 					"value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
/// 				}),
/// 				Description: pulumi.String("Example description"),
/// 				Type:        pulumi.String("AzureStorage"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.LinkedService;
/// import com.pulumi.azurenative.datafactory.LinkedServiceArgs;
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
///         var linkedService = new LinkedService("linkedService", LinkedServiceArgs.builder()
///             .factoryName("exampleFactoryName")
///             .linkedServiceName("exampleLinkedService")
///             .properties(AzureStorageLinkedServiceArgs.builder()
///                 .connectionString(Map.ofEntries(
///                     Map.entry("type", "SecureString"),
///                     Map.entry("value", "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>")
///                 ))
///                 .description("Example description")
///                 .type("AzureStorage")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const linkedService = new azure_native.datafactory.LinkedService("linkedService", {
///     factoryName: "exampleFactoryName",
///     linkedServiceName: "exampleLinkedService",
///     properties: {
///         connectionString: {
///             type: "SecureString",
///             value: "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         description: "Example description",
///         type: "AzureStorage",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_service = azure_native.datafactory.LinkedService("linkedService",
///     factory_name="exampleFactoryName",
///     linked_service_name="exampleLinkedService",
///     properties={
///         "connection_string": {
///             "type": "SecureString",
///             "value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         "description": "Example description",
///         "type": "AzureStorage",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedService:
///     type: azure-native:datafactory:LinkedService
///     properties:
///       factoryName: exampleFactoryName
///       linkedServiceName: exampleLinkedService
///       properties:
///         connectionString:
///           type: SecureString
///           value: DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>
///         description: Example description
///         type: AzureStorage
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:LinkedService exampleLinkedService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/linkedservices/{linkedServiceName}
/// ```
class LinkedService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Properties of linked service.
  late final pulumi.Output<AmazonMWSLinkedServiceResponse> properties;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedService]. {@macro pulumi_datafactory_linked_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedService(
    String name, {
    LinkedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:LinkedService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<AmazonMWSLinkedServiceResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
