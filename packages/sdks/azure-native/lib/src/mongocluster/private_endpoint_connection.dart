import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approves a private endpoint connection on a Mongo Cluster resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.MongoCluster.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         MongoClusterName = "myMongoCluster",
///         PrivateEndpointConnectionName = "pecTest",
///         Properties = new AzureNative.MongoCluster.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.MongoCluster.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Auto-Approved",
///                 Status = AzureNative.MongoCluster.PrivateEndpointServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "TestGroup",
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
/// 	mongocluster "github.com/pulumi/pulumi-azure-native-sdk/mongocluster/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mongocluster.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &mongocluster.PrivateEndpointConnectionArgs{
/// 			MongoClusterName:              pulumi.String("myMongoCluster"),
/// 			PrivateEndpointConnectionName: pulumi.String("pecTest"),
/// 			Properties: &mongocluster.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &mongocluster.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Auto-Approved"),
/// 					Status:      pulumi.String(mongocluster.PrivateEndpointServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestGroup"),
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
/// import com.pulumi.azurenative.mongocluster.PrivateEndpointConnection;
/// import com.pulumi.azurenative.mongocluster.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .mongoClusterName("myMongoCluster")
///             .privateEndpointConnectionName("pecTest")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Auto-Approved")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("TestGroup")
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
/// const privateEndpointConnection = new azure_native.mongocluster.PrivateEndpointConnection("privateEndpointConnection", {
///     mongoClusterName: "myMongoCluster",
///     privateEndpointConnectionName: "pecTest",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Auto-Approved",
///             status: azure_native.mongocluster.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "TestGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.mongocluster.PrivateEndpointConnection("privateEndpointConnection",
///     mongo_cluster_name="myMongoCluster",
///     private_endpoint_connection_name="pecTest",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Auto-Approved",
///             "status": azure_native.mongocluster.PrivateEndpointServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="TestGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:mongocluster:PrivateEndpointConnection
///     properties:
///       mongoClusterName: myMongoCluster
///       privateEndpointConnectionName: pecTest
///       properties:
///         privateLinkServiceConnectionState:
///           description: Auto-Approved
///           status: Approved
///       resourceGroupName: TestGroup
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
/// $ pulumi import azure-native:mongocluster:PrivateEndpointConnection pecTest.5d393f64-ef64-46d0-9959-308321c44ac0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{mongoClusterName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_mongocluster_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:mongocluster:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointConnectionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
