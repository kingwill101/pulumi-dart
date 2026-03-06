// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A site for the Direct Line channel
class DirectLineSiteResponse {
  /// DirectLine application id
  final pulumi.Input<String>? appId;
  /// Entity Tag
  final pulumi.Input<String>? eTag;
  /// Whether this site is enabled for block user upload.
  final pulumi.Input<bool>? isBlockUserUploadEnabled;
  /// Whether this site is disabled detailed logging for
  final pulumi.Input<bool>? isDetailedLoggingEnabled;
  /// Whether this site is enabled for DirectLine channel
  final pulumi.Input<bool> isEnabled;
  /// Whether this site is EndpointParameters enabled for channel
  final pulumi.Input<bool>? isEndpointParametersEnabled;
  /// Whether this no-storage site is disabled detailed logging for
  final pulumi.Input<bool>? isNoStorageEnabled;
  /// Whether this site is enabled for authentication with Bot Framework.
  final pulumi.Input<bool>? isSecureSiteEnabled;
  /// Whether this site is token enabled for channel
  final pulumi.Input<bool> isTokenEnabled;
  /// Whether this site is enabled for Bot Framework V1 protocol.
  final pulumi.Input<bool>? isV1Enabled;
  /// Whether this site is enabled for Bot Framework V3 protocol.
  final pulumi.Input<bool>? isV3Enabled;
  /// Whether this site is enabled for Webchat Speech
  final pulumi.Input<bool>? isWebChatSpeechEnabled;
  /// Whether this site is enabled for preview versions of Webchat
  final pulumi.Input<bool>? isWebchatPreviewEnabled;
  /// Primary key. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String> key;
  /// Secondary key. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String> key2;
  /// Site Id
  final pulumi.Input<String> siteId;
  /// Site name
  final pulumi.Input<String> siteName;
  /// Tenant Id
  final pulumi.Input<String>? tenantId;
  /// List of Trusted Origin URLs for this site. This field is applicable only if isSecureSiteEnabled is True.
  final pulumi.Input<List<String>>? trustedOrigins;

  /// Creates a new [DirectLineSiteResponse].
  /// [appId] DirectLine application id
  /// [eTag] Entity Tag
  /// [isBlockUserUploadEnabled] Whether this site is enabled for block user upload.
  /// [isDetailedLoggingEnabled] Whether this site is disabled detailed logging for
  /// [isEnabled] Whether this site is enabled for DirectLine channel
  /// [isEndpointParametersEnabled] Whether this site is EndpointParameters enabled for channel
  /// [isNoStorageEnabled] Whether this no-storage site is disabled detailed logging for
  /// [isSecureSiteEnabled] Whether this site is enabled for authentication with Bot Framework.
  /// [isTokenEnabled] Whether this site is token enabled for channel
  /// [isV1Enabled] Whether this site is enabled for Bot Framework V1 protocol.
  /// [isV3Enabled] Whether this site is enabled for Bot Framework V3 protocol.
  /// [isWebChatSpeechEnabled] Whether this site is enabled for Webchat Speech
  /// [isWebchatPreviewEnabled] Whether this site is enabled for preview versions of Webchat
  /// [key] Primary key. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [key2] Secondary key. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [siteId] Site Id
  /// [siteName] Site name
  /// [tenantId] Tenant Id
  /// [trustedOrigins] List of Trusted Origin URLs for this site. This field is applicable only if isSecureSiteEnabled is True.
  const DirectLineSiteResponse({
    this.appId,
    this.eTag,
    this.isBlockUserUploadEnabled,
    this.isDetailedLoggingEnabled,
    required this.isEnabled,
    this.isEndpointParametersEnabled,
    this.isNoStorageEnabled,
    this.isSecureSiteEnabled,
    required this.isTokenEnabled,
    this.isV1Enabled,
    this.isV3Enabled,
    this.isWebChatSpeechEnabled,
    this.isWebchatPreviewEnabled,
    required this.key,
    required this.key2,
    required this.siteId,
    required this.siteName,
    this.tenantId,
    this.trustedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'eTag': ?eTag,
      'isBlockUserUploadEnabled': ?isBlockUserUploadEnabled,
      'isDetailedLoggingEnabled': ?isDetailedLoggingEnabled,
      'isEnabled': isEnabled,
      'isEndpointParametersEnabled': ?isEndpointParametersEnabled,
      'isNoStorageEnabled': ?isNoStorageEnabled,
      'isSecureSiteEnabled': ?isSecureSiteEnabled,
      'isTokenEnabled': isTokenEnabled,
      'isV1Enabled': ?isV1Enabled,
      'isV3Enabled': ?isV3Enabled,
      'isWebChatSpeechEnabled': ?isWebChatSpeechEnabled,
      'isWebchatPreviewEnabled': ?isWebchatPreviewEnabled,
      'key': key,
      'key2': key2,
      'siteId': siteId,
      'siteName': siteName,
      'tenantId': ?tenantId,
      'trustedOrigins': ?trustedOrigins,
    };
  }

  factory DirectLineSiteResponse.fromMap(Map<String, dynamic> map) {
    return DirectLineSiteResponse(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isBlockUserUploadEnabled: (() { final guardedValue = map['isBlockUserUploadEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDetailedLoggingEnabled: (() { final guardedValue = map['isDetailedLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      isEndpointParametersEnabled: (() { final guardedValue = map['isEndpointParametersEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isNoStorageEnabled: (() { final guardedValue = map['isNoStorageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSecureSiteEnabled: (() { final guardedValue = map['isSecureSiteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTokenEnabled: pulumi.Input.fromValue(map['isTokenEnabled'] as bool),
      isV1Enabled: (() { final guardedValue = map['isV1Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isV3Enabled: (() { final guardedValue = map['isV3Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isWebChatSpeechEnabled: (() { final guardedValue = map['isWebChatSpeechEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isWebchatPreviewEnabled: (() { final guardedValue = map['isWebchatPreviewEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      key2: pulumi.Input.fromValue(map['key2'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedOrigins: (() { final guardedValue = map['trustedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

