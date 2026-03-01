// ignore_for_file: unused_element, unnecessary_cast


/// Authorization in an ExpressRouteCircuit resource.
class ExpressRouteCircuitAuthorization {
  /// The authorization key.
  final String? authorizationKey;
  /// The authorization use status.
  final String? authorizationUseStatus;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;

  /// Creates a new [ExpressRouteCircuitAuthorization].
  /// [authorizationKey] The authorization key.
  /// [authorizationUseStatus] The authorization use status.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  ExpressRouteCircuitAuthorization({
    this.authorizationKey,
    this.authorizationUseStatus,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'authorizationUseStatus': ?authorizationUseStatus,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ExpressRouteCircuitAuthorization.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitAuthorization(
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : map['authorizationUseStatus'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

