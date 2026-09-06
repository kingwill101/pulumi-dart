// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Local Broker Kubernetes Authentication
class LocalBrokerKubernetesAuthenticationResponse {
  /// Secret Path where SAT is mounted.
  final pulumi.Input<String?>? secretPath;
  /// Token name where SAT is mounted on secret path.
  final pulumi.Input<String?>? serviceAccountTokenName;

  /// Creates a new [LocalBrokerKubernetesAuthenticationResponse].
  /// [secretPath] Secret Path where SAT is mounted.
  /// [serviceAccountTokenName] Token name where SAT is mounted on secret path.
  LocalBrokerKubernetesAuthenticationResponse({
    pulumi.Input<String?>? secretPath,
    pulumi.Input<String?>? serviceAccountTokenName,
  }) : secretPath = secretPath ?? pulumi.Input.fromValue('/var/run/serviceaccount/localbroker'), serviceAccountTokenName = serviceAccountTokenName ?? pulumi.Input.fromValue('sat');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretPath': ?secretPath,
      'serviceAccountTokenName': ?serviceAccountTokenName,
    };
  }

  factory LocalBrokerKubernetesAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return LocalBrokerKubernetesAuthenticationResponse(
      secretPath: (() { final guardedValue = map['secretPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountTokenName: (() { final guardedValue = map['serviceAccountTokenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
