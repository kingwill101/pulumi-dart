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
      bindingType: (() { final guardedValue = map['bindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateIds: (() { final guardedValue = map['certificateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodedMetadataDocument: (() { final guardedValue = map['encodedMetadataDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginUrl: (() { final guardedValue = map['loginUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoStatus: (() { final guardedValue = map['ssoStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wantRequestSigned: (() { final guardedValue = map['wantRequestSigned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

