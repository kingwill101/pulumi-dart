// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Alexa channel.
class AlexaChannelProperties {
  /// The Alexa skill Id
  final String alexaSkillId;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;

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
      alexaSkillId: map['alexaSkillId'] as String,
      isEnabled: map['isEnabled'] as bool,
    );
  }
}

