// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyVault credentials properties. NOTE - Future this will be ENUM.
class KeyVaultCredentialsPropertiesResponse {
  /// KeyVault service principal local secret name.
  final pulumi.Input<String> servicePrincipalLocalSecretName;

  /// Creates a new [KeyVaultCredentialsPropertiesResponse].
  /// [servicePrincipalLocalSecretName] KeyVault service principal local secret name.
  KeyVaultCredentialsPropertiesResponse({
    required this.servicePrincipalLocalSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicePrincipalLocalSecretName': servicePrincipalLocalSecretName,
    };
  }

  factory KeyVaultCredentialsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCredentialsPropertiesResponse(
      servicePrincipalLocalSecretName: (map['servicePrincipalLocalSecretName'] as String).input(),
    );
  }
}

