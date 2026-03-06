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
  const LocalBrokerKubernetesAuthentication({
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
      secretPath: (() { final guardedValue = map['secretPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountTokenName: (() { final guardedValue = map['serviceAccountTokenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

