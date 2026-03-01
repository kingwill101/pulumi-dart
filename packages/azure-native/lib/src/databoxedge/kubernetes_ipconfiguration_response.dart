// ignore_for_file: unused_element, unnecessary_cast


/// Kubernetes node IP configuration
class KubernetesIPConfigurationResponse {
  /// IP address of the Kubernetes node.
  final String? ipAddress;
  /// Port of the Kubernetes node.
  final String port;

  /// Creates a new [KubernetesIPConfigurationResponse].
  /// [ipAddress] IP address of the Kubernetes node.
  /// [port] Port of the Kubernetes node.
  KubernetesIPConfigurationResponse({
    this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'port': port,
    };
  }

  factory KubernetesIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesIPConfigurationResponse(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] as String,
    );
  }
}

