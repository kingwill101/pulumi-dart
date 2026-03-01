// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Cloud Run feature.
class CloudRunConfigResponse {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool disabled;

  /// Which load balancer type is installed for Cloud Run.
  final String loadBalancerType;

  /// Creates a new [CloudRunConfigResponse].
  /// [disabled] Whether Cloud Run addon is enabled for this cluster.
  /// [loadBalancerType] Which load balancer type is installed for Cloud Run.
  CloudRunConfigResponse({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'loadBalancerType': loadBalancerType,
    };
  }

  factory CloudRunConfigResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigResponse(
      disabled: map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
