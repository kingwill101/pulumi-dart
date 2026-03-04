// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App Secret.
class ContainerAppSecretResponse {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final pulumi.Input<String> identity;

  /// Azure Key Vault URL pointing to the secret referenced by the container app.
  final pulumi.Input<String> keyVaultUrl;

  /// Secret Name.
  final pulumi.Input<String> name;

  /// Secret Value.
  final pulumi.Input<String> value;

  /// Creates a new [ContainerAppSecretResponse].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] Azure Key Vault URL pointing to the secret referenced by the container app.
  /// [name] Secret Name.
  /// [value] Secret Value.
  ContainerAppSecretResponse({
    required this.identity,
    required this.keyVaultUrl,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'keyVaultUrl': keyVaultUrl,
      'name': name,
      'value': value,
    };
  }

  factory ContainerAppSecretResponse.fromMap(Map<String, dynamic> map) {
    return ContainerAppSecretResponse(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      keyVaultUrl: pulumi.Input.fromValue(map['keyVaultUrl'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
