// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'facebook_page_response.dart';

/// The parameters to provide for the Facebook channel.
class FacebookChannelPropertiesResponse {
  /// Facebook application id
  final pulumi.Input<String> appId;
  /// Facebook application secret. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? appSecret;
  /// Callback Url
  final pulumi.Input<String> callbackUrl;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// The list of Facebook pages
  final pulumi.Input<List<FacebookPageResponse>>? pages;
  /// Verify token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String> verifyToken;

  /// Creates a new [FacebookChannelPropertiesResponse].
  /// [appId] Facebook application id
  /// [appSecret] Facebook application secret. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [callbackUrl] Callback Url
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [pages] The list of Facebook pages
  /// [verifyToken] Verify token. Value only returned through POST to the action Channel List API, otherwise empty.
  FacebookChannelPropertiesResponse({
    required this.appId,
    this.appSecret,
    required this.callbackUrl,
    required this.isEnabled,
    this.pages,
    required this.verifyToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': ?appSecret,
      'callbackUrl': callbackUrl,
      'isEnabled': isEnabled,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<FacebookPageResponse>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<FacebookPageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'verifyToken': verifyToken,
    };
  }

  factory FacebookChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FacebookChannelPropertiesResponse(
      appId: (map['appId'] as String).input(),
      appSecret: map['appSecret'] == null ? null : (map['appSecret']! as String).input(),
      callbackUrl: (map['callbackUrl'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      pages: map['pages'] == null ? null : (pulumi.Input.decodeList<FacebookPageResponse>(map['pages']!, (value) => FacebookPageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      verifyToken: (map['verifyToken'] as String).input(),
    );
  }
}

