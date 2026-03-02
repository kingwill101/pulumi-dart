// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// secrets used for solution builder extension (SBE) partner extensibility.
class SbeCredentials {
  /// secret name expected for Enterprise Cloud Engine (ECE).
  final pulumi.Input<String>? eceSecretName;
  /// secret URI stored in keyvault.
  final pulumi.Input<String>? secretLocation;
  /// secret name stored in keyvault.
  final pulumi.Input<String>? secretName;

  /// Creates a new [SbeCredentials].
  /// [eceSecretName] secret name expected for Enterprise Cloud Engine (ECE).
  /// [secretLocation] secret URI stored in keyvault.
  /// [secretName] secret name stored in keyvault.
  SbeCredentials({
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

  factory SbeCredentials.fromMap(Map<String, dynamic> map) {
    return SbeCredentials(
      eceSecretName: map['eceSecretName'] == null ? null : (map['eceSecretName'] as String).input(),
      secretLocation: map['secretLocation'] == null ? null : (map['secretLocation'] as String).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
    );
  }
}

