// ignore_for_file: unused_element, unnecessary_cast


/// secrets used for solution builder extension (SBE) partner extensibility.
class SbeCredentials {
  /// secret name expected for Enterprise Cloud Engine (ECE).
  final String? eceSecretName;
  /// secret URI stored in keyvault.
  final String? secretLocation;
  /// secret name stored in keyvault.
  final String? secretName;

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
      eceSecretName: map['eceSecretName'] == null ? null : map['eceSecretName'] as String,
      secretLocation: map['secretLocation'] == null ? null : map['secretLocation'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

