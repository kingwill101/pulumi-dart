// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization in an ExpressRouteCircuit resource.
class ExpressRouteCircuitAuthorizationResponse {
  /// The authorization key.
  final pulumi.Input<String>? authorizationKey;
  /// The authorization use status.
  final pulumi.Input<String>? authorizationUseStatus;
  /// The reference to the ExpressRoute connection resource using the authorization.
  final pulumi.Input<String> connectionResourceUri;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the authorization resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ExpressRouteCircuitAuthorizationResponse].
  /// [authorizationKey] The authorization key.
  /// [authorizationUseStatus] The authorization use status.
  /// [connectionResourceUri] The reference to the ExpressRoute connection resource using the authorization.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the authorization resource.
  /// [type] Type of the resource.
  ExpressRouteCircuitAuthorizationResponse({
    this.authorizationKey,
    this.authorizationUseStatus,
    required this.connectionResourceUri,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'authorizationUseStatus': ?authorizationUseStatus,
      'connectionResourceUri': connectionResourceUri,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ExpressRouteCircuitAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitAuthorizationResponse(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey'] as String).input(),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : (map['authorizationUseStatus'] as String).input(),
      connectionResourceUri: (map['connectionResourceUri'] as String).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

