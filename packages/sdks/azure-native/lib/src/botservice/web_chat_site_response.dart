// ignore_for_file: unused_element, unnecessary_cast


/// A site for the Webchat channel
class WebChatSiteResponse {
  /// DirectLine application id
  final String? appId;
  /// Entity Tag
  final String? eTag;
  /// Whether this site is enabled for block user upload.
  final bool? isBlockUserUploadEnabled;
  /// Whether this site is disabled detailed logging for
  final bool? isDetailedLoggingEnabled;
  /// Whether this site is enabled for DirectLine channel
  final bool isEnabled;
  /// Whether this site is EndpointParameters enabled for channel
  final bool? isEndpointParametersEnabled;
  /// Whether this no-storage site is disabled detailed logging for
  final bool? isNoStorageEnabled;
  /// Whether this site is enabled for authentication with Bot Framework.
  final bool? isSecureSiteEnabled;
  /// Whether this site is token enabled for channel
  final bool isTokenEnabled;
  /// Whether this site is enabled for Bot Framework V1 protocol.
  final bool? isV1Enabled;
  /// Whether this site is enabled for Bot Framework V3 protocol.
  final bool? isV3Enabled;
  /// Whether this site is enabled for Webchat Speech
  final bool? isWebChatSpeechEnabled;
  /// Whether this site is enabled for preview versions of Webchat
  final bool? isWebchatPreviewEnabled;
  /// Primary key. Value only returned through POST to the action Channel List API, otherwise empty.
  final String key;
  /// Secondary key. Value only returned through POST to the action Channel List API, otherwise empty.
  final String key2;
  /// Site Id
  final String siteId;
  /// Site name
  final String siteName;
  /// Tenant Id
  final String? tenantId;
  /// List of Trusted Origin URLs for this site. This field is applicable only if isSecureSiteEnabled is True.
  final List<String>? trustedOrigins;

  /// Creates a new [WebChatSiteResponse].
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
  WebChatSiteResponse({
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

  factory WebChatSiteResponse.fromMap(Map<String, dynamic> map) {
    return WebChatSiteResponse(
      appId: map['appId'] == null ? null : map['appId'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      isBlockUserUploadEnabled: map['isBlockUserUploadEnabled'] == null ? null : map['isBlockUserUploadEnabled'] as bool,
      isDetailedLoggingEnabled: map['isDetailedLoggingEnabled'] == null ? null : map['isDetailedLoggingEnabled'] as bool,
      isEnabled: map['isEnabled'] as bool,
      isEndpointParametersEnabled: map['isEndpointParametersEnabled'] == null ? null : map['isEndpointParametersEnabled'] as bool,
      isNoStorageEnabled: map['isNoStorageEnabled'] == null ? null : map['isNoStorageEnabled'] as bool,
      isSecureSiteEnabled: map['isSecureSiteEnabled'] == null ? null : map['isSecureSiteEnabled'] as bool,
      isTokenEnabled: map['isTokenEnabled'] as bool,
      isV1Enabled: map['isV1Enabled'] == null ? null : map['isV1Enabled'] as bool,
      isV3Enabled: map['isV3Enabled'] == null ? null : map['isV3Enabled'] as bool,
      isWebChatSpeechEnabled: map['isWebChatSpeechEnabled'] == null ? null : map['isWebChatSpeechEnabled'] as bool,
      isWebchatPreviewEnabled: map['isWebchatPreviewEnabled'] == null ? null : map['isWebchatPreviewEnabled'] as bool,
      key: map['key'] as String,
      key2: map['key2'] as String,
      siteId: map['siteId'] as String,
      siteName: map['siteName'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      trustedOrigins: map['trustedOrigins'] == null ? null : (map['trustedOrigins'] as List).cast<String>(),
    );
  }
}

