// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Local Broker Kubernetes Authentication
class LocalBrokerKubernetesAuthentication {
  /// Secret Path where SAT is mounted.
  final pulumi.Input<String>? secretPath;
  /// Token name where SAT is mounted on secret path.
  final pulumi.Input<String>? serviceAccountTokenName;

  /// Creates a new [LocalBrokerKubernetesAuthentication].
  /// [secretPath] Secret Path where SAT is mounted.
  /// [serviceAccountTokenName] Token name where SAT is mounted on secret path.
  LocalBrokerKubernetesAuthentication({
    this.secretPath,
    this.serviceAccountTokenName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretPath': ?secretPath,
      'serviceAccountTokenName': ?serviceAccountTokenName,
    };
  }

  factory LocalBrokerKubernetesAuthentication.fromMap(Map<String, dynamic> map) {
    return LocalBrokerKubernetesAuthentication(
      secretPath: map['secretPath'] == null ? null : (map['secretPath'] as String).input(),
      serviceAccountTokenName: map['serviceAccountTokenName'] == null ? null : (map['serviceAccountTokenName'] as String).input(),
    );
  }
}

