// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_response.dart';

/// Channel settings definition
class ChannelSettingsResponse {
  /// The bot icon url
  final String? botIconUrl;
  /// The bot id
  final String? botId;
  /// The channel display name
  final String? channelDisplayName;
  /// The channel id
  final String? channelId;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  final bool? disableLocalAuth;
  /// The extensionKey1
  final String? extensionKey1;
  /// The extensionKey2
  final String? extensionKey2;
  /// Whether this channel is enabled for the bot
  final bool? isEnabled;
  /// Whether customer needs to agree to new terms.
  final bool? requireTermsAgreement;
  /// The list of sites
  final List<SiteResponse>? sites;

  /// Creates a new [ChannelSettingsResponse].
  /// [botIconUrl] The bot icon url
  /// [botId] The bot id
  /// [channelDisplayName] The channel display name
  /// [channelId] The channel id
  /// [disableLocalAuth] Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  /// [extensionKey1] The extensionKey1
  /// [extensionKey2] The extensionKey2
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [requireTermsAgreement] Whether customer needs to agree to new terms.
  /// [sites] The list of sites
  ChannelSettingsResponse({
    this.botIconUrl,
    this.botId,
    this.channelDisplayName,
    this.channelId,
    this.disableLocalAuth,
    this.extensionKey1,
    this.extensionKey2,
    this.isEnabled,
    this.requireTermsAgreement,
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botIconUrl': ?botIconUrl,
      'botId': ?botId,
      'channelDisplayName': ?channelDisplayName,
      'channelId': ?channelId,
      'disableLocalAuth': ?disableLocalAuth,
      'extensionKey1': ?extensionKey1,
      'extensionKey2': ?extensionKey2,
      'isEnabled': ?isEnabled,
      'requireTermsAgreement': ?requireTermsAgreement,
      'sites': ?sites == null ? null : pulumi.Input.encodeList<SiteResponse, Map<String, dynamic>>(sites!, (value) => value.toMap()),
    };
  }

  factory ChannelSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ChannelSettingsResponse(
      botIconUrl: map['botIconUrl'] == null ? null : map['botIconUrl'] as String,
      botId: map['botId'] == null ? null : map['botId'] as String,
      channelDisplayName: map['channelDisplayName'] == null ? null : map['channelDisplayName'] as String,
      channelId: map['channelId'] == null ? null : map['channelId'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      extensionKey1: map['extensionKey1'] == null ? null : map['extensionKey1'] as String,
      extensionKey2: map['extensionKey2'] == null ? null : map['extensionKey2'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      requireTermsAgreement: map['requireTermsAgreement'] == null ? null : map['requireTermsAgreement'] as bool,
      sites: map['sites'] == null ? null : pulumi.Input.decodeList<SiteResponse>(map['sites'], (value) => SiteResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

