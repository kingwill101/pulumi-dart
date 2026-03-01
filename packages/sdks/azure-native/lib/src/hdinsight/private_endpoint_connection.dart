import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve a private endpoint connection manually.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.HDInsight.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ClusterName = "cluster1",
///         PrivateEndpointConnectionName = "testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2",
///         PrivateLinkServiceConnectionState = new AzureNative.HDInsight.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "None",
///             Description = "update it from pending to approved.",
///             Status = AzureNative.HDInsight.PrivateLinkServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "rg1",
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
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &hdinsight.PrivateEndpointConnectionArgs{
/// 			ClusterName:                   pulumi.String("cluster1"),
/// 			PrivateEndpointConnectionName: pulumi.String("testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2"),
/// 			PrivateLinkServiceConnectionState: &hdinsight.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("None"),
/// 				Description:     pulumi.String("update it from pending to approved."),
/// 				Status:          pulumi.String(hdinsight.PrivateLinkServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.hdinsight.PrivateEndpointConnection;
/// import com.pulumi.azurenative.hdinsight.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .clusterName("cluster1")
///             .privateEndpointConnectionName("testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("None")
///                 .description("update it from pending to approved.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const privateEndpointConnection = new azure_native.hdinsight.PrivateEndpointConnection("privateEndpointConnection", {
///     clusterName: "cluster1",
///     privateEndpointConnectionName: "testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "None",
///         description: "update it from pending to approved.",
///         status: azure_native.hdinsight.PrivateLinkServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.hdinsight.PrivateEndpointConnection("privateEndpointConnection",
///     cluster_name="cluster1",
///     private_endpoint_connection_name="testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2",
///     private_link_service_connection_state={
///         "actions_required": "None",
///         "description": "update it from pending to approved.",
///         "status": azure_native.hdinsight.PrivateLinkServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:hdinsight:PrivateEndpointConnection
///     properties:
///       clusterName: cluster1
///       privateEndpointConnectionName: testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2
///       privateLinkServiceConnectionState:
///         actionsRequired: None
///         description: update it from pending to approved.
///         status: Approved
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:hdinsight:PrivateEndpointConnection testprivateep.b3bf5fed-9b12-4560-b7d0-2abe1bba07e2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The link identifier.
  late final pulumi.Output<String> linkIdentifier;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint of the private endpoint connection
  late final pulumi.Output<PrivateEndpointResponse> privateEndpoint;
  /// The private link service connection state.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_hdinsight_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hdinsight:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.linkIdentifier = registerOutput<String>('linkIdentifier');
    this.name = registerOutput<String>('name');
    this.privateEndpoint = registerOutput<PrivateEndpointResponse>('privateEndpoint');
    this.privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
