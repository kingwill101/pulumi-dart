// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_authorization_network.dart';
import 'express_route_circuit_peering_network.dart';
import 'express_route_circuit_service_provider_properties.dart';
import 'express_route_circuit_sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_express_route_circuit_args_doc}
/// The set of arguments for ExpressRouteCircuit.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_args_doc}
class ExpressRouteCircuitArgs {
  /// Allow classic operations.
  final pulumi.Input<bool>? allowClassicOperations;
  /// The authorizationKey.
  final pulumi.Input<String>? authorizationKey;
  /// The list of authorizations.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ExpressRouteCircuitAuthorizationNetwork>>? authorizations;
  /// The bandwidth of the circuit when the circuit is provisioned on an ExpressRoutePort resource.
  final pulumi.Input<double>? bandwidthInGbps;
  /// The name of the circuit.
  final pulumi.Input<String>? circuitName;
  /// The CircuitProvisioningState state of the resource.
  final pulumi.Input<String>? circuitProvisioningState;
  /// Flag denoting rate-limiting status of the ExpressRoute direct-port circuit.
  final pulumi.Input<bool>? enableDirectPortRateLimit;
  /// The reference to the ExpressRoutePort resource when the circuit is provisioned on an ExpressRoutePort resource.
  final pulumi.Input<SubResource>? expressRoutePort;
  /// The GatewayManager Etag.
  final pulumi.Input<String>? gatewayManagerEtag;
  /// Flag denoting global reach status.
  final pulumi.Input<bool>? globalReachEnabled;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The list of peerings.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ExpressRouteCircuitPeeringNetwork>>? peerings;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The ServiceKey.
  final pulumi.Input<String>? serviceKey;
  /// The ServiceProviderNotes.
  final pulumi.Input<String>? serviceProviderNotes;
  /// The ServiceProviderProperties.
  final pulumi.Input<ExpressRouteCircuitServiceProviderProperties>? serviceProviderProperties;
  /// The ServiceProviderProvisioningState state of the resource.
  final pulumi.Input<String>? serviceProviderProvisioningState;
  /// The SKU.
  final pulumi.Input<ExpressRouteCircuitSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExpressRouteCircuitArgs].
  /// [allowClassicOperations] Allow classic operations.
  /// [authorizationKey] The authorizationKey.
  /// [authorizations] The list of authorizations.
  /// [bandwidthInGbps] The bandwidth of the circuit when the circuit is provisioned on an ExpressRoutePort resource.
  /// [circuitName] The name of the circuit.
  /// [circuitProvisioningState] The CircuitProvisioningState state of the resource.
  /// [enableDirectPortRateLimit] Flag denoting rate-limiting status of the ExpressRoute direct-port circuit.
  /// [expressRoutePort] The reference to the ExpressRoutePort resource when the circuit is provisioned on an ExpressRoutePort resource.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [globalReachEnabled] Flag denoting global reach status.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [peerings] The list of peerings.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceKey] The ServiceKey.
  /// [serviceProviderNotes] The ServiceProviderNotes.
  /// [serviceProviderProperties] The ServiceProviderProperties.
  /// [serviceProviderProvisioningState] The ServiceProviderProvisioningState state of the resource.
  /// [sku] The SKU.
  /// [tags] Resource tags.
  ExpressRouteCircuitArgs({
    pulumi.Output<bool>? allowClassicOperations,
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<List<ExpressRouteCircuitAuthorizationNetwork>>? authorizations,
    pulumi.Output<double>? bandwidthInGbps,
    pulumi.Output<String>? circuitName,
    pulumi.Output<String>? circuitProvisioningState,
    pulumi.Output<bool>? enableDirectPortRateLimit,
    pulumi.Output<SubResource>? expressRoutePort,
    pulumi.Output<String>? gatewayManagerEtag,
    pulumi.Output<bool>? globalReachEnabled,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<List<ExpressRouteCircuitPeeringNetwork>>? peerings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serviceKey,
    pulumi.Output<String>? serviceProviderNotes,
    pulumi.Output<ExpressRouteCircuitServiceProviderProperties>? serviceProviderProperties,
    pulumi.Output<String>? serviceProviderProvisioningState,
    pulumi.Output<ExpressRouteCircuitSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allowClassicOperations = pulumi.Input.asOptionalInput<bool>(allowClassicOperations),
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      authorizations = pulumi.Input.asOptionalInput<List<ExpressRouteCircuitAuthorizationNetwork>>(authorizations),
      bandwidthInGbps = pulumi.Input.asOptionalInput<double>(bandwidthInGbps),
      circuitName = pulumi.Input.asOptionalInput<String>(circuitName),
      circuitProvisioningState = pulumi.Input.asOptionalInput<String>(circuitProvisioningState),
      enableDirectPortRateLimit = pulumi.Input.asOptionalInput<bool>(enableDirectPortRateLimit),
      expressRoutePort = pulumi.Input.asOptionalInput<SubResource>(expressRoutePort),
      gatewayManagerEtag = pulumi.Input.asOptionalInput<String>(gatewayManagerEtag),
      globalReachEnabled = pulumi.Input.asOptionalInput<bool>(globalReachEnabled),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      peerings = pulumi.Input.asOptionalInput<List<ExpressRouteCircuitPeeringNetwork>>(peerings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceKey = pulumi.Input.asOptionalInput<String>(serviceKey),
      serviceProviderNotes = pulumi.Input.asOptionalInput<String>(serviceProviderNotes),
      serviceProviderProperties = pulumi.Input.asOptionalInput<ExpressRouteCircuitServiceProviderProperties>(serviceProviderProperties),
      serviceProviderProvisioningState = pulumi.Input.asOptionalInput<String>(serviceProviderProvisioningState),
      sku = pulumi.Input.asOptionalInput<ExpressRouteCircuitSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClassicOperations': ?allowClassicOperations,
      'authorizationKey': ?authorizationKey,
      'authorizations': ?authorizations,
      'bandwidthInGbps': ?bandwidthInGbps,
      'circuitName': ?circuitName,
      'circuitProvisioningState': ?circuitProvisioningState,
      'enableDirectPortRateLimit': ?enableDirectPortRateLimit,
      'expressRoutePort': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(expressRoutePort, (value) => value.toMap()),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'globalReachEnabled': ?globalReachEnabled,
      'id': ?id,
      'location': ?location,
      'peerings': ?peerings,
      'resourceGroupName': resourceGroupName,
      'serviceKey': ?serviceKey,
      'serviceProviderNotes': ?serviceProviderNotes,
      'serviceProviderProperties': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitServiceProviderProperties, Map<String, dynamic>>(serviceProviderProperties, (value) => value.toMap()),
      'serviceProviderProvisioningState': ?serviceProviderProvisioningState,
      'sku': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ExpressRouteCircuitArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitArgs(
      allowClassicOperations: map['allowClassicOperations'] == null ? null : pulumi.Output.create<bool>(map['allowClassicOperations'] as bool),
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      authorizations: map['authorizations'] == null ? null : pulumi.Output.create<List<ExpressRouteCircuitAuthorizationNetwork>>((map['authorizations'] as List).cast<ExpressRouteCircuitAuthorizationNetwork>()),
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : pulumi.Output.create<double>(map['bandwidthInGbps'] as double),
      circuitName: map['circuitName'] == null ? null : pulumi.Output.create<String>(map['circuitName'] as String),
      circuitProvisioningState: map['circuitProvisioningState'] == null ? null : pulumi.Output.create<String>(map['circuitProvisioningState'] as String),
      enableDirectPortRateLimit: map['enableDirectPortRateLimit'] == null ? null : pulumi.Output.create<bool>(map['enableDirectPortRateLimit'] as bool),
      expressRoutePort: map['expressRoutePort'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['expressRoutePort'] as Map).cast<String, dynamic>())),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : pulumi.Output.create<String>(map['gatewayManagerEtag'] as String),
      globalReachEnabled: map['globalReachEnabled'] == null ? null : pulumi.Output.create<bool>(map['globalReachEnabled'] as bool),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      peerings: map['peerings'] == null ? null : pulumi.Output.create<List<ExpressRouteCircuitPeeringNetwork>>((map['peerings'] as List).cast<ExpressRouteCircuitPeeringNetwork>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceKey: map['serviceKey'] == null ? null : pulumi.Output.create<String>(map['serviceKey'] as String),
      serviceProviderNotes: map['serviceProviderNotes'] == null ? null : pulumi.Output.create<String>(map['serviceProviderNotes'] as String),
      serviceProviderProperties: map['serviceProviderProperties'] == null ? null : pulumi.Output.create<ExpressRouteCircuitServiceProviderProperties>(ExpressRouteCircuitServiceProviderProperties.fromMap((map['serviceProviderProperties'] as Map).cast<String, dynamic>())),
      serviceProviderProvisioningState: map['serviceProviderProvisioningState'] == null ? null : pulumi.Output.create<String>(map['serviceProviderProvisioningState'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ExpressRouteCircuitSku>(ExpressRouteCircuitSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

