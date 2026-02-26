// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Agent.
class AgentArgs2 {
  /// API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
  /// different service endpoints for different API versions. However, bots connectors and webhook calls will follow
  /// the specified API version.
  /// * API_VERSION_V1: Legacy V1 API.
  /// * API_VERSION_V2: V2 API.
  /// * API_VERSION_V2_BETA_1: V2beta1 API.
  /// Possible values are: `API_VERSION_V1`, `API_VERSION_V2`, `API_VERSION_V2_BETA_1`.
  final Input<String>? apiVersion;

  /// The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
  /// into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
  /// from the API will be shown in the [avatarUriBackend] field.
  final Input<String>? avatarUri;

  /// To filter out false positive results and still get variety in matched natural language inputs for your agent,
  /// you can tune the machine learning classification threshold. If the returned score value is less than the threshold
  /// value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be
  /// triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  final Input<double>? classificationThreshold;

  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  final Input<String> defaultLanguageCode;

  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final Input<String>? description;

  /// The name of this agent.
  final Input<String> displayName;

  /// Determines whether this agent should log conversation queries.
  final Input<bool>? enableLogging;

  /// Determines how intents are detected from user queries.
  /// * MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
  /// syntax and composite entities.
  /// * MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
  /// using @sys.any or very large developer entities.
  /// Possible values are: `MATCH_MODE_HYBRID`, `MATCH_MODE_ML_ONLY`.
  final Input<String>? matchMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The list of all languages supported by this agent (except for the defaultLanguageCode).
  final Input<List<String>>? supportedLanguageCodes;

  /// The agent tier. If not specified, TIER_STANDARD is assumed.
  /// * TIER_STANDARD: Standard tier.
  /// * TIER_ENTERPRISE: Enterprise tier (Essentials).
  /// * TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
  /// NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between
  /// the the provider state and Dialogflow if the agent tier is changed outside of the provider.
  final Input<String>? tier;

  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  final Input<String> timeZone;

  AgentArgs2({
    this.apiVersion,
    this.avatarUri,
    this.classificationThreshold,
    required this.defaultLanguageCode,
    this.description,
    required this.displayName,
    this.enableLogging,
    this.matchMode,
    this.project,
    this.supportedLanguageCodes,
    this.tier,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiVersionValue = apiVersion;
    if (apiVersionValue != null) {
      map['apiVersion'] = apiVersionValue;
    }
    final avatarUriValue = avatarUri;
    if (avatarUriValue != null) {
      map['avatarUri'] = avatarUriValue;
    }
    final classificationThresholdValue = classificationThreshold;
    if (classificationThresholdValue != null) {
      map['classificationThreshold'] = classificationThresholdValue;
    }
    map['defaultLanguageCode'] = defaultLanguageCode;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final matchModeValue = matchMode;
    if (matchModeValue != null) {
      map['matchMode'] = matchModeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final supportedLanguageCodesValue = supportedLanguageCodes;
    if (supportedLanguageCodesValue != null) {
      map['supportedLanguageCodes'] = supportedLanguageCodesValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    map['timeZone'] = timeZone;
    return map;
  }

  factory AgentArgs2.fromMap(Map<String, dynamic> map) {
    return AgentArgs2(
      apiVersion: Input.asOptionalInput<String>(map['apiVersion']),
      avatarUri: Input.asOptionalInput<String>(map['avatarUri']),
      classificationThreshold:
          Input.asOptionalInput<double>(map['classificationThreshold']),
      defaultLanguageCode: Input.asInput<String>(map['defaultLanguageCode']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      matchMode: Input.asOptionalInput<String>(map['matchMode']),
      project: Input.asOptionalInput<String>(map['project']),
      supportedLanguageCodes:
          Input.asOptionalInput<List<String>>(map['supportedLanguageCodes']),
      tier: Input.asOptionalInput<String>(map['tier']),
      timeZone: Input.asInput<String>(map['timeZone']),
    );
  }
}
