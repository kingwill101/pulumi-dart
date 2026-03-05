// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'facebook_page.dart';

/// The parameters to provide for the Facebook channel.
class FacebookChannelProperties {
  /// Facebook application id
  final pulumi.Input<String> appId;
  /// Facebook application secret. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? appSecret;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// The list of Facebook pages
  final pulumi.Input<List<FacebookPage>>? pages;

  /// Creates a new [FacebookChannelProperties].
  /// [appId] Facebook application id
  /// [appSecret] Facebook application secret. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [pages] The list of Facebook pages
  FacebookChannelProperties({
    required this.appId,
    this.appSecret,
    required this.isEnabled,
    this.pages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': ?appSecret,
      'isEnabled': isEnabled,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<FacebookPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<FacebookPage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FacebookChannelProperties.fromMap(Map<String, dynamic> map) {
    return FacebookChannelProperties(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecret: (() { final guardedValue = map['appSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      pages: (() { final guardedValue = map['pages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FacebookPage>(guardedValue, (value) => FacebookPage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

