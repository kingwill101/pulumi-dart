// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Telegram channel.
class TelegramChannelProperties {
  /// The Telegram access token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? accessToken;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// Whether this channel is validated for the bot
  final pulumi.Input<bool>? isValidated;

  /// Creates a new [TelegramChannelProperties].
  /// [accessToken] The Telegram access token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  TelegramChannelProperties({
    this.accessToken,
    required this.isEnabled,
    this.isValidated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'isEnabled': isEnabled,
      'isValidated': ?isValidated,
    };
  }

  factory TelegramChannelProperties.fromMap(Map<String, dynamic> map) {
    return TelegramChannelProperties(
      accessToken: map['accessToken'] == null ? null : (map['accessToken'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      isValidated: map['isValidated'] == null ? null : (map['isValidated'] as bool).input(),
    );
  }
}

