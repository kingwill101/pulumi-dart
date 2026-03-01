// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SamlProvider resources.
class SamlProviderState {
  /// The identity provider's ARN.
  final pulumi.Input<String>? arn;
  /// The description.
  final pulumi.Input<String>? description;
  /// The metadata file which is Base64-encoded.
  /// The file is provided by an IdP that supports Security Assertion Markup Language (SAML) 2.0.
  final pulumi.Input<String>? encodedsamlMetadataDocument;
  /// The name of the IdP.  The name can be up to 128 characters in length. The name can contain letters, digits, periods (.), hyphens (-), and underscores (_). The name cannot start or end with periods (.), hyphens (-), or underscores (_).
  final pulumi.Input<String>? samlProviderName;
  /// Update time.
  final pulumi.Input<String>? updateDate;

  /// Creates a new [SamlProviderState].
  /// [arn] The identity provider's ARN.
  /// [description] The description.
  /// [encodedsamlMetadataDocument] The metadata file which is Base64-encoded.
  /// [samlProviderName] The name of the IdP.  The name can be up to 128 characters in length. The name can contain letters, digits, periods (.), hyphens (-), and underscores (_). The name cannot start or end with periods (.), hyphens (-), or underscores (_).
  /// [updateDate] Update time.
  SamlProviderState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encodedsamlMetadataDocument,
    pulumi.Output<String>? samlProviderName,
    pulumi.Output<String>? updateDate,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      encodedsamlMetadataDocument = pulumi.Input.asOptionalInput<String>(encodedsamlMetadataDocument),
      samlProviderName = pulumi.Input.asOptionalInput<String>(samlProviderName),
      updateDate = pulumi.Input.asOptionalInput<String>(updateDate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'encodedsamlMetadataDocument': ?encodedsamlMetadataDocument,
      'samlProviderName': ?samlProviderName,
      'updateDate': ?updateDate,
    };
  }

  factory SamlProviderState.fromMap(Map<String, dynamic> map) {
    return SamlProviderState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encodedsamlMetadataDocument: map['encodedsamlMetadataDocument'] == null ? null : pulumi.Output.create<String>(map['encodedsamlMetadataDocument'] as String),
      samlProviderName: map['samlProviderName'] == null ? null : pulumi.Output.create<String>(map['samlProviderName'] as String),
      updateDate: map['updateDate'] == null ? null : pulumi.Output.create<String>(map['updateDate'] as String),
    );
  }
}

