// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'facebook_page.dart';

/// The parameters to provide for the Facebook channel.
class FacebookChannelProperties {
  /// Facebook application id
  final String appId;
  /// Facebook application secret. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? appSecret;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;
  /// The list of Facebook pages
  final List<FacebookPage>? pages;

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
      'pages': ?pages == null ? null : pulumi.Input.encodeList<FacebookPage, Map<String, dynamic>>(pages!, (value) => value.toMap()),
    };
  }

  factory FacebookChannelProperties.fromMap(Map<String, dynamic> map) {
    return FacebookChannelProperties(
      appId: map['appId'] as String,
      appSecret: map['appSecret'] == null ? null : map['appSecret'] as String,
      isEnabled: map['isEnabled'] as bool,
      pages: map['pages'] == null ? null : pulumi.Input.decodeList<FacebookPage>(map['pages'], (value) => FacebookPage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

