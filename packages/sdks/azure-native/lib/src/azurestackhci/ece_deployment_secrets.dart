// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Protected parameters list stored in keyvault.
class EceDeploymentSecrets {
  /// Secret name expected for Enterprise Cloud Engine (ECE) deployment.
  final pulumi.Input<dynamic>? eceSecretName;
  /// Secret URI stored in keyvault.
  final pulumi.Input<String?>? secretLocation;
  /// Secret name stored in keyvault.
  final pulumi.Input<String?>? secretName;

  /// Creates a new [EceDeploymentSecrets].
  /// [eceSecretName] Secret name expected for Enterprise Cloud Engine (ECE) deployment.
  /// [secretLocation] Secret URI stored in keyvault.
  /// [secretName] Secret name stored in keyvault.
  const EceDeploymentSecrets({
    this.eceSecretName,
    this.secretLocation,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eceSecretName': ?eceSecretName,
      'secretLocation': ?secretLocation,
      'secretName': ?secretName,
    };
  }

  factory EceDeploymentSecrets.fromMap(Map<String, dynamic> map) {
    return EceDeploymentSecrets(
      eceSecretName: (() { final guardedValue = map['eceSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      secretLocation: (() { final guardedValue = map['secretLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
