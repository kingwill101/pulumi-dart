// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Load Distribution Target of an application gateway.
class ApplicationGatewayLoadDistributionTargetResponse {
  /// Backend address pool resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? backendAddressPool;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the load distribution policy that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// Weight per server. Range between 1 and 100.
  final pulumi.Input<int>? weightPerServer;

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
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'type': type,
      'weightPerServer': ?weightPerServer,
    };
  }

  factory ApplicationGatewayLoadDistributionTargetResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayLoadDistributionTargetResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResourceResponse.fromMap((map['backendAddressPool']! as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: (map['type'] as String).input(),
      weightPerServer: map['weightPerServer'] == null ? null : (map['weightPerServer']! as int).input(),
    );
  }
}

