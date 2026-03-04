// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_saml_provider_saml_provider_args_doc}
/// The set of arguments for SamlProvider.
/// {@endtemplate}
/// {@macro pulumi_ram_saml_provider_saml_provider_args_doc}
class SamlProviderArgs {
  /// The description.
  final pulumi.Input<String>? description;

  /// The metadata file which is Base64-encoded.
  /// The file is provided by an IdP that supports Security Assertion Markup Language (SAML) 2.0.
  final pulumi.Input<String> encodedsamlMetadataDocument;

  /// The name of the IdP.  The name can be up to 128 characters in length. The name can contain letters, digits, periods (.), hyphens (-), and underscores (_). The name cannot start or end with periods (.), hyphens (-), or underscores (_).
  final pulumi.Input<String> samlProviderName;

  /// Creates a new [SamlProviderArgs].
  /// [description] The description.
  /// [encodedsamlMetadataDocument] The metadata file which is Base64-encoded.
  /// [samlProviderName] The name of the IdP.  The name can be up to 128 characters in length. The name can contain letters, digits, periods (.), hyphens (-), and underscores (_). The name cannot start or end with periods (.), hyphens (-), or underscores (_).
  SamlProviderArgs({
    this.description,
    required this.encodedsamlMetadataDocument,
    required this.samlProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encodedsamlMetadataDocument': encodedsamlMetadataDocument,
      'samlProviderName': samlProviderName,
    };
  }

  factory SamlProviderArgs.fromMap(Map<String, dynamic> map) {
    return SamlProviderArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encodedsamlMetadataDocument: pulumi.Input.fromValue(
        map['encodedsamlMetadataDocument'] as String,
      ),
      samlProviderName: pulumi.Input.fromValue(
        map['samlProviderName'] as String,
      ),
    );
  }
}
