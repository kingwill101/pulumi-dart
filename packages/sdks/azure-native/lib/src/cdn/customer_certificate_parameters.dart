// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// Customer Certificate used for https
class CustomerCertificateParameters {
  /// Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  final pulumi.Input<ResourceReference> secretSource;
  /// Version of the secret to be used
  final pulumi.Input<String>? secretVersion;
  /// The type of the secret resource.
  /// Expected value is 'CustomerCertificate'.
  final pulumi.Input<String> type;
  /// Whether to use the latest version for the certificate
  final pulumi.Input<bool>? useLatestVersion;

  /// Creates a new [CustomerCertificateParameters].
  /// [secretSource] Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  /// [secretVersion] Version of the secret to be used
  /// [type] The type of the secret resource.
  /// [useLatestVersion] Whether to use the latest version for the certificate
  const CustomerCertificateParameters({
    required this.secretSource,
    this.secretVersion,
    required this.type,
    this.useLatestVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretSource': pulumi.Input.mapInputValue<ResourceReference, Map<String, dynamic>>(secretSource, (value) => value.toMap()),
      'secretVersion': ?secretVersion,
      'type': type,
      'useLatestVersion': ?useLatestVersion,
    };
  }

  factory CustomerCertificateParameters.fromMap(Map<String, dynamic> map) {
    return CustomerCertificateParameters(
      secretSource: pulumi.Input.fromValue(ResourceReference.fromMap((map['secretSource']! as Map).cast<String, dynamic>())),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useLatestVersion: (() { final guardedValue = map['useLatestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
