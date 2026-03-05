// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Alexa channel.
class AlexaChannelProperties {
  /// The Alexa skill Id
  final pulumi.Input<String> alexaSkillId;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;

  /// Creates a new [AlexaChannelProperties].
  /// [alexaSkillId] The Alexa skill Id
  /// [isEnabled] Whether this channel is enabled for the bot
  AlexaChannelProperties({
    required this.alexaSkillId,
    required this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alexaSkillId': alexaSkillId,
      'isEnabled': isEnabled,
    };
  }

  factory AlexaChannelProperties.fromMap(Map<String, dynamic> map) {
    return AlexaChannelProperties(
      alexaSkillId: pulumi.Input.fromValue(map['alexaSkillId'] as String),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
    );
  }
}

