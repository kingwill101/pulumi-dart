// ignore_for_file: unused_element, unnecessary_cast


/// Authorization in an ExpressRouteCircuit resource.
class ExpressRouteCircuitAuthorizationResponse {
  /// The authorization key.
  final String? authorizationKey;
  /// The authorization use status.
  final String? authorizationUseStatus;
  /// The reference to the ExpressRoute connection resource using the authorization.
  final String connectionResourceUri;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the authorization resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

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
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : map['authorizationUseStatus'] as String,
      connectionResourceUri: map['connectionResourceUri'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

