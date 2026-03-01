// ignore_for_file: unused_element, unnecessary_cast


/// Load balancer configuration
class LoadBalancerConfigResponse {
  /// Load balancer type
  final String type;
  /// Load balancer version
  final String version;

  /// Creates a new [LoadBalancerConfigResponse].
  /// [type] Load balancer type
  /// [version] Load balancer version
  LoadBalancerConfigResponse({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory LoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigResponse(
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

