// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyVault credentials properties. NOTE - Future this will be ENUM.
class KeyVaultCredentialsProperties {
  /// KeyVault service principal local secret name.
  final pulumi.Input<String> servicePrincipalLocalSecretName;

  /// Creates a new [KeyVaultCredentialsProperties].
  /// [servicePrincipalLocalSecretName] KeyVault service principal local secret name.
  KeyVaultCredentialsProperties({
    required this.servicePrincipalLocalSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicePrincipalLocalSecretName': servicePrincipalLocalSecretName,
    };
  }

  factory KeyVaultCredentialsProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultCredentialsProperties(
      servicePrincipalLocalSecretName: pulumi.Input.fromValue(map['servicePrincipalLocalSecretName'] as String),
    );
  }
}

