// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Alexa channel.
class AlexaChannelPropertiesResponse {
  /// The Alexa skill Id
  final pulumi.Input<String> alexaSkillId;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// Full Uri used to configured the skill in Alexa
  final pulumi.Input<String> serviceEndpointUri;
  /// Url fragment used in part of the Uri configured in Alexa
  final pulumi.Input<String> urlFragment;

  /// Creates a new [AlexaChannelPropertiesResponse].
  /// [alexaSkillId] The Alexa skill Id
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [serviceEndpointUri] Full Uri used to configured the skill in Alexa
  /// [urlFragment] Url fragment used in part of the Uri configured in Alexa
  const AlexaChannelPropertiesResponse({
    required this.alexaSkillId,
    required this.isEnabled,
    required this.serviceEndpointUri,
    required this.urlFragment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alexaSkillId': alexaSkillId,
      'isEnabled': isEnabled,
      'serviceEndpointUri': serviceEndpointUri,
      'urlFragment': urlFragment,
    };
  }

  factory AlexaChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AlexaChannelPropertiesResponse(
      alexaSkillId: pulumi.Input.fromValue(map['alexaSkillId'] as String),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      serviceEndpointUri: pulumi.Input.fromValue(map['serviceEndpointUri'] as String),
      urlFragment: pulumi.Input.fromValue(map['urlFragment'] as String),
    );
  }
}
