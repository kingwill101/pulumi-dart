import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_connection_args.dart';
import 'ipv6_circuit_connection_config_response.dart';
import 'sub_resource_response.dart';

/// Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExpressRouteCircuitConnectionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteCircuitConnection = new AzureNative.Network.ExpressRouteCircuitConnection("expressRouteCircuitConnection", new()
///     {
///         AddressPrefix = "10.0.0.0/29",
///         AuthorizationKey = "946a1918-b7a2-4917-b43c-8c4cdaee006a",
///         CircuitName = "ExpressRouteARMCircuitA",
///         ConnectionName = "circuitConnectionUSAUS",
///         ExpressRouteCircuitPeering = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering",
///         },
///         Ipv6CircuitConnectionConfig = new AzureNative.Network.Inputs.Ipv6CircuitConnectionConfigArgs
///         {
///             AddressPrefix = "aa:bb::/125",
///         },
///         PeerExpressRouteCircuitPeering = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering",
///         },
///         PeeringName = "AzurePrivatePeering",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewExpressRouteCircuitConnection(ctx, "expressRouteCircuitConnection", &network.ExpressRouteCircuitConnectionArgs{
/// 			AddressPrefix:    pulumi.String("10.0.0.0/29"),
/// 			AuthorizationKey: pulumi.String("946a1918-b7a2-4917-b43c-8c4cdaee006a"),
/// 			CircuitName:      pulumi.String("ExpressRouteARMCircuitA"),
/// 			ConnectionName:   pulumi.String("circuitConnectionUSAUS"),
/// 			ExpressRouteCircuitPeering: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering"),
/// 			},
/// 			Ipv6CircuitConnectionConfig: &network.Ipv6CircuitConnectionConfigArgs{
/// 				AddressPrefix: pulumi.String("aa:bb::/125"),
/// 			},
/// 			PeerExpressRouteCircuitPeering: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering"),
/// 			},
/// 			PeeringName:       pulumi.String("AzurePrivatePeering"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_expressroutecircuitconnection" "expressRouteCircuitConnection" {
///   address_prefix    = "10.0.0.0/29"
///   authorization_key = "946a1918-b7a2-4917-b43c-8c4cdaee006a"
///   circuit_name      = "ExpressRouteARMCircuitA"
///   connection_name   = "circuitConnectionUSAUS"
///   express_route_circuit_peering = {
///     id = "/subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering"
///   }
///   ipv6_circuit_connection_config = {
///     address_prefix = "aa:bb::/125"
///   }
///   peer_express_route_circuit_peering = {
///     id = "/subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering"
///   }
///   peering_name        = "AzurePrivatePeering"
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.network.ExpressRouteCircuitConnection;
/// import com.pulumi.azurenative.network.ExpressRouteCircuitConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.Ipv6CircuitConnectionConfigArgs;
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
///         var expressRouteCircuitConnection = new ExpressRouteCircuitConnection("expressRouteCircuitConnection", ExpressRouteCircuitConnectionArgs.builder()
///             .addressPrefix("10.0.0.0/29")
///             .authorizationKey("946a1918-b7a2-4917-b43c-8c4cdaee006a")
///             .circuitName("ExpressRouteARMCircuitA")
///             .connectionName("circuitConnectionUSAUS")
///             .expressRouteCircuitPeering(SubResourceArgs.builder()
///                 .id("/subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering")
///                 .build())
///             .ipv6CircuitConnectionConfig(Ipv6CircuitConnectionConfigArgs.builder()
///                 .addressPrefix("aa:bb::/125")
///                 .build())
///             .peerExpressRouteCircuitPeering(SubResourceArgs.builder()
///                 .id("/subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering")
///                 .build())
///             .peeringName("AzurePrivatePeering")
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
/// const expressRouteCircuitConnection = new azure_native.network.ExpressRouteCircuitConnection("expressRouteCircuitConnection", {
///     addressPrefix: "10.0.0.0/29",
///     authorizationKey: "946a1918-b7a2-4917-b43c-8c4cdaee006a",
///     circuitName: "ExpressRouteARMCircuitA",
///     connectionName: "circuitConnectionUSAUS",
///     expressRouteCircuitPeering: {
///         id: "/subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering",
///     },
///     ipv6CircuitConnectionConfig: {
///         addressPrefix: "aa:bb::/125",
///     },
///     peerExpressRouteCircuitPeering: {
///         id: "/subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering",
///     },
///     peeringName: "AzurePrivatePeering",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_circuit_connection = azure_native.network.ExpressRouteCircuitConnection("expressRouteCircuitConnection",
///     address_prefix="10.0.0.0/29",
///     authorization_key="946a1918-b7a2-4917-b43c-8c4cdaee006a",
///     circuit_name="ExpressRouteARMCircuitA",
///     connection_name="circuitConnectionUSAUS",
///     express_route_circuit_peering={
///         "id": "/subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering",
///     },
///     ipv6_circuit_connection_config={
///         "address_prefix": "aa:bb::/125",
///     },
///     peer_express_route_circuit_peering={
///         "id": "/subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering",
///     },
///     peering_name="AzurePrivatePeering",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteCircuitConnection:
///     type: azure-native:network:ExpressRouteCircuitConnection
///     properties:
///       addressPrefix: 10.0.0.0/29
///       authorizationKey: 946a1918-b7a2-4917-b43c-8c4cdaee006a
///       circuitName: ExpressRouteARMCircuitA
///       connectionName: circuitConnectionUSAUS
///       expressRouteCircuitPeering:
///         id: /subscriptions/subid1/resourceGroups/dedharcktinit/providers/Microsoft.Network/expressRouteCircuits/dedharcktlocal/peerings/AzurePrivatePeering
///       ipv6CircuitConnectionConfig:
///         addressPrefix: aa:bb::/125
///       peerExpressRouteCircuitPeering:
///         id: /subscriptions/subid2/resourceGroups/dedharcktpeer/providers/Microsoft.Network/expressRouteCircuits/dedharcktremote/peerings/AzurePrivatePeering
///       peeringName: AzurePrivatePeering
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
/// $ pulumi import azure-native:network:ExpressRouteCircuitConnection circuitConnectionUSAUS /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/peerings/{peeringName}/connections/{connectionName}
/// ```
class ExpressRouteCircuitConnectionNetwork extends pulumi.CustomResource {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  late final pulumi.Output<String?> addressPrefix;
  /// The authorization key.
  late final pulumi.Output<String?> authorizationKey;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Express Route Circuit connection state.
  late final pulumi.Output<String> circuitConnectionStatus;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  late final pulumi.Output<SubResourceResponse?> expressRouteCircuitPeering;
  /// IPv6 Address PrefixProperties of the express route circuit connection.
  late final pulumi.Output<Ipv6CircuitConnectionConfigResponse?> ipv6CircuitConnectionConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  late final pulumi.Output<SubResourceResponse?> peerExpressRouteCircuitPeering;
  /// The provisioning state of the express route circuit connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ExpressRouteCircuitConnectionNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuitConnectionNetwork]. {@macro pulumi_network_express_route_circuit_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuitConnectionNetwork(
    String name, {
    ExpressRouteCircuitConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ExpressRouteCircuitConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    authorizationKey = registerOutput<String?>('authorizationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitConnectionStatus = registerOutput<String>('circuitConnectionStatus');
    etag = registerOutput<String>('etag');
    expressRouteCircuitPeering = registerOutput<SubResourceResponse?>('expressRouteCircuitPeering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipv6CircuitConnectionConfig = registerOutput<Ipv6CircuitConnectionConfigResponse?>('ipv6CircuitConnectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ipv6CircuitConnectionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerExpressRouteCircuitPeering = registerOutput<SubResourceResponse?>('peerExpressRouteCircuitPeering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ExpressRouteCircuitConnectionNetwork] resource.
  ExpressRouteCircuitConnectionNetwork.reference(String urn)
    : super(
        'azure-native:network:ExpressRouteCircuitConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    authorizationKey = registerOutput<String?>('authorizationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitConnectionStatus = registerOutput<String>('circuitConnectionStatus');
    etag = registerOutput<String>('etag');
    expressRouteCircuitPeering = registerOutput<SubResourceResponse?>('expressRouteCircuitPeering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipv6CircuitConnectionConfig = registerOutput<Ipv6CircuitConnectionConfigResponse?>('ipv6CircuitConnectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ipv6CircuitConnectionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerExpressRouteCircuitPeering = registerOutput<SubResourceResponse?>('peerExpressRouteCircuitPeering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
