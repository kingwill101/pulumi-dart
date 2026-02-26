// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings.dart';
import 'google_cloud_dialogflow_cx_v3_security_settings_insights_export_settings.dart';
import 'security_setting_purge_data_types_item.dart';
import 'security_setting_redaction_scope.dart';
import 'security_setting_redaction_strategy.dart';
import 'security_setting_retention_strategy.dart';

/// The set of arguments for SecuritySetting.
class SecuritySettingArgs {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  final Input<GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings>?
      audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  final Input<String>? deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  final Input<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  final Input<GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings>?
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  final Input<String>? inspectTemplate;
  final Input<String>? location;

  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  final Input<String>? name;
  final Input<String>? project;

  /// List of types of data to remove when retention settings triggers purge.
  final Input<List<SecuritySettingPurgeDataTypesItem>>? purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  final Input<SecuritySettingRedactionScope>? redactionScope;

  /// Strategy that defines how we do redaction.
  final Input<SecuritySettingRedactionStrategy>? redactionStrategy;

  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  final Input<SecuritySettingRetentionStrategy>? retentionStrategy;

  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  final Input<int>? retentionWindowDays;

  SecuritySettingArgs({
    this.audioExportSettings,
    this.deidentifyTemplate,
    required this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    this.location,
    this.name,
    this.project,
    this.purgeDataTypes,
    this.redactionScope,
    this.redactionStrategy,
    this.retentionStrategy,
    this.retentionWindowDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioExportSettingsValue = audioExportSettings;
    if (audioExportSettingsValue != null) {
      map['audioExportSettings'] = Input.mapOptionalInputValue<
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
      map['insightsExportSettings'] = Input.mapOptionalInputValue<
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
      map['purgeDataTypes'] = Input.mapOptionalInputValue<
              List<SecuritySettingPurgeDataTypesItem>, List<String>>(
          purgeDataTypesValue,
          (value) =>
              Input.encodeList<SecuritySettingPurgeDataTypesItem, String>(
                  value, (value) => value.value));
    }
    final redactionScopeValue = redactionScope;
    if (redactionScopeValue != null) {
      map['redactionScope'] =
          Input.mapOptionalInputValue<SecuritySettingRedactionScope, String>(
              redactionScopeValue, (value) => value.value);
    }
    final redactionStrategyValue = redactionStrategy;
    if (redactionStrategyValue != null) {
      map['redactionStrategy'] =
          Input.mapOptionalInputValue<SecuritySettingRedactionStrategy, String>(
              redactionStrategyValue, (value) => value.value);
    }
    final retentionStrategyValue = retentionStrategy;
    if (retentionStrategyValue != null) {
      map['retentionStrategy'] =
          Input.mapOptionalInputValue<SecuritySettingRetentionStrategy, String>(
              retentionStrategyValue, (value) => value.value);
    }
    final retentionWindowDaysValue = retentionWindowDays;
    if (retentionWindowDaysValue != null) {
      map['retentionWindowDays'] = retentionWindowDaysValue;
    }
    return map;
  }

  factory SecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return SecuritySettingArgs(
      audioExportSettings: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings>(
          map['audioExportSettings']),
      deidentifyTemplate:
          Input.asOptionalInput<String>(map['deidentifyTemplate']),
      displayName: Input.asInput<String>(map['displayName']),
      insightsExportSettings: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings>(
          map['insightsExportSettings']),
      inspectTemplate: Input.asOptionalInput<String>(map['inspectTemplate']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      purgeDataTypes:
          Input.asOptionalInput<List<SecuritySettingPurgeDataTypesItem>>(
              map['purgeDataTypes']),
      redactionScope: Input.asOptionalInput<SecuritySettingRedactionScope>(
          map['redactionScope']),
      redactionStrategy:
          Input.asOptionalInput<SecuritySettingRedactionStrategy>(
              map['redactionStrategy']),
      retentionStrategy:
          Input.asOptionalInput<SecuritySettingRetentionStrategy>(
              map['retentionStrategy']),
      retentionWindowDays:
          Input.asOptionalInput<int>(map['retentionWindowDays']),
    );
  }
}
