// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Private Endpoint resource.
class WorkspacePrivateEndpointResourceResponse {
  /// e.g. /subscriptions/{networkSubscriptionId}/resourceGroups/{rgName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}
  final pulumi.Input<String> id;
  /// The subnetId that the private endpoint is connected to.
  final pulumi.Input<String> subnetArmId;

  /// Creates a new [WorkspacePrivateEndpointResourceResponse].
  /// [id] e.g. /subscriptions/{networkSubscriptionId}/resourceGroups/{rgName}/providers/Microsoft.Network/privateEndpoints/{privateEndpointName}
  /// [subnetArmId] The subnetId that the private endpoint is connected to.
  const WorkspacePrivateEndpointResourceResponse({
    required this.id,
    required this.subnetArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subnetArmId': subnetArmId,
    };
  }

  factory WorkspacePrivateEndpointResourceResponse.fromMap(Map<String, dynamic> map) {
    return WorkspacePrivateEndpointResourceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      subnetArmId: pulumi.Input.fromValue(map['subnetArmId'] as String),
    );
  }
}
