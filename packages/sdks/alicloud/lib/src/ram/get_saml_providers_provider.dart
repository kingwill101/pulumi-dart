// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSamlProvidersProvider {
  /// The Alibaba Cloud Resource Name (ARN) of the IdP.
  final pulumi.Input<String> arn;
  /// The description of SAML Provider.
  final pulumi.Input<String> description;
  /// The encodedsaml metadata document.
  final pulumi.Input<String> encodedsamlMetadataDocument;
  /// The ID of the SAML Provider.
  final pulumi.Input<String> id;
  /// The saml provider name.
  final pulumi.Input<String> samlProviderName;
  /// The update time.
  final pulumi.Input<String> updateDate;

  /// Creates a new [GetSamlProvidersProvider].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the IdP.
  /// [description] The description of SAML Provider.
  /// [encodedsamlMetadataDocument] The encodedsaml metadata document.
  /// [id] The ID of the SAML Provider.
  /// [samlProviderName] The saml provider name.
  /// [updateDate] The update time.
  GetSamlProvidersProvider({
    required this.arn,
    required this.description,
    required this.encodedsamlMetadataDocument,
    required this.id,
    required this.samlProviderName,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'encodedsamlMetadataDocument': encodedsamlMetadataDocument,
      'id': id,
      'samlProviderName': samlProviderName,
      'updateDate': updateDate,
    };
  }

  factory GetSamlProvidersProvider.fromMap(Map<String, dynamic> map) {
    return GetSamlProvidersProvider(
      arn: (map['arn'] as String).input(),
      description: (map['description'] as String).input(),
      encodedsamlMetadataDocument: (map['encodedsamlMetadataDocument'] as String).input(),
      id: (map['id'] as String).input(),
      samlProviderName: (map['samlProviderName'] as String).input(),
      updateDate: (map['updateDate'] as String).input(),
    );
  }
}

