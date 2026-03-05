// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference.dart';

/// {@template pulumi_logic_integration_account_certificate_args_doc}
/// The set of arguments for IntegrationAccountCertificate.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_certificate_args_doc}
class IntegrationAccountCertificateArgs {
  /// The integration account certificate name.
  final pulumi.Input<String>? certificateName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key details in the key vault.
  final pulumi.Input<KeyVaultKeyReference>? key;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The public certificate.
  final pulumi.Input<String>? publicCertificate;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountCertificateArgs].
  /// [certificateName] The integration account certificate name.
  /// [integrationAccountName] The integration account name.
  /// [key] The key details in the key vault.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [publicCertificate] The public certificate.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  IntegrationAccountCertificateArgs({
    this.certificateName,
    required this.integrationAccountName,
    this.key,
    this.location,
    this.metadata,
    this.publicCertificate,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'integrationAccountName': integrationAccountName,
      'key': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyReference, Map<String, dynamic>>(key, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'publicCertificate': ?publicCertificate,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountCertificateArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountCertificateArgs(
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultKeyReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicCertificate: (() { final guardedValue = map['publicCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

