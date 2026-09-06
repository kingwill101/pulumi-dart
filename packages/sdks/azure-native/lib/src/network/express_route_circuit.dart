import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_args.dart';
import 'express_route_circuit_authorization_response.dart';
import 'express_route_circuit_peering_response.dart';
import 'express_route_circuit_service_provider_properties_response.dart';
import 'express_route_circuit_sku_response.dart';
import 'sub_resource_response.dart';

/// ExpressRouteCircuit resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ExpressRouteCircuit
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteCircuit = new AzureNative.Network.ExpressRouteCircuit("expressRouteCircuit", new()
///     {
///         AllowClassicOperations = false,
///         Authorizations = new[] {},
///         CircuitName = "circuitName",
///         Location = "Brazil South",
///         Peerings = new[] {},
///         ResourceGroupName = "rg1",
///         ServiceProviderProperties = new AzureNative.Network.Inputs.ExpressRouteCircuitServiceProviderPropertiesArgs
///         {
///             BandwidthInMbps = 200,
///             PeeringLocation = "Silicon Valley",
///             ServiceProviderName = "Equinix",
///         },
///         Sku = new AzureNative.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Family = AzureNative.Network.ExpressRouteCircuitSkuFamily.MeteredData,
///             Name = "Standard_MeteredData",
///             Tier = AzureNative.Network.ExpressRouteCircuitSkuTier.Standard,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewExpressRouteCircuit(ctx, "expressRouteCircuit", &network.ExpressRouteCircuitArgs{
/// 			AllowClassicOperations: pulumi.Bool(false),
/// 			Authorizations:         network.ExpressRouteCircuitAuthorizationTypeArray{},
/// 			CircuitName:            pulumi.String("circuitName"),
/// 			Location:               pulumi.String("Brazil South"),
/// 			Peerings:               network.ExpressRouteCircuitPeeringTypeArray{},
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			ServiceProviderProperties: &network.ExpressRouteCircuitServiceProviderPropertiesArgs{
/// 				BandwidthInMbps:     pulumi.Int(200),
/// 				PeeringLocation:     pulumi.String("Silicon Valley"),
/// 				ServiceProviderName: pulumi.String("Equinix"),
/// 			},
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Family: pulumi.String(network.ExpressRouteCircuitSkuFamilyMeteredData),
/// 				Name:   pulumi.String("Standard_MeteredData"),
/// 				Tier:   pulumi.String(network.ExpressRouteCircuitSkuTierStandard),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_expressroutecircuit" "expressRouteCircuit" {
///   allow_classic_operations = false
///   circuit_name             = "circuitName"
///   location                 = "Brazil South"
///   resource_group_name      = "rg1"
///   service_provider_properties = {
///     bandwidth_in_mbps     = 200
///     peering_location      = "Silicon Valley"
///     service_provider_name = "Equinix"
///   }
///   sku = {
///     family = "MeteredData"
///     name   = "Standard_MeteredData"
///     tier   = "Standard"
///   }
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
/// import com.pulumi.azurenative.network.ExpressRouteCircuit;
/// import com.pulumi.azurenative.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteCircuitServiceProviderPropertiesArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteCircuitSkuArgs;
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
///         var expressRouteCircuit = new ExpressRouteCircuit("expressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .allowClassicOperations(false)
///             .authorizations()
///             .circuitName("circuitName")
///             .location("Brazil South")
///             .peerings()
///             .resourceGroupName("rg1")
///             .serviceProviderProperties(ExpressRouteCircuitServiceProviderPropertiesArgs.builder()
///                 .bandwidthInMbps(200)
///                 .peeringLocation("Silicon Valley")
///                 .serviceProviderName("Equinix")
///                 .build())
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .family("MeteredData")
///                 .name("Standard_MeteredData")
///                 .tier("Standard")
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
/// const expressRouteCircuit = new azure_native.network.ExpressRouteCircuit("expressRouteCircuit", {
///     allowClassicOperations: false,
///     authorizations: [],
///     circuitName: "circuitName",
///     location: "Brazil South",
///     peerings: [],
///     resourceGroupName: "rg1",
///     serviceProviderProperties: {
///         bandwidthInMbps: 200,
///         peeringLocation: "Silicon Valley",
///         serviceProviderName: "Equinix",
///     },
///     sku: {
///         family: azure_native.network.ExpressRouteCircuitSkuFamily.MeteredData,
///         name: "Standard_MeteredData",
///         tier: azure_native.network.ExpressRouteCircuitSkuTier.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_circuit = azure_native.network.ExpressRouteCircuit("expressRouteCircuit",
///     allow_classic_operations=False,
///     authorizations=[],
///     circuit_name="circuitName",
///     location="Brazil South",
///     peerings=[],
///     resource_group_name="rg1",
///     service_provider_properties={
///         "bandwidth_in_mbps": 200,
///         "peering_location": "Silicon Valley",
///         "service_provider_name": "Equinix",
///     },
///     sku={
///         "family": azure_native.network.ExpressRouteCircuitSkuFamily.METERED_DATA,
///         "name": "Standard_MeteredData",
///         "tier": azure_native.network.ExpressRouteCircuitSkuTier.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteCircuit:
///     type: azure-native:network:ExpressRouteCircuit
///     properties:
///       allowClassicOperations: false
///       authorizations: []
///       circuitName: circuitName
///       location: Brazil South
///       peerings: []
///       resourceGroupName: rg1
///       serviceProviderProperties:
///         bandwidthInMbps: 200
///         peeringLocation: Silicon Valley
///         serviceProviderName: Equinix
///       sku:
///         family: MeteredData
///         name: Standard_MeteredData
///         tier: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create ExpressRouteCircuit on ExpressRoutePort
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteCircuit = new AzureNative.Network.ExpressRouteCircuit("expressRouteCircuit", new()
///     {
///         AuthorizationKey = "b0be57f5-1fba-463b-adec-ffe767354cdd",
///         BandwidthInGbps = 10,
///         CircuitName = "expressRouteCircuit1",
///         EnableDirectPortRateLimit = false,
///         ExpressRoutePort = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName",
///         },
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Family = AzureNative.Network.ExpressRouteCircuitSkuFamily.MeteredData,
///             Name = "Premium_MeteredData",
///             Tier = AzureNative.Network.ExpressRouteCircuitSkuTier.Premium,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewExpressRouteCircuit(ctx, "expressRouteCircuit", &network.ExpressRouteCircuitArgs{
/// 			AuthorizationKey:          pulumi.String("b0be57f5-1fba-463b-adec-ffe767354cdd"),
/// 			BandwidthInGbps:           pulumi.Float64(10),
/// 			CircuitName:               pulumi.String("expressRouteCircuit1"),
/// 			EnableDirectPortRateLimit: pulumi.Bool(false),
/// 			ExpressRoutePort: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Family: pulumi.String(network.ExpressRouteCircuitSkuFamilyMeteredData),
/// 				Name:   pulumi.String("Premium_MeteredData"),
/// 				Tier:   pulumi.String(network.ExpressRouteCircuitSkuTierPremium),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_expressroutecircuit" "expressRouteCircuit" {
///   authorization_key             = "b0be57f5-1fba-463b-adec-ffe767354cdd"
///   bandwidth_in_gbps             = 10
///   circuit_name                  = "expressRouteCircuit1"
///   enable_direct_port_rate_limit = false
///   express_route_port = {
///     id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName"
///   }
///   location            = "westus"
///   resource_group_name = "rg1"
///   sku = {
///     family = "MeteredData"
///     name   = "Premium_MeteredData"
///     tier   = "Premium"
///   }
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
/// import com.pulumi.azurenative.network.ExpressRouteCircuit;
/// import com.pulumi.azurenative.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteCircuitSkuArgs;
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
///         var expressRouteCircuit = new ExpressRouteCircuit("expressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .authorizationKey("b0be57f5-1fba-463b-adec-ffe767354cdd")
///             .bandwidthInGbps(10.0)
///             .circuitName("expressRouteCircuit1")
///             .enableDirectPortRateLimit(false)
///             .expressRoutePort(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName")
///                 .build())
///             .location("westus")
///             .resourceGroupName("rg1")
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .family("MeteredData")
///                 .name("Premium_MeteredData")
///                 .tier("Premium")
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
/// const expressRouteCircuit = new azure_native.network.ExpressRouteCircuit("expressRouteCircuit", {
///     authorizationKey: "b0be57f5-1fba-463b-adec-ffe767354cdd",
///     bandwidthInGbps: 10,
///     circuitName: "expressRouteCircuit1",
///     enableDirectPortRateLimit: false,
///     expressRoutePort: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName",
///     },
///     location: "westus",
///     resourceGroupName: "rg1",
///     sku: {
///         family: azure_native.network.ExpressRouteCircuitSkuFamily.MeteredData,
///         name: "Premium_MeteredData",
///         tier: azure_native.network.ExpressRouteCircuitSkuTier.Premium,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_circuit = azure_native.network.ExpressRouteCircuit("expressRouteCircuit",
///     authorization_key="b0be57f5-1fba-463b-adec-ffe767354cdd",
///     bandwidth_in_gbps=float(10),
///     circuit_name="expressRouteCircuit1",
///     enable_direct_port_rate_limit=False,
///     express_route_port={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName",
///     },
///     location="westus",
///     resource_group_name="rg1",
///     sku={
///         "family": azure_native.network.ExpressRouteCircuitSkuFamily.METERED_DATA,
///         "name": "Premium_MeteredData",
///         "tier": azure_native.network.ExpressRouteCircuitSkuTier.PREMIUM,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteCircuit:
///     type: azure-native:network:ExpressRouteCircuit
///     properties:
///       authorizationKey: b0be57f5-1fba-463b-adec-ffe767354cdd
///       bandwidthInGbps: 10
///       circuitName: expressRouteCircuit1
///       enableDirectPortRateLimit: false
///       expressRoutePort:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRoutePorts/portName
///       location: westus
///       resourceGroupName: rg1
///       sku:
///         family: MeteredData
///         name: Premium_MeteredData
///         tier: Premium
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
/// $ pulumi import azure-native:network:ExpressRouteCircuit expressRouteCircuit1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}
/// ```
class ExpressRouteCircuit extends pulumi.CustomResource {
  /// Allow classic operations.
  late final pulumi.Output<bool?> allowClassicOperations;
  /// The authorizationKey.
  late final pulumi.Output<String?> authorizationKey;
  /// The authorization status of the Circuit.
  late final pulumi.Output<String> authorizationStatus;
  /// The list of authorizations.
  late final pulumi.Output<List<ExpressRouteCircuitAuthorizationResponse>?> authorizations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The bandwidth of the circuit when the circuit is provisioned on an ExpressRoutePort resource.
  late final pulumi.Output<double?> bandwidthInGbps;
  /// The CircuitProvisioningState state of the resource.
  late final pulumi.Output<String?> circuitProvisioningState;
  /// Flag denoting rate-limiting status of the ExpressRoute direct-port circuit.
  late final pulumi.Output<bool?> enableDirectPortRateLimit;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The reference to the ExpressRoutePort resource when the circuit is provisioned on an ExpressRoutePort resource.
  late final pulumi.Output<SubResourceResponse?> expressRoutePort;
  /// The GatewayManager Etag.
  late final pulumi.Output<String?> gatewayManagerEtag;
  /// Flag denoting global reach status.
  late final pulumi.Output<bool?> globalReachEnabled;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The list of peerings.
  late final pulumi.Output<List<ExpressRouteCircuitPeeringResponse>?> peerings;
  /// The provisioning state of the express route circuit resource.
  late final pulumi.Output<String> provisioningState;
  /// The ServiceKey.
  late final pulumi.Output<String?> serviceKey;
  /// The ServiceProviderNotes.
  late final pulumi.Output<String?> serviceProviderNotes;
  /// The ServiceProviderProperties.
  late final pulumi.Output<ExpressRouteCircuitServiceProviderPropertiesResponse?> serviceProviderProperties;
  /// The ServiceProviderProvisioningState state of the resource.
  late final pulumi.Output<String?> serviceProviderProvisioningState;
  /// The SKU.
  late final pulumi.Output<ExpressRouteCircuitSkuResponse?> sku;
  /// The identifier of the circuit traffic. Outer tag for QinQ encapsulation.
  late final pulumi.Output<int> stag;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ExpressRouteCircuit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuit]. {@macro pulumi_network_express_route_circuit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuit(
    String name, {
    ExpressRouteCircuitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ExpressRouteCircuit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowClassicOperations = registerOutput<bool?>('allowClassicOperations');
    authorizationKey = registerOutput<String?>('authorizationKey');
    authorizationStatus = registerOutput<String>('authorizationStatus');
    authorizations = registerOutput<List<ExpressRouteCircuitAuthorizationResponse>?>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitAuthorizationResponse>(guardedValue, (value) => ExpressRouteCircuitAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bandwidthInGbps = registerOutput<double?>('bandwidthInGbps');
    circuitProvisioningState = registerOutput<String?>('circuitProvisioningState');
    enableDirectPortRateLimit = registerOutput<bool?>('enableDirectPortRateLimit');
    etag = registerOutput<String>('etag');
    expressRoutePort = registerOutput<SubResourceResponse?>('expressRoutePort', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayManagerEtag = registerOutput<String?>('gatewayManagerEtag');
    globalReachEnabled = registerOutput<bool?>('globalReachEnabled');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    peerings = registerOutput<List<ExpressRouteCircuitPeeringResponse>?>('peerings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(guardedValue, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    serviceKey = registerOutput<String?>('serviceKey');
    serviceProviderNotes = registerOutput<String?>('serviceProviderNotes');
    serviceProviderProperties = registerOutput<ExpressRouteCircuitServiceProviderPropertiesResponse?>('serviceProviderProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitServiceProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceProviderProvisioningState = registerOutput<String?>('serviceProviderProvisioningState');
    sku = registerOutput<ExpressRouteCircuitSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stag = registerOutput<int>('stag');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ExpressRouteCircuit] resource.
  ExpressRouteCircuit.reference(String urn)
    : super(
        'azure-native:network:ExpressRouteCircuit',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowClassicOperations = registerOutput<bool?>('allowClassicOperations');
    authorizationKey = registerOutput<String?>('authorizationKey');
    authorizationStatus = registerOutput<String>('authorizationStatus');
    authorizations = registerOutput<List<ExpressRouteCircuitAuthorizationResponse>?>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitAuthorizationResponse>(guardedValue, (value) => ExpressRouteCircuitAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bandwidthInGbps = registerOutput<double?>('bandwidthInGbps');
    circuitProvisioningState = registerOutput<String?>('circuitProvisioningState');
    enableDirectPortRateLimit = registerOutput<bool?>('enableDirectPortRateLimit');
    etag = registerOutput<String>('etag');
    expressRoutePort = registerOutput<SubResourceResponse?>('expressRoutePort', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayManagerEtag = registerOutput<String?>('gatewayManagerEtag');
    globalReachEnabled = registerOutput<bool?>('globalReachEnabled');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    peerings = registerOutput<List<ExpressRouteCircuitPeeringResponse>?>('peerings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(guardedValue, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    serviceKey = registerOutput<String?>('serviceKey');
    serviceProviderNotes = registerOutput<String?>('serviceProviderNotes');
    serviceProviderProperties = registerOutput<ExpressRouteCircuitServiceProviderPropertiesResponse?>('serviceProviderProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitServiceProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceProviderProvisioningState = registerOutput<String?>('serviceProviderProvisioningState');
    sku = registerOutput<ExpressRouteCircuitSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stag = registerOutput<int>('stag');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
