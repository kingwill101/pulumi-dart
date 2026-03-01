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
    pulumi.Output<String>? certificateName,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<KeyVaultKeyReference>? key,
    pulumi.Output<String>? location,
    pulumi.Output<dynamic>? metadata,
    pulumi.Output<String>? publicCertificate,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      key = pulumi.Input.asOptionalInput<KeyVaultKeyReference>(key),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      publicCertificate = pulumi.Input.asOptionalInput<String>(publicCertificate),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<KeyVaultKeyReference>(KeyVaultKeyReference.fromMap((map['key'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<dynamic>(map['metadata']),
      publicCertificate: map['publicCertificate'] == null ? null : pulumi.Output.create<String>(map['publicCertificate'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

