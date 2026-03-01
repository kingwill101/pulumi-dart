// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference.dart';

/// Customer Certificate used for https
class CustomerCertificateParameters {
  /// Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  final ResourceReference secretSource;
  /// Version of the secret to be used
  final String? secretVersion;
  /// The type of the secret resource.
  /// Expected value is 'CustomerCertificate'.
  final String type;
  /// Whether to use the latest version for the certificate
  final bool? useLatestVersion;

  /// Creates a new [CustomerCertificateParameters].
  /// [secretSource] Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  /// [secretVersion] Version of the secret to be used
  /// [type] The type of the secret resource.
  /// [useLatestVersion] Whether to use the latest version for the certificate
  CustomerCertificateParameters({
    required this.secretSource,
    this.secretVersion,
    required this.type,
    this.useLatestVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretSource': secretSource.toMap(),
      'secretVersion': ?secretVersion,
      'type': type,
      'useLatestVersion': ?useLatestVersion,
    };
  }

  factory CustomerCertificateParameters.fromMap(Map<String, dynamic> map) {
    return CustomerCertificateParameters(
      secretSource: ResourceReference.fromMap((map['secretSource'] as Map).cast<String, dynamic>()),
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
      type: map['type'] as String,
      useLatestVersion: map['useLatestVersion'] == null ? null : map['useLatestVersion'] as bool,
    );
  }
}

