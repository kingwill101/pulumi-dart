// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Telegram channel.
class TelegramChannelPropertiesResponse {
  /// The Telegram access token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? accessToken;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// Whether this channel is validated for the bot
  final pulumi.Input<bool>? isValidated;

  /// Creates a new [TelegramChannelPropertiesResponse].
  /// [accessToken] The Telegram access token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  TelegramChannelPropertiesResponse({
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

  factory TelegramChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TelegramChannelPropertiesResponse(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      isValidated: (() { final guardedValue = map['isValidated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

