// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_audio_processing_config/app_audio_processing_config.dart';
import '../app_client_certificate_settings/app_client_certificate_settings.dart';
import '../app_data_store_settings/app_data_store_settings.dart';
import '../app_default_channel_profile/app_default_channel_profile.dart';
import '../app_evaluation_metrics_thresholds/app_evaluation_metrics_thresholds.dart';
import '../app_language_settings/app_language_settings.dart';
import '../app_logging_settings/app_logging_settings.dart';
import '../app_model_settings/app_model_settings.dart';
import '../app_time_zone_settings/app_time_zone_settings.dart';
import '../app_variable_declaration/app_variable_declaration.dart';

/// The set of arguments for App.
class AppArgs {
  /// The ID to use for the app, which will become the final component of
  /// the app's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app.
  final Input<String> appId;

  /// Configuration for how the input and output audio should be processed and
  /// delivered.
  /// Structure is documented below.
  final Input<AppAudioProcessingConfig>? audioProcessingConfig;

  /// The default client certificate settings for the app.
  /// Structure is documented below.
  final Input<AppClientCertificateSettings>? clientCertificateSettings;

  /// Data store related settings for the app.
  /// Structure is documented below.
  final Input<AppDataStoreSettings>? dataStoreSettings;

  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final Input<AppDefaultChannelProfile>? defaultChannelProfile;

  /// Human-readable description of the app.
  final Input<String>? description;

  /// Display name of the app.
  final Input<String> displayName;

  /// Threshold settings for metrics in an Evaluation.
  /// Structure is documented below.
  final Input<AppEvaluationMetricsThresholds>? evaluationMetricsThresholds;

  /// Instructions for all the agents in the app.
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  final Input<String>? globalInstruction;

  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final Input<List<String>>? guardrails;

  /// Language settings of the app.
  /// Structure is documented below.
  final Input<AppLanguageSettings>? languageSettings;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Settings to describe the logging behaviors for the app.
  /// Structure is documented below.
  final Input<AppLoggingSettings>? loggingSettings;

  /// Metadata about the app. This field can be used to store additional
  /// information relevant to the app's details or intended usages.
  final Input<Map<String, String>>? metadata;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final Input<AppModelSettings>? modelSettings;

  /// Whether the app is pinned in the app list.
  final Input<bool>? pinned;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The root agent is the entry point of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final Input<String>? rootAgent;

  /// TimeZone settings of the app.
  /// Structure is documented below.
  final Input<AppTimeZoneSettings>? timeZoneSettings;

  /// The declarations of the variables.
  /// Structure is documented below.
  final Input<List<AppVariableDeclaration>>? variableDeclarations;

