// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Load Distribution Target of an application gateway.
class ApplicationGatewayLoadDistributionTarget {
  /// Backend address pool resource of the application gateway.
  final SubResource? backendAddressPool;
  /// Resource ID.
  final String? id;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final String? name;
  /// Weight per server. Range between 1 and 100.
  final int? weightPerServer;

  /// Creates a new [ApplicationGatewayLoadDistributionTarget].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [id] Resource ID.
  /// [name] Name of the load distribution policy that is unique within an Application Gateway.
  /// [weightPerServer] Weight per server. Range between 1 and 100.
  ApplicationGatewayLoadDistributionTarget({
    this.backendAddressPool,
    this.id,
    this.name,
    this.weightPerServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'id': ?id,
      'name': ?name,
      'weightPerServer': ?weightPerServer,
    };
  }

  factory ApplicationGatewayLoadDistributionTarget.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionTarget(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      weightPerServer: map['weightPerServer'] == null ? null : map['weightPerServer'] as int,
    );
  }
}

