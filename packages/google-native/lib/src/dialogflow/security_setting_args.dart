// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings.dart';
import 'google_cloud_dialogflow_cx_v3_security_settings_insights_export_settings.dart';
import 'security_setting_purge_data_types_item.dart';
import 'security_setting_redaction_scope.dart';
import 'security_setting_redaction_strategy.dart';
import 'security_setting_retention_strategy.dart';

/// {@template pulumi_dialogflow_v3_security_setting_args_doc}
/// The set of arguments for SecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_security_setting_args_doc}
class SecuritySettingArgs {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  final pulumi
      .Input<GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings>?
      audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  final pulumi.Input<String>? deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  final pulumi.Input<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  final pulumi
      .Input<GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings>?
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  final pulumi.Input<String>? inspectTemplate;
  final pulumi.Input<String>? location;

  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// List of types of data to remove when retention settings triggers purge.
  final pulumi.Input<List<SecuritySettingPurgeDataTypesItem>>? purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  final pulumi.Input<SecuritySettingRedactionScope>? redactionScope;

  /// Strategy that defines how we do redaction.
  final pulumi.Input<SecuritySettingRedactionStrategy>? redactionStrategy;

  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  final pulumi.Input<SecuritySettingRetentionStrategy>? retentionStrategy;

  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  final pulumi.Input<int>? retentionWindowDays;

  /// Creates a new [SecuritySettingArgs].
  /// [audioExportSettings] Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  /// [displayName] The human-readable name of the security settings, unique within the location.
  /// [insightsExportSettings] Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  /// [location] Optional.
  /// [name] Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  /// [project] Optional.
  /// [purgeDataTypes] List of types of data to remove when retention settings triggers purge.
  /// [redactionScope] Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  /// [redactionStrategy] Strategy that defines how we do redaction.
  /// [retentionStrategy] Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  /// [retentionWindowDays] Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  SecuritySettingArgs({
    GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings?
        audioExportSettings,
    String? deidentifyTemplate,
    required String displayName,
    GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings?
        insightsExportSettings,
    String? inspectTemplate,
    String? location,
    String? name,
    String? project,
    List<SecuritySettingPurgeDataTypesItem>? purgeDataTypes,
    SecuritySettingRedactionScope? redactionScope,
    SecuritySettingRedactionStrategy? redactionStrategy,
    SecuritySettingRetentionStrategy? retentionStrategy,
    int? retentionWindowDays,
  })  : audioExportSettings = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings>(
            audioExportSettings),
        deidentifyTemplate =
            pulumi.Input.asOptionalInput<String>(deidentifyTemplate),
        displayName = pulumi.Input.asInput<String>(displayName),
        insightsExportSettings = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings>(
            insightsExportSettings),
        inspectTemplate = pulumi.Input.asOptionalInput<String>(inspectTemplate),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        purgeDataTypes = pulumi.Input.asOptionalInput<
            List<SecuritySettingPurgeDataTypesItem>>(purgeDataTypes),
        redactionScope =
            pulumi.Input.asOptionalInput<SecuritySettingRedactionScope>(
                redactionScope),
        redactionStrategy =
            pulumi.Input.asOptionalInput<SecuritySettingRedactionStrategy>(
                redactionStrategy),
        retentionStrategy =
            pulumi.Input.asOptionalInput<SecuritySettingRetentionStrategy>(
                retentionStrategy),
        retentionWindowDays =
            pulumi.Input.asOptionalInput<int>(retentionWindowDays);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioExportSettingsValue = audioExportSettings;
    if (audioExportSettingsValue != null) {
      map['audioExportSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings,
              Map<String, dynamic>>(
          audioExportSettingsValue, (value) => value.toMap());
    }
    final deidentifyTemplateValue = deidentifyTemplate;
    if (deidentifyTemplateValue != null) {
      map['deidentifyTemplate'] = deidentifyTemplateValue;
    }
    map['displayName'] = displayName;
    final insightsExportSettingsValue = insightsExportSettings;
    if (insightsExportSettingsValue != null) {
      map['insightsExportSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings,
              Map<String, dynamic>>(
          insightsExportSettingsValue, (value) => value.toMap());
    }
    final inspectTemplateValue = inspectTemplate;
    if (inspectTemplateValue != null) {
      map['inspectTemplate'] = inspectTemplateValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purgeDataTypesValue = purgeDataTypes;
    if (purgeDataTypesValue != null) {
      map['purgeDataTypes'] = pulumi.Input.mapOptionalInputValue<
              List<SecuritySettingPurgeDataTypesItem>, List<String>>(
          purgeDataTypesValue,
          (value) => pulumi.Input.encodeList<SecuritySettingPurgeDataTypesItem,
              String>(value, (value) => value.value));
    }
    final redactionScopeValue = redactionScope;
    if (redactionScopeValue != null) {
      map['redactionScope'] = pulumi.Input.mapOptionalInputValue<
          SecuritySettingRedactionScope,
          String>(redactionScopeValue, (value) => value.value);
    }
    final redactionStrategyValue = redactionStrategy;
    if (redactionStrategyValue != null) {
      map['redactionStrategy'] = pulumi.Input.mapOptionalInputValue<
          SecuritySettingRedactionStrategy,
          String>(redactionStrategyValue, (value) => value.value);
    }
    final retentionStrategyValue = retentionStrategy;
    if (retentionStrategyValue != null) {
      map['retentionStrategy'] = pulumi.Input.mapOptionalInputValue<
          SecuritySettingRetentionStrategy,
          String>(retentionStrategyValue, (value) => value.value);
    }
    final retentionWindowDaysValue = retentionWindowDays;
    if (retentionWindowDaysValue != null) {
      map['retentionWindowDays'] = retentionWindowDaysValue;
    }
    return map;
  }

  factory SecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return SecuritySettingArgs(
      audioExportSettings: map['audioExportSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
              .fromMap(
                  (map['audioExportSettings'] as Map).cast<String, dynamic>()),
      deidentifyTemplate: map['deidentifyTemplate'] == null
          ? null
          : map['deidentifyTemplate'] as String,
      displayName: map['displayName'] as String,
      insightsExportSettings: map['insightsExportSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
              .fromMap((map['insightsExportSettings'] as Map)
                  .cast<String, dynamic>()),
      inspectTemplate: map['inspectTemplate'] == null
          ? null
          : map['inspectTemplate'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      purgeDataTypes: map['purgeDataTypes'] == null
          ? null
          : pulumi.Input.decodeList<SecuritySettingPurgeDataTypesItem>(
              map['purgeDataTypes'],
              (value) =>
                  SecuritySettingPurgeDataTypesItem.fromValue(value as String)),
      redactionScope: map['redactionScope'] == null
          ? null
          : SecuritySettingRedactionScope.fromValue(
              map['redactionScope'] as String),
      redactionStrategy: map['redactionStrategy'] == null
          ? null
          : SecuritySettingRedactionStrategy.fromValue(
              map['redactionStrategy'] as String),
      retentionStrategy: map['retentionStrategy'] == null
          ? null
          : SecuritySettingRetentionStrategy.fromValue(
              map['retentionStrategy'] as String),
      retentionWindowDays: map['retentionWindowDays'] == null
          ? null
          : map['retentionWindowDays'] as int,
    );
  }
}
