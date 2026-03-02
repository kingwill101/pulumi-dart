// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectorySamlIdentityProviderConfiguration {
  /// The Binding method for initiating a SAML request.
  final pulumi.Input<String>? bindingType;
  /// Certificate ID list
  final pulumi.Input<List<String>>? certificateIds;
  /// CreateTime
  final pulumi.Input<String>? createTime;
  /// EncodedMetadataDocument
  final pulumi.Input<String>? encodedMetadataDocument;
  /// EntityId
  final pulumi.Input<String>? entityId;
  /// LoginUrl
  final pulumi.Input<String>? loginUrl;
  /// SSOStatus
  final pulumi.Input<String>? ssoStatus;
  /// UpdateTime
  final pulumi.Input<String>? updateTime;
  /// SP Request whether the signature is required
  final pulumi.Input<bool>? wantRequestSigned;

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
      bindingType: map['bindingType'] == null ? null : (map['bindingType']! as String).input(),
      certificateIds: map['certificateIds'] == null ? null : ((map['certificateIds']! as List).cast<String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      encodedMetadataDocument: map['encodedMetadataDocument'] == null ? null : (map['encodedMetadataDocument']! as String).input(),
      entityId: map['entityId'] == null ? null : (map['entityId']! as String).input(),
      loginUrl: map['loginUrl'] == null ? null : (map['loginUrl']! as String).input(),
      ssoStatus: map['ssoStatus'] == null ? null : (map['ssoStatus']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      wantRequestSigned: map['wantRequestSigned'] == null ? null : (map['wantRequestSigned']! as bool).input(),
    );
  }
}

