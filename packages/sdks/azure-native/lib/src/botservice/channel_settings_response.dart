// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_response.dart';

/// Channel settings definition
class ChannelSettingsResponse {
  /// The bot icon url
  final pulumi.Input<String>? botIconUrl;
  /// The bot id
  final pulumi.Input<String>? botId;
  /// The channel display name
  final pulumi.Input<String>? channelDisplayName;
  /// The channel id
  final pulumi.Input<String>? channelId;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// The extensionKey1
  final pulumi.Input<String>? extensionKey1;
  /// The extensionKey2
  final pulumi.Input<String>? extensionKey2;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool>? isEnabled;
  /// Whether customer needs to agree to new terms.
  final pulumi.Input<bool>? requireTermsAgreement;
  /// The list of sites
  final pulumi.Input<List<SiteResponse>>? sites;

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
  const ChannelSettingsResponse({
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
      'sites': ?pulumi.Input.mapOptionalInputValue<List<SiteResponse>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<SiteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ChannelSettingsResponse(
      botIconUrl: (() { final guardedValue = map['botIconUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      botId: (() { final guardedValue = map['botId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelDisplayName: (() { final guardedValue = map['channelDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extensionKey1: (() { final guardedValue = map['extensionKey1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionKey2: (() { final guardedValue = map['extensionKey2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireTermsAgreement: (() { final guardedValue = map['requireTermsAgreement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SiteResponse>(guardedValue, (value) => SiteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
