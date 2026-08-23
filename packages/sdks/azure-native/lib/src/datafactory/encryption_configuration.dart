// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmkidentity_definition.dart';

/// Definition of CMK for the factory.
class EncryptionConfiguration {
  /// User assigned identity to use to authenticate to customer's key vault. If not provided Managed Service Identity will be used.
  final pulumi.Input<CMKIdentityDefinition>? identity;
  /// The name of the key in Azure Key Vault to use as Customer Managed Key.
  final pulumi.Input<String> keyName;
  /// The version of the key used for CMK. If not provided, latest version will be used.
  final pulumi.Input<String>? keyVersion;
  /// The url of the Azure Key Vault used for CMK.
  final pulumi.Input<String> vaultBaseUrl;

  /// Creates a new [EncryptionConfiguration].
  /// [identity] User assigned identity to use to authenticate to customer's key vault. If not provided Managed Service Identity will be used.
  /// [keyName] The name of the key in Azure Key Vault to use as Customer Managed Key.
  /// [keyVersion] The version of the key used for CMK. If not provided, latest version will be used.
  /// [vaultBaseUrl] The url of the Azure Key Vault used for CMK.
  const EncryptionConfiguration({
    this.identity,
    required this.keyName,
    this.keyVersion,
    required this.vaultBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<CMKIdentityDefinition, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyName': keyName,
      'keyVersion': ?keyVersion,
      'vaultBaseUrl': vaultBaseUrl,
    };
  }

  factory EncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return EncryptionConfiguration(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CMKIdentityDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultBaseUrl: pulumi.Input.fromValue(map['vaultBaseUrl'] as String),
    );
  }
}
