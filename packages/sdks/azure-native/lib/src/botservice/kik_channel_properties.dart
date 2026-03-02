// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Kik channel.
class KikChannelProperties {
  /// Kik API key. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? apiKey;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// Whether this channel is validated for the bot
  final pulumi.Input<bool>? isValidated;
  /// The Kik user name
  final pulumi.Input<String> userName;

  /// Creates a new [KikChannelProperties].
  /// [apiKey] Kik API key. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  /// [userName] The Kik user name
  KikChannelProperties({
    this.apiKey,
    required this.isEnabled,
    this.isValidated,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'isEnabled': isEnabled,
      'isValidated': ?isValidated,
      'userName': userName,
    };
  }

  factory KikChannelProperties.fromMap(Map<String, dynamic> map) {
    return KikChannelProperties(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      isValidated: map['isValidated'] == null ? null : (map['isValidated'] as bool).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

