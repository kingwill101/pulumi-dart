// ignore_for_file: unused_element, unnecessary_cast


/// Protected parameters list stored in keyvault.
class EceDeploymentSecrets {
  /// Secret name expected for Enterprise Cloud Engine (ECE) deployment.
  final String? eceSecretName;
  /// Secret URI stored in keyvault.
  final String? secretLocation;
  /// Secret name stored in keyvault.
  final String? secretName;

  /// Creates a new [EceDeploymentSecrets].
  /// [eceSecretName] Secret name expected for Enterprise Cloud Engine (ECE) deployment.
  /// [secretLocation] Secret URI stored in keyvault.
  /// [secretName] Secret name stored in keyvault.
  EceDeploymentSecrets({
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
      eceSecretName: map['eceSecretName'] == null ? null : map['eceSecretName'] as String,
      secretLocation: map['secretLocation'] == null ? null : map['secretLocation'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

