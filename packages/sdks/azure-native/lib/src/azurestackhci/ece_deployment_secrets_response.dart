// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Protected parameters list stored in keyvault.
class EceDeploymentSecretsResponse {
  /// Secret name expected for Enterprise Cloud Engine (ECE) deployment.
  final pulumi.Input<String>? eceSecretName;

  /// Secret URI stored in keyvault.
  final pulumi.Input<String>? secretLocation;

  /// Secret name stored in keyvault.
  final pulumi.Input<String>? secretName;

  /// Creates a new [EceDeploymentSecretsResponse].
  /// [eceSecretName] Secret name expected for Enterprise Cloud Engine (ECE) deployment.
  /// [secretLocation] Secret URI stored in keyvault.
  /// [secretName] Secret name stored in keyvault.
  EceDeploymentSecretsResponse({
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

  factory EceDeploymentSecretsResponse.fromMap(Map<String, dynamic> map) {
    return EceDeploymentSecretsResponse(
      eceSecretName: (() {
        final guardedValue = map['eceSecretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretLocation: (() {
        final guardedValue = map['secretLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretName: (() {
        final guardedValue = map['secretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
