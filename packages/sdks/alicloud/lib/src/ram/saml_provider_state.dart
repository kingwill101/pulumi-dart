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
    this.arn,
    this.description,
    this.encodedsamlMetadataDocument,
    this.samlProviderName,
    this.updateDate,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodedsamlMetadataDocument: (() { final guardedValue = map['encodedsamlMetadataDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlProviderName: (() { final guardedValue = map['samlProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateDate: (() { final guardedValue = map['updateDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

