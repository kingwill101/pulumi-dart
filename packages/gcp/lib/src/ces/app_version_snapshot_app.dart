// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_audio_processing_config.dart';
import 'app_version_snapshot_app_client_certificate_setting.dart';
import 'app_version_snapshot_app_data_store_setting.dart';
import 'app_version_snapshot_app_default_channel_profile.dart';
import 'app_version_snapshot_app_evaluation_metrics_threshold.dart';
import 'app_version_snapshot_app_language_setting.dart';
import 'app_version_snapshot_app_logging_setting.dart';
import 'app_version_snapshot_app_model_setting.dart';
import 'app_version_snapshot_app_time_zone_setting.dart';
import 'app_version_snapshot_app_variable_declaration.dart';

class AppVersionSnapshotApp {
  /// (Output)
  /// Configuration for how the input and output audio should be processed and
  /// delivered.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppAudioProcessingConfig>?
      audioProcessingConfigs;

  /// (Output)
  /// The default client certificate settings for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppClientCertificateSetting>?
      clientCertificateSettings;

  /// (Output)
  /// Timestamp when the toolset was created.
  final String? createTime;

  /// (Output)
  /// Data store related settings for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppDataStoreSetting>? dataStoreSettings;

  /// (Output)
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppDefaultChannelProfile>?
      defaultChannelProfiles;

  /// (Output)
  /// Number of deployments in the app.
  final int? deploymentCount;

  /// The description of the app version.
  final String? description;

  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final String? etag;

  /// (Output)
  /// Threshold settings for metrics in an Evaluation.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppEvaluationMetricsThreshold>?
      evaluationMetricsThresholds;

  /// (Output)
  /// Instructions for all the agents in the app.
  /// You can use this instruction to set up a stable identity or personality
  /// across all the agents.
  final String? globalInstruction;

  /// (Output)
  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final List<String>? guardrails;

  /// (Output)
  /// Language settings of the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLanguageSetting>? languageSettings;

  /// (Output)
  /// Settings to describe the logging behaviors for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLoggingSetting>? loggingSettings;

  /// (Output)
  /// Metadata about the app. This field can be used to store additional
  /// information relevant to the app's details or intended usages.
  final Map<String, String>? metadata;

  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppModelSetting>? modelSettings;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// The root agent is the entry point of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String? rootAgent;

  /// (Output)
  /// TimeZone settings of the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppTimeZoneSetting>? timeZoneSettings;

  /// (Output)
  /// Timestamp when the toolset was last updated.
  final String? updateTime;

  /// (Output)
  /// The declarations of the variables.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppVariableDeclaration>? variableDeclarations;

