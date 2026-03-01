// ignore_for_file: unused_element, unnecessary_cast


class GetSamlProvidersProvider {
  /// The Alibaba Cloud Resource Name (ARN) of the IdP.
  final String arn;
  /// The description of SAML Provider.
  final String description;
  /// The encodedsaml metadata document.
  final String encodedsamlMetadataDocument;
  /// The ID of the SAML Provider.
  final String id;
  /// The saml provider name.
  final String samlProviderName;
  /// The update time.
  final String updateDate;

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
      arn: map['arn'] as String,
      description: map['description'] as String,
      encodedsamlMetadataDocument: map['encodedsamlMetadataDocument'] as String,
      id: map['id'] as String,
      samlProviderName: map['samlProviderName'] as String,
      updateDate: map['updateDate'] as String,
    );
  }
}

