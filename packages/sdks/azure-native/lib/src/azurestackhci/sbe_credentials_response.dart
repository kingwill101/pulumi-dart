// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// secrets used for solution builder extension (SBE) partner extensibility.
class SbeCredentialsResponse {
  /// secret name expected for Enterprise Cloud Engine (ECE).
  final pulumi.Input<String>? eceSecretName;

  /// secret URI stored in keyvault.
  final pulumi.Input<String>? secretLocation;

  /// secret name stored in keyvault.
  final pulumi.Input<String>? secretName;

  /// Creates a new [SbeCredentialsResponse].
  /// [eceSecretName] secret name expected for Enterprise Cloud Engine (ECE).
  /// [secretLocation] secret URI stored in keyvault.
  /// [secretName] secret name stored in keyvault.
  SbeCredentialsResponse({
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

  factory SbeCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return SbeCredentialsResponse(
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
