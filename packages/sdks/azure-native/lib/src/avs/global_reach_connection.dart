import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_reach_connection_args.dart';
import 'system_data_response.dart';

/// A global reach connection resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GlobalReachConnections_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var globalReachConnection = new AzureNative.AVS.GlobalReachConnection("globalReachConnection", new()
///     {
///         AuthorizationKey = "01010101-0101-0101-0101-010101010101",
///         GlobalReachConnectionName = "connection1",
///         PeerExpressRouteCircuit = "/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.Network/expressRouteCircuits/mypeer",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewGlobalReachConnection(ctx, "globalReachConnection", &avs.GlobalReachConnectionArgs{
/// 			AuthorizationKey:          pulumi.String("01010101-0101-0101-0101-010101010101"),
/// 			GlobalReachConnectionName: pulumi.String("connection1"),
/// 			PeerExpressRouteCircuit:   pulumi.String("/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.Network/expressRouteCircuits/mypeer"),
/// 			PrivateCloudName:          pulumi.String("cloud1"),
/// 			ResourceGroupName:         pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.GlobalReachConnection;
/// import com.pulumi.azurenative.avs.GlobalReachConnectionArgs;
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
///         var globalReachConnection = new GlobalReachConnection("globalReachConnection", GlobalReachConnectionArgs.builder()
///             .authorizationKey("01010101-0101-0101-0101-010101010101")
///             .globalReachConnectionName("connection1")
///             .peerExpressRouteCircuit("/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.Network/expressRouteCircuits/mypeer")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
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
/// const globalReachConnection = new azure_native.avs.GlobalReachConnection("globalReachConnection", {
///     authorizationKey: "01010101-0101-0101-0101-010101010101",
///     globalReachConnectionName: "connection1",
///     peerExpressRouteCircuit: "/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.Network/expressRouteCircuits/mypeer",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// global_reach_connection = azure_native.avs.GlobalReachConnection("globalReachConnection",
///     authorization_key="01010101-0101-0101-0101-010101010101",
///     global_reach_connection_name="connection1",
///     peer_express_route_circuit="/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.Network/expressRouteCircuits/mypeer",
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   globalReachConnection:
///     type: azure-native:avs:GlobalReachConnection
///     properties:
///       authorizationKey: 01010101-0101-0101-0101-010101010101
///       globalReachConnectionName: connection1
///       peerExpressRouteCircuit: /subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.Network/expressRouteCircuits/mypeer
///       privateCloudName: cloud1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:GlobalReachConnection connection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/globalReachConnections/{globalReachConnectionName}
/// ```
class GlobalReachConnection extends pulumi.CustomResource {
  /// The network used for global reach carved out from the original network block
  /// provided for the private cloud
  late final pulumi.Output<String> addressPrefix;
  /// Authorization key from the peer express route used for the global reach
  /// connection
  late final pulumi.Output<String?> authorizationKey;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The connection status of the global reach connection
  late final pulumi.Output<String> circuitConnectionStatus;
  /// The ID of the Private Cloud's ExpressRoute Circuit that is participating in the
  /// global reach connection
  late final pulumi.Output<String?> expressRouteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Identifier of the ExpressRoute Circuit to peer with in the global reach
  /// connection
  late final pulumi.Output<String?> peerExpressRouteCircuit;
  /// The state of the  ExpressRoute Circuit Authorization provisioning
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GlobalReachConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalReachConnection]. {@macro pulumi_avs_global_reach_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalReachConnection(
    String name, {
    GlobalReachConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:GlobalReachConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefix = registerOutput<String>('addressPrefix');
    authorizationKey = registerOutput<String?>('authorizationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitConnectionStatus = registerOutput<String>('circuitConnectionStatus');
    expressRouteId = registerOutput<String?>('expressRouteId');
    this.name = registerOutput<String>('name');
    peerExpressRouteCircuit = registerOutput<String?>('peerExpressRouteCircuit');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
