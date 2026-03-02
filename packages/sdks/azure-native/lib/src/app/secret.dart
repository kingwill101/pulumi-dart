// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret definition.
class Secret {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final pulumi.Input<String>? identity;
  /// Azure Key Vault URL pointing to the secret referenced by the container app.
  final pulumi.Input<String>? keyVaultUrl;
  /// Secret Name.
  final pulumi.Input<String>? name;
  /// Secret Value.
  final pulumi.Input<String>? value;

  /// Creates a new [Secret].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] Azure Key Vault URL pointing to the secret referenced by the container app.
  /// [name] Secret Name.
  /// [value] Secret Value.
  Secret({
    this.identity,
    this.keyVaultUrl,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultUrl': ?keyVaultUrl,
      'name': ?name,
      'value': ?value,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      keyVaultUrl: map['keyVaultUrl'] == null ? null : (map['keyVaultUrl'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

