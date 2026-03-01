// ignore_for_file: unused_element, unnecessary_cast


class AzureDataLakeSectionResponse {
  /// The authority URL used for authentication.
  final String? authorityUrl;
  /// The content of the certificate used for authentication.
  final String? certificate;
  /// The Client ID/Application ID
  final String? clientId;
  /// The client secret.
  final String? clientSecret;
  /// The Azure Data Lake credential type.
  final String? credentialType;
  /// Is it using certificate to authenticate. If false then use client secret.
  final bool? isCertAuth;
  /// Resource Group.
  final String? resourceGroup;
  /// The resource the service principal/app has access to.
  final String? resourceUri;
  /// Indicates which identity to use to authenticate service data access to customer's storage.
  final String? serviceDataAccessAuthIdentity;
  /// The Azure Data Lake store name.
  final String? storeName;
  /// Subscription ID.
  final String? subscriptionId;
  /// The ID of the tenant the service principal/app belongs to.
  final String? tenantId;
  /// The thumbprint of the certificate above.
  final String? thumbprint;

  /// Creates a new [AzureDataLakeSectionResponse].
  /// [authorityUrl] The authority URL used for authentication.
  /// [certificate] The content of the certificate used for authentication.
  /// [clientId] The Client ID/Application ID
  /// [clientSecret] The client secret.
  /// [credentialType] The Azure Data Lake credential type.
  /// [isCertAuth] Is it using certificate to authenticate. If false then use client secret.
  /// [resourceGroup] Resource Group.
  /// [resourceUri] The resource the service principal/app has access to.
  /// [serviceDataAccessAuthIdentity] Indicates which identity to use to authenticate service data access to customer's storage.
  /// [storeName] The Azure Data Lake store name.
  /// [subscriptionId] Subscription ID.
  /// [tenantId] The ID of the tenant the service principal/app belongs to.
  /// [thumbprint] The thumbprint of the certificate above.
  AzureDataLakeSectionResponse({
    this.authorityUrl,
    this.certificate,
    this.clientId,
    this.clientSecret,
    this.credentialType,
    this.isCertAuth,
    this.resourceGroup,
    this.resourceUri,
    this.serviceDataAccessAuthIdentity,
    this.storeName,
    this.subscriptionId,
    this.tenantId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'certificate': ?certificate,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'credentialType': ?credentialType,
      'isCertAuth': ?isCertAuth,
      'resourceGroup': ?resourceGroup,
      'resourceUri': ?resourceUri,
      'serviceDataAccessAuthIdentity': ?serviceDataAccessAuthIdentity,
      'storeName': ?storeName,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'thumbprint': ?thumbprint,
    };
  }

  factory AzureDataLakeSectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeSectionResponse(
      authorityUrl: map['authorityUrl'] == null ? null : map['authorityUrl'] as String,
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      credentialType: map['credentialType'] == null ? null : map['credentialType'] as String,
      isCertAuth: map['isCertAuth'] == null ? null : map['isCertAuth'] as bool,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      resourceUri: map['resourceUri'] == null ? null : map['resourceUri'] as String,
      serviceDataAccessAuthIdentity: map['serviceDataAccessAuthIdentity'] == null ? null : map['serviceDataAccessAuthIdentity'] as String,
      storeName: map['storeName'] == null ? null : map['storeName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

