// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the DirectLine Speech channel.
class DirectLineSpeechChannelProperties {
  /// The cognitive service region with this channel registration.
  final pulumi.Input<String>? cognitiveServiceRegion;
  /// The cognitive service id with this channel registration.
  final pulumi.Input<String>? cognitiveServiceResourceId;
  /// The cognitive service subscription key to use with this channel registration.
  final pulumi.Input<String>? cognitiveServiceSubscriptionKey;
  /// Custom voice deployment id (optional).
  final pulumi.Input<String>? customSpeechModelId;
  /// Custom speech model id (optional).
  final pulumi.Input<String>? customVoiceDeploymentId;
  /// Make this a default bot for chosen cognitive service account.
  final pulumi.Input<bool>? isDefaultBotForCogSvcAccount;
  /// Whether this channel is enabled or not.
  final pulumi.Input<bool>? isEnabled;

  /// Creates a new [DirectLineSpeechChannelProperties].
  /// [cognitiveServiceRegion] The cognitive service region with this channel registration.
  /// [cognitiveServiceResourceId] The cognitive service id with this channel registration.
  /// [cognitiveServiceSubscriptionKey] The cognitive service subscription key to use with this channel registration.
  /// [customSpeechModelId] Custom voice deployment id (optional).
  /// [customVoiceDeploymentId] Custom speech model id (optional).
  /// [isDefaultBotForCogSvcAccount] Make this a default bot for chosen cognitive service account.
  /// [isEnabled] Whether this channel is enabled or not.
  DirectLineSpeechChannelProperties({
    this.cognitiveServiceRegion,
    this.cognitiveServiceResourceId,
    this.cognitiveServiceSubscriptionKey,
    this.customSpeechModelId,
    this.customVoiceDeploymentId,
    this.isDefaultBotForCogSvcAccount,
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveServiceRegion': ?cognitiveServiceRegion,
      'cognitiveServiceResourceId': ?cognitiveServiceResourceId,
      'cognitiveServiceSubscriptionKey': ?cognitiveServiceSubscriptionKey,
      'customSpeechModelId': ?customSpeechModelId,
      'customVoiceDeploymentId': ?customVoiceDeploymentId,
      'isDefaultBotForCogSvcAccount': ?isDefaultBotForCogSvcAccount,
      'isEnabled': ?isEnabled,
    };
  }

  factory DirectLineSpeechChannelProperties.fromMap(Map<String, dynamic> map) {
    return DirectLineSpeechChannelProperties(
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : (map['cognitiveServiceRegion']! as String).input(),
      cognitiveServiceResourceId: map['cognitiveServiceResourceId'] == null ? null : (map['cognitiveServiceResourceId']! as String).input(),
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : (map['cognitiveServiceSubscriptionKey']! as String).input(),
      customSpeechModelId: map['customSpeechModelId'] == null ? null : (map['customSpeechModelId']! as String).input(),
      customVoiceDeploymentId: map['customVoiceDeploymentId'] == null ? null : (map['customVoiceDeploymentId']! as String).input(),
      isDefaultBotForCogSvcAccount: map['isDefaultBotForCogSvcAccount'] == null ? null : (map['isDefaultBotForCogSvcAccount']! as bool).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
    );
  }
}

