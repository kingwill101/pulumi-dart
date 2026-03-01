import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_node_old_response_response.dart';
import 'cache_nodes_operation_args.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2023-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CacheNodesOperations_CreateorUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cacheNodesOperation = new AzureNative.ConnectedCache.CacheNodesOperation("cacheNodesOperation", new()
///     {
///         CustomerResourceName = "lwrsyhvfpcfrwrim",
///         Location = "westus",
///         Properties = new AzureNative.ConnectedCache.Inputs.CacheNodeOldResponseArgs
///         {
///             StatusCode = "movtzupooyhdqk",
///             StatusDetails = "quuziibkwtgf",
///             StatusText = "bjnsrpzaofjntleoesjwammgbi",
///         },
///         ResourceGroupName = "rgConnectedCache",
///         Tags =
///         {
///             { "key8256", "oreqiywrjkmate" },
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
/// 	connectedcache "github.com/pulumi/pulumi-azure-native-sdk/connectedcache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedcache.NewCacheNodesOperation(ctx, "cacheNodesOperation", &connectedcache.CacheNodesOperationArgs{
/// 			CustomerResourceName: pulumi.String("lwrsyhvfpcfrwrim"),
/// 			Location:             pulumi.String("westus"),
/// 			Properties: &connectedcache.CacheNodeOldResponseArgs{
/// 				StatusCode:    pulumi.String("movtzupooyhdqk"),
/// 				StatusDetails: pulumi.String("quuziibkwtgf"),
/// 				StatusText:    pulumi.String("bjnsrpzaofjntleoesjwammgbi"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgConnectedCache"),
/// 			Tags: pulumi.StringMap{
/// 				"key8256": pulumi.String("oreqiywrjkmate"),
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
/// import com.pulumi.azurenative.connectedcache.CacheNodesOperation;
/// import com.pulumi.azurenative.connectedcache.CacheNodesOperationArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.CacheNodeOldResponseArgs;
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
///         var cacheNodesOperation = new CacheNodesOperation("cacheNodesOperation", CacheNodesOperationArgs.builder()
///             .customerResourceName("lwrsyhvfpcfrwrim")
///             .location("westus")
///             .properties(CacheNodeOldResponseArgs.builder()
///                 .statusCode("movtzupooyhdqk")
///                 .statusDetails("quuziibkwtgf")
///                 .statusText("bjnsrpzaofjntleoesjwammgbi")
///                 .build())
///             .resourceGroupName("rgConnectedCache")
///             .tags(Map.of("key8256", "oreqiywrjkmate"))
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
/// const cacheNodesOperation = new azure_native.connectedcache.CacheNodesOperation("cacheNodesOperation", {
///     customerResourceName: "lwrsyhvfpcfrwrim",
///     location: "westus",
///     properties: {
///         statusCode: "movtzupooyhdqk",
///         statusDetails: "quuziibkwtgf",
///         statusText: "bjnsrpzaofjntleoesjwammgbi",
///     },
///     resourceGroupName: "rgConnectedCache",
///     tags: {
///         key8256: "oreqiywrjkmate",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cache_nodes_operation = azure_native.connectedcache.CacheNodesOperation("cacheNodesOperation",
///     customer_resource_name="lwrsyhvfpcfrwrim",
///     location="westus",
///     properties={
///         "status_code": "movtzupooyhdqk",
///         "status_details": "quuziibkwtgf",
///         "status_text": "bjnsrpzaofjntleoesjwammgbi",
///     },
///     resource_group_name="rgConnectedCache",
///     tags={
///         "key8256": "oreqiywrjkmate",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cacheNodesOperation:
///     type: azure-native:connectedcache:CacheNodesOperation
///     properties:
///       customerResourceName: lwrsyhvfpcfrwrim
///       location: westus
///       properties:
///         statusCode: movtzupooyhdqk
///         statusDetails: quuziibkwtgf
///         statusText: bjnsrpzaofjntleoesjwammgbi
///       resourceGroupName: rgConnectedCache
///       tags:
///         key8256: oreqiywrjkmate
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
/// $ pulumi import azure-native:connectedcache:CacheNodesOperation MCCTPTest2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedCache/cacheNodes/{customerResourceName}
/// ```
class CacheNodesOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CacheNodeOldResponseResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CacheNodesOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheNodesOperation]. {@macro pulumi_connectedcache_cache_nodes_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheNodesOperation(
    String name, {
    CacheNodesOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedcache:CacheNodesOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CacheNodeOldResponseResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