  /// Creates a new [AppVersionSnapshotApp].
  /// [audioProcessingConfigs] (Output)
  /// [clientCertificateSettings] (Output)
  /// [createTime] (Output)
  /// [dataStoreSettings] (Output)
  /// [defaultChannelProfiles] (Output)
  /// [deploymentCount] (Output)
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [etag] (Output)
  /// [evaluationMetricsThresholds] (Output)
  /// [globalInstruction] (Output)
  /// [guardrails] (Output)
  /// [languageSettings] (Output)
  /// [loggingSettings] (Output)
  /// [metadata] (Output)
  /// [modelSettings] (Output)
  /// [name] (Output)
  /// [rootAgent] (Output)
  /// [timeZoneSettings] (Output)
  /// [updateTime] (Output)
  /// [variableDeclarations] (Output)
  AppVersionSnapshotApp({
    this.audioProcessingConfigs,
    this.clientCertificateSettings,
    this.createTime,
    this.dataStoreSettings,
    this.defaultChannelProfiles,
    this.deploymentCount,
    this.description,
    this.displayName,
    this.etag,
    this.evaluationMetricsThresholds,
    this.globalInstruction,
    this.guardrails,
    this.languageSettings,
    this.loggingSettings,
    this.metadata,
    this.modelSettings,
    this.name,
    this.rootAgent,
    this.timeZoneSettings,
    this.updateTime,
    this.variableDeclarations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioProcessingConfigsValue = audioProcessingConfigs;
    if (audioProcessingConfigsValue != null) {
      map['audioProcessingConfigs'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppAudioProcessingConfig, Map<String, dynamic>>(
          audioProcessingConfigsValue, (value) => value.toMap());
    }
    final clientCertificateSettingsValue = clientCertificateSettings;
    if (clientCertificateSettingsValue != null) {
      map['clientCertificateSettings'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppClientCertificateSetting,
              Map<String, dynamic>>(
          clientCertificateSettingsValue, (value) => value.toMap());
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final dataStoreSettingsValue = dataStoreSettings;
    if (dataStoreSettingsValue != null) {
      map['dataStoreSettings'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppDataStoreSetting, Map<String, dynamic>>(
          dataStoreSettingsValue, (value) => value.toMap());
    }
    final defaultChannelProfilesValue = defaultChannelProfiles;
    if (defaultChannelProfilesValue != null) {
      map['defaultChannelProfiles'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppDefaultChannelProfile, Map<String, dynamic>>(
          defaultChannelProfilesValue, (value) => value.toMap());
    }
    final deploymentCountValue = deploymentCount;
    if (deploymentCountValue != null) {
      map['deploymentCount'] = deploymentCountValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final evaluationMetricsThresholdsValue = evaluationMetricsThresholds;
    if (evaluationMetricsThresholdsValue != null) {
      map['evaluationMetricsThresholds'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppEvaluationMetricsThreshold,
              Map<String, dynamic>>(
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
      map['languageSettings'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppLanguageSetting, Map<String, dynamic>>(
          languageSettingsValue, (value) => value.toMap());
    }
    final loggingSettingsValue = loggingSettings;
    if (loggingSettingsValue != null) {
      map['loggingSettings'] = pulumi.Input.encodeList<
          AppVersionSnapshotAppLoggingSetting,
          Map<String, dynamic>>(loggingSettingsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final modelSettingsValue = modelSettings;
    if (modelSettingsValue != null) {
      map['modelSettings'] = pulumi.Input.encodeList<
          AppVersionSnapshotAppModelSetting,
          Map<String, dynamic>>(modelSettingsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final rootAgentValue = rootAgent;
    if (rootAgentValue != null) {
      map['rootAgent'] = rootAgentValue;
    }
    final timeZoneSettingsValue = timeZoneSettings;
    if (timeZoneSettingsValue != null) {
      map['timeZoneSettings'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppTimeZoneSetting, Map<String, dynamic>>(
          timeZoneSettingsValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final variableDeclarationsValue = variableDeclarations;
    if (variableDeclarationsValue != null) {
      map['variableDeclarations'] = pulumi.Input.encodeList<
              AppVersionSnapshotAppVariableDeclaration, Map<String, dynamic>>(
          variableDeclarationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotApp.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotApp(
      audioProcessingConfigs: map['audioProcessingConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppAudioProcessingConfig>(
              map['audioProcessingConfigs'],
              (value) => AppVersionSnapshotAppAudioProcessingConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientCertificateSettings: map['clientCertificateSettings'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotAppClientCertificateSetting>(
              map['clientCertificateSettings'],
              (value) => AppVersionSnapshotAppClientCertificateSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      dataStoreSettings: map['dataStoreSettings'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppDataStoreSetting>(
              map['dataStoreSettings'],
              (value) => AppVersionSnapshotAppDataStoreSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      defaultChannelProfiles: map['defaultChannelProfiles'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppDefaultChannelProfile>(
              map['defaultChannelProfiles'],
              (value) => AppVersionSnapshotAppDefaultChannelProfile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deploymentCount:
          map['deploymentCount'] == null ? null : map['deploymentCount'] as int,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      evaluationMetricsThresholds: map['evaluationMetricsThresholds'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotAppEvaluationMetricsThreshold>(
              map['evaluationMetricsThresholds'],
              (value) =>
                  AppVersionSnapshotAppEvaluationMetricsThreshold.fromMap(
                      (value as Map).cast<String, dynamic>())),
      globalInstruction: map['globalInstruction'] == null
          ? null
          : map['globalInstruction'] as String,
      guardrails: map['guardrails'] == null
          ? null
          : (map['guardrails'] as List).cast<String>(),
      languageSettings: map['languageSettings'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppLanguageSetting>(
              map['languageSettings'],
              (value) => AppVersionSnapshotAppLanguageSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loggingSettings: map['loggingSettings'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSetting>(
              map['loggingSettings'],
              (value) => AppVersionSnapshotAppLoggingSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      modelSettings: map['modelSettings'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppModelSetting>(
              map['modelSettings'],
              (value) => AppVersionSnapshotAppModelSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      rootAgent: map['rootAgent'] == null ? null : map['rootAgent'] as String,
      timeZoneSettings: map['timeZoneSettings'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppTimeZoneSetting>(
              map['timeZoneSettings'],
              (value) => AppVersionSnapshotAppTimeZoneSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      variableDeclarations: map['variableDeclarations'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAppVariableDeclaration>(
              map['variableDeclarations'],
              (value) => AppVersionSnapshotAppVariableDeclaration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
