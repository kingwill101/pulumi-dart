// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoriesDirectorySamlIdentityProviderConfiguration {
  /// Saml identifies the creation time of the provider configuration.
  final pulumi.Input<String> createTime;
  /// Base64 encoded IdP metadata document.
  final pulumi.Input<String> encodedMetadataDocument;
  /// SAML IdPEntityID.
  final pulumi.Input<String> entityId;
  /// SAML IdP http-post Binding address.
  final pulumi.Input<String> loginUrl;
  /// SAML SSO login enabled status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  final pulumi.Input<String> ssoStatus;

  /// Creates a new [GetDirectoriesDirectorySamlIdentityProviderConfiguration].
  /// [createTime] Saml identifies the creation time of the provider configuration.
  /// [encodedMetadataDocument] Base64 encoded IdP metadata document.
  /// [entityId] SAML IdPEntityID.
  /// [loginUrl] SAML IdP http-post Binding address.
  /// [ssoStatus] SAML SSO login enabled status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  GetDirectoriesDirectorySamlIdentityProviderConfiguration({
    required this.createTime,
    required this.encodedMetadataDocument,
    required this.entityId,
    required this.loginUrl,
    required this.ssoStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'encodedMetadataDocument': encodedMetadataDocument,
      'entityId': entityId,
      'loginUrl': loginUrl,
      'ssoStatus': ssoStatus,
    };
  }

  factory GetDirectoriesDirectorySamlIdentityProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDirectoriesDirectorySamlIdentityProviderConfiguration(
      createTime: (map['createTime'] as String).input(),
      encodedMetadataDocument: (map['encodedMetadataDocument'] as String).input(),
      entityId: (map['entityId'] as String).input(),
      loginUrl: (map['loginUrl'] as String).input(),
      ssoStatus: (map['ssoStatus'] as String).input(),
    );
  }
}

