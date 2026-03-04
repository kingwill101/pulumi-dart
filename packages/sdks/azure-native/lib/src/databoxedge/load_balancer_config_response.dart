// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancer configuration
class LoadBalancerConfigResponse {
  /// Load balancer type
  final pulumi.Input<String> type;

  /// Load balancer version
  final pulumi.Input<String> version;

  /// Creates a new [LoadBalancerConfigResponse].
  /// [type] Load balancer type
  /// [version] Load balancer version
  LoadBalancerConfigResponse({required this.type, required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'version': version};
  }

  factory LoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
