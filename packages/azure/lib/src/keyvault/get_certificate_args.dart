// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// Specifies the ID of the Key Vault instance where the Secret resides, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Certificate.
  final pulumi.Input<String> name;
  /// Specifies the version of the certificate to look up.  (Defaults to latest)
  ///
  /// > **Note:** The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String>? version;

  /// Creates a new [GetCertificateArgs].
  /// [keyVaultId] Specifies the ID of the Key Vault instance where the Secret resides, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  /// [name] Specifies the name of the Key Vault Certificate.
  /// [version] Specifies the version of the certificate to look up.  (Defaults to latest)
  GetCertificateArgs({
    required String keyVaultId,
    required String name,
    String? version,
  }) :
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      name = pulumi.Input.asInput<String>(name),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'name': name,
      'version': ?version,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      keyVaultId: map['keyVaultId'] as String,
      name: map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

