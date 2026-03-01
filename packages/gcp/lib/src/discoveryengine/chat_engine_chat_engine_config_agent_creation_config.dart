// ignore_for_file: unused_element, unnecessary_cast

class ChatEngineChatEngineConfigAgentCreationConfig {
  /// Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  final String? business;

  /// The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  final String defaultLanguageCode;

  /// Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine.
  final String? location;

  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final String timeZone;

  /// Creates a new [ChatEngineChatEngineConfigAgentCreationConfig].
  /// [business] Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  /// [defaultLanguageCode] The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  /// [location] Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine.
  /// [timeZone] The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  ChatEngineChatEngineConfigAgentCreationConfig({
    this.business,
    required this.defaultLanguageCode,
    this.location,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'business': ?business,
      'defaultLanguageCode': defaultLanguageCode,
      'location': ?location,
      'timeZone': timeZone,
    };
  }

  factory ChatEngineChatEngineConfigAgentCreationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChatEngineChatEngineConfigAgentCreationConfig(
      business: map['business'] == null ? null : map['business'] as String,
      defaultLanguageCode: map['defaultLanguageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
