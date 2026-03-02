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
    this.allowClassicOperations,
    this.authorizationKey,
    this.authorizations,
    this.bandwidthInGbps,
    this.circuitName,
    this.circuitProvisioningState,
    this.enableDirectPortRateLimit,
    this.expressRoutePort,
    this.gatewayManagerEtag,
    this.globalReachEnabled,
    this.id,
    this.location,
    this.peerings,
    required this.resourceGroupName,
    this.serviceKey,
    this.serviceProviderNotes,
    this.serviceProviderProperties,
    this.serviceProviderProvisioningState,
    this.sku,
    this.tags,
  });

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
      allowClassicOperations: map['allowClassicOperations'] == null ? null : (map['allowClassicOperations'] as bool).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey'] as String).input(),
      authorizations: map['authorizations'] == null ? null : ((map['authorizations'] as List).cast<ExpressRouteCircuitAuthorizationNetwork>()).input(),
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : (map['bandwidthInGbps'] as double).input(),
      circuitName: map['circuitName'] == null ? null : (map['circuitName'] as String).input(),
      circuitProvisioningState: map['circuitProvisioningState'] == null ? null : (map['circuitProvisioningState'] as String).input(),
      enableDirectPortRateLimit: map['enableDirectPortRateLimit'] == null ? null : (map['enableDirectPortRateLimit'] as bool).input(),
      expressRoutePort: map['expressRoutePort'] == null ? null : (SubResource.fromMap((map['expressRoutePort'] as Map).cast<String, dynamic>())).input(),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : (map['gatewayManagerEtag'] as String).input(),
      globalReachEnabled: map['globalReachEnabled'] == null ? null : (map['globalReachEnabled'] as bool).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      peerings: map['peerings'] == null ? null : ((map['peerings'] as List).cast<ExpressRouteCircuitPeeringNetwork>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceKey: map['serviceKey'] == null ? null : (map['serviceKey'] as String).input(),
      serviceProviderNotes: map['serviceProviderNotes'] == null ? null : (map['serviceProviderNotes'] as String).input(),
      serviceProviderProperties: map['serviceProviderProperties'] == null ? null : (ExpressRouteCircuitServiceProviderProperties.fromMap((map['serviceProviderProperties'] as Map).cast<String, dynamic>())).input(),
      serviceProviderProvisioningState: map['serviceProviderProvisioningState'] == null ? null : (map['serviceProviderProvisioningState'] as String).input(),
      sku: map['sku'] == null ? null : (ExpressRouteCircuitSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

