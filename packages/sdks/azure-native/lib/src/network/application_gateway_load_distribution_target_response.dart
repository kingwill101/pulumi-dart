// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Load Distribution Target of an application gateway.
class ApplicationGatewayLoadDistributionTargetResponse {
  /// Backend address pool resource of the application gateway.
  final SubResourceResponse? backendAddressPool;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final String? name;
  /// Type of the resource.
  final String type;
  /// Weight per server. Range between 1 and 100.
  final int? weightPerServer;

  /// Creates a new [ApplicationGatewayLoadDistributionTargetResponse].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the load distribution policy that is unique within an Application Gateway.
  /// [type] Type of the resource.
  /// [weightPerServer] Weight per server. Range between 1 and 100.
  ApplicationGatewayLoadDistributionTargetResponse({
    this.backendAddressPool,
    required this.etag,
    this.id,
    this.name,
    required this.type,
    this.weightPerServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'type': type,
      'weightPerServer': ?weightPerServer,
    };
  }

  factory ApplicationGatewayLoadDistributionTargetResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionTargetResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
      weightPerServer: map['weightPerServer'] == null ? null : map['weightPerServer'] as int,
    );
  }
}

