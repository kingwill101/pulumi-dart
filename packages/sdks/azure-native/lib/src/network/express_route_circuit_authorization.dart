// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization in an ExpressRouteCircuit resource.
class ExpressRouteCircuitAuthorization {
  /// The authorization key.
  final pulumi.Input<String>? authorizationKey;
  /// The authorization use status.
  final pulumi.Input<String>? authorizationUseStatus;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

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
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : (map['authorizationUseStatus']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

