// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the DirectLine Speech channel.
class DirectLineSpeechChannelPropertiesResponse {
  /// The cognitive service region with this channel registration.
  final String? cognitiveServiceRegion;
  /// The cognitive service id with this channel registration.
  final String? cognitiveServiceResourceId;
  /// The cognitive service subscription key to use with this channel registration.
  final String? cognitiveServiceSubscriptionKey;
  /// Custom voice deployment id (optional).
  final String? customSpeechModelId;
  /// Custom speech model id (optional).
  final String? customVoiceDeploymentId;
  /// Make this a default bot for chosen cognitive service account.
  final bool? isDefaultBotForCogSvcAccount;
  /// Whether this channel is enabled or not.
  final bool? isEnabled;

  /// Creates a new [DirectLineSpeechChannelPropertiesResponse].
  /// [cognitiveServiceRegion] The cognitive service region with this channel registration.
  /// [cognitiveServiceResourceId] The cognitive service id with this channel registration.
  /// [cognitiveServiceSubscriptionKey] The cognitive service subscription key to use with this channel registration.
  /// [customSpeechModelId] Custom voice deployment id (optional).
  /// [customVoiceDeploymentId] Custom speech model id (optional).
  /// [isDefaultBotForCogSvcAccount] Make this a default bot for chosen cognitive service account.
  /// [isEnabled] Whether this channel is enabled or not.
  DirectLineSpeechChannelPropertiesResponse({
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

  factory DirectLineSpeechChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DirectLineSpeechChannelPropertiesResponse(
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : map['cognitiveServiceRegion'] as String,
      cognitiveServiceResourceId: map['cognitiveServiceResourceId'] == null ? null : map['cognitiveServiceResourceId'] as String,
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : map['cognitiveServiceSubscriptionKey'] as String,
      customSpeechModelId: map['customSpeechModelId'] == null ? null : map['customSpeechModelId'] as String,
      customVoiceDeploymentId: map['customVoiceDeploymentId'] == null ? null : map['customVoiceDeploymentId'] as String,
      isDefaultBotForCogSvcAccount: map['isDefaultBotForCogSvcAccount'] == null ? null : map['isDefaultBotForCogSvcAccount'] as bool,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
    );
  }
}