  AppArgs({
    required this.appId,
    this.audioProcessingConfig,
    this.clientCertificateSettings,
    this.dataStoreSettings,
    this.defaultChannelProfile,
    this.description,
    required this.displayName,
    this.evaluationMetricsThresholds,
    this.globalInstruction,
    this.guardrails,
    this.languageSettings,
    required this.location,
    this.loggingSettings,
    this.metadata,
    this.modelSettings,
    this.pinned,
    this.project,
    this.rootAgent,
    this.timeZoneSettings,
    this.variableDeclarations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final audioProcessingConfigValue = audioProcessingConfig;
    if (audioProcessingConfigValue != null) {
      map['audioProcessingConfig'] = Input.mapOptionalInputValue<
              AppAudioProcessingConfig, Map<String, dynamic>>(
          audioProcessingConfigValue, (value) => value.toMap());
    }
    final clientCertificateSettingsValue = clientCertificateSettings;
    if (clientCertificateSettingsValue != null) {
      map['clientCertificateSettings'] = Input.mapOptionalInputValue<
              AppClientCertificateSettings, Map<String, dynamic>>(
          clientCertificateSettingsValue, (value) => value.toMap());
    }
    final dataStoreSettingsValue = dataStoreSettings;
    if (dataStoreSettingsValue != null) {
      map['dataStoreSettings'] = Input.mapOptionalInputValue<
              AppDataStoreSettings, Map<String, dynamic>>(
          dataStoreSettingsValue, (value) => value.toMap());
    }
    final defaultChannelProfileValue = defaultChannelProfile;
    if (defaultChannelProfileValue != null) {
      map['defaultChannelProfile'] = Input.mapOptionalInputValue<
              AppDefaultChannelProfile, Map<String, dynamic>>(
          defaultChannelProfileValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final evaluationMetricsThresholdsValue = evaluationMetricsThresholds;
    if (evaluationMetricsThresholdsValue != null) {
      map['evaluationMetricsThresholds'] = Input.mapOptionalInputValue<
              AppEvaluationMetricsThresholds, Map<String, dynamic>>(
          evaluationMetricsThresholdsValue, (value) => value.toMap());
    }
    final globalInstructionValue = globalInstruction;
    if (globalInstructionValue != null) {
      map['globalInstruction'] = globalInstructionValue;
    }
    final guardrailsValue = guardrails;
    if (guardrailsValue != null) {
      map['guardrails'] = guardrailsValue;
    }
    final languageSettingsValue = languageSettings;
    if (languageSettingsValue != null) {
      map['languageSettings'] = Input.mapOptionalInputValue<AppLanguageSettings,
              Map<String, dynamic>>(
          languageSettingsValue, (value) => value.toMap());
    }
    map['location'] = location;
    final loggingSettingsValue = loggingSettings;
    if (loggingSettingsValue != null) {
      map['loggingSettings'] =
          Input.mapOptionalInputValue<AppLoggingSettings, Map<String, dynamic>>(
              loggingSettingsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final modelSettingsValue = modelSettings;
    if (modelSettingsValue != null) {
      map['modelSettings'] =
          Input.mapOptionalInputValue<AppModelSettings, Map<String, dynamic>>(
              modelSettingsValue, (value) => value.toMap());
    }
    final pinnedValue = pinned;
    if (pinnedValue != null) {
      map['pinned'] = pinnedValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rootAgentValue = rootAgent;
    if (rootAgentValue != null) {
      map['rootAgent'] = rootAgentValue;
    }
    final timeZoneSettingsValue = timeZoneSettings;
    if (timeZoneSettingsValue != null) {
      map['timeZoneSettings'] = Input.mapOptionalInputValue<AppTimeZoneSettings,
              Map<String, dynamic>>(
          timeZoneSettingsValue, (value) => value.toMap());
    }
    final variableDeclarationsValue = variableDeclarations;
    if (variableDeclarationsValue != null) {
      map['variableDeclarations'] = Input.mapOptionalInputValue<
              List<AppVariableDeclaration>, List<Map<String, dynamic>>>(
          variableDeclarationsValue,
          (value) =>
              Input.encodeList<AppVariableDeclaration, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      appId: Input.asInput<String>(map['appId']),
      audioProcessingConfig: Input.asOptionalInput<AppAudioProcessingConfig>(
          map['audioProcessingConfig']),
      clientCertificateSettings:
          Input.asOptionalInput<AppClientCertificateSettings>(
              map['clientCertificateSettings']),
      dataStoreSettings:
          Input.asOptionalInput<AppDataStoreSettings>(map['dataStoreSettings']),
      defaultChannelProfile: Input.asOptionalInput<AppDefaultChannelProfile>(
          map['defaultChannelProfile']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      evaluationMetricsThresholds:
          Input.asOptionalInput<AppEvaluationMetricsThresholds>(
              map['evaluationMetricsThresholds']),
      globalInstruction:
          Input.asOptionalInput<String>(map['globalInstruction']),
      guardrails: Input.asOptionalInput<List<String>>(map['guardrails']),
      languageSettings:
          Input.asOptionalInput<AppLanguageSettings>(map['languageSettings']),
      location: Input.asInput<String>(map['location']),
      loggingSettings:
          Input.asOptionalInput<AppLoggingSettings>(map['loggingSettings']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      modelSettings:
          Input.asOptionalInput<AppModelSettings>(map['modelSettings']),
      pinned: Input.asOptionalInput<bool>(map['pinned']),
      project: Input.asOptionalInput<String>(map['project']),
      rootAgent: Input.asOptionalInput<String>(map['rootAgent']),
      timeZoneSettings:
          Input.asOptionalInput<AppTimeZoneSettings>(map['timeZoneSettings']),
      variableDeclarations: Input.asOptionalInput<List<AppVariableDeclaration>>(
          map['variableDeclarations']),
    );
  }
}
