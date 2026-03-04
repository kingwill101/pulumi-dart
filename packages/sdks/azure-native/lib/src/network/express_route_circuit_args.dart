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
  final pulumi.Input<List<ExpressRouteCircuitAuthorizationNetwork>>?
  authorizations;

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
  final pulumi.Input<ExpressRouteCircuitServiceProviderProperties>?
  serviceProviderProperties;

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
      'expressRoutePort':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(expressRoutePort, (value) => value.toMap()),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'globalReachEnabled': ?globalReachEnabled,
      'id': ?id,
      'location': ?location,
      'peerings': ?peerings,
      'resourceGroupName': resourceGroupName,
      'serviceKey': ?serviceKey,
      'serviceProviderNotes': ?serviceProviderNotes,
      'serviceProviderProperties':
          ?pulumi.Input.mapOptionalInputValue<
            ExpressRouteCircuitServiceProviderProperties,
            Map<String, dynamic>
          >(serviceProviderProperties, (value) => value.toMap()),
      'serviceProviderProvisioningState': ?serviceProviderProvisioningState,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            ExpressRouteCircuitSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ExpressRouteCircuitArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitArgs(
      allowClassicOperations: (() {
        final guardedValue = map['allowClassicOperations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      authorizationKey: (() {
        final guardedValue = map['authorizationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizations: (() {
        final guardedValue = map['authorizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List)
              .cast<ExpressRouteCircuitAuthorizationNetwork>(),
        );
      })(),
      bandwidthInGbps: (() {
        final guardedValue = map['bandwidthInGbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      circuitName: (() {
        final guardedValue = map['circuitName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      circuitProvisioningState: (() {
        final guardedValue = map['circuitProvisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDirectPortRateLimit: (() {
        final guardedValue = map['enableDirectPortRateLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expressRoutePort: (() {
        final guardedValue = map['expressRoutePort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      gatewayManagerEtag: (() {
        final guardedValue = map['gatewayManagerEtag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalReachEnabled: (() {
        final guardedValue = map['globalReachEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerings: (() {
        final guardedValue = map['peerings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<ExpressRouteCircuitPeeringNetwork>(),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceKey: (() {
        final guardedValue = map['serviceKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceProviderNotes: (() {
        final guardedValue = map['serviceProviderNotes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceProviderProperties: (() {
        final guardedValue = map['serviceProviderProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExpressRouteCircuitServiceProviderProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceProviderProvisioningState: (() {
        final guardedValue = map['serviceProviderProvisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExpressRouteCircuitSku.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
