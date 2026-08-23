// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes node IP configuration
class KubernetesIPConfigurationResponse {
  /// IP address of the Kubernetes node.
  final pulumi.Input<String>? ipAddress;
  /// Port of the Kubernetes node.
  final pulumi.Input<String> port;

  /// Creates a new [KubernetesIPConfigurationResponse].
  /// [ipAddress] IP address of the Kubernetes node.
  /// [port] Port of the Kubernetes node.
  const KubernetesIPConfigurationResponse({
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
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as String),
    );
  }
}
