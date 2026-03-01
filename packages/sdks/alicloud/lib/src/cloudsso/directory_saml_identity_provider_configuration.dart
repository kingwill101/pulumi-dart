// ignore_for_file: unused_element, unnecessary_cast


class DirectorySamlIdentityProviderConfiguration {
  /// The Binding method for initiating a SAML request.
  final String? bindingType;
  /// Certificate ID list
  final List<String>? certificateIds;
  /// CreateTime
  final String? createTime;
  /// EncodedMetadataDocument
  final String? encodedMetadataDocument;
  /// EntityId
  final String? entityId;
  /// LoginUrl
  final String? loginUrl;
  /// SSOStatus
  final String? ssoStatus;
  /// UpdateTime
  final String? updateTime;
  /// SP Request whether the signature is required
  final bool? wantRequestSigned;

  /// Creates a new [DirectorySamlIdentityProviderConfiguration].
  /// [bindingType] The Binding method for initiating a SAML request.
  /// [certificateIds] Certificate ID list
  /// [createTime] CreateTime
  /// [encodedMetadataDocument] EncodedMetadataDocument
  /// [entityId] EntityId
  /// [loginUrl] LoginUrl
  /// [ssoStatus] SSOStatus
  /// [updateTime] UpdateTime
  /// [wantRequestSigned] SP Request whether the signature is required
  DirectorySamlIdentityProviderConfiguration({
    this.bindingType,
    this.certificateIds,
    this.createTime,
    this.encodedMetadataDocument,
    this.entityId,
    this.loginUrl,
    this.ssoStatus,
    this.updateTime,
    this.wantRequestSigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'certificateIds': ?certificateIds,
      'createTime': ?createTime,
      'encodedMetadataDocument': ?encodedMetadataDocument,
      'entityId': ?entityId,
      'loginUrl': ?loginUrl,
      'ssoStatus': ?ssoStatus,
      'updateTime': ?updateTime,
      'wantRequestSigned': ?wantRequestSigned,
    };
  }

  factory DirectorySamlIdentityProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return DirectorySamlIdentityProviderConfiguration(
      bindingType: map['bindingType'] == null ? null : map['bindingType'] as String,
      certificateIds: map['certificateIds'] == null ? null : (map['certificateIds'] as List).cast<String>(),
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      encodedMetadataDocument: map['encodedMetadataDocument'] == null ? null : map['encodedMetadataDocument'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      loginUrl: map['loginUrl'] == null ? null : map['loginUrl'] as String,
      ssoStatus: map['ssoStatus'] == null ? null : map['ssoStatus'] as String,
      updateTime: map['updateTime'] == null ? null : map['updateTime'] as String,
      wantRequestSigned: map['wantRequestSigned'] == null ? null : map['wantRequestSigned'] as bool,
    );
  }
}

