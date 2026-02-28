// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_security_settings_audio_export_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_security_settings_insights_export_settings_response.dart';

/// Result data returned by getSecuritySetting.
class GetSecuritySettingDialogflowV3beta1Result {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  final GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse
      audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  final String deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  final String displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  final GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  final String inspectTemplate;

  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  final String name;

  /// List of types of data to remove when retention settings triggers purge.
  final List<String> purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  final String redactionScope;

  /// Strategy that defines how we do redaction.
  final String redactionStrategy;

  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  final String retentionStrategy;

  /// Retains data in interaction logging for the specified number of days. This does not apply to Cloud logging, which is owned by the user - not Dialogflow. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  final int retentionWindowDays;

  /// Creates a new [GetSecuritySettingDialogflowV3beta1Result].
  /// [audioExportSettings] Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  /// [deidentifyTemplate] [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  /// [displayName] The human-readable name of the security settings, unique within the location.
  /// [insightsExportSettings] Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// [inspectTemplate] [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  /// [name] Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  /// [purgeDataTypes] List of types of data to remove when retention settings triggers purge.
  /// [redactionScope] Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  /// [redactionStrategy] Strategy that defines how we do redaction.
  /// [retentionStrategy] Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  /// [retentionWindowDays] Retains data in interaction logging for the specified number of days. This does not apply to Cloud logging, which is owned by the user - not Dialogflow. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  GetSecuritySettingDialogflowV3beta1Result({
    required this.audioExportSettings,
    required this.deidentifyTemplate,
    required this.displayName,
    required this.insightsExportSettings,
    required this.inspectTemplate,
    required this.name,
    required this.purgeDataTypes,
    required this.redactionScope,
    required this.redactionStrategy,
    required this.retentionStrategy,
    required this.retentionWindowDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioExportSettings'] = audioExportSettings.toMap();
    map['deidentifyTemplate'] = deidentifyTemplate;
    map['displayName'] = displayName;
    map['insightsExportSettings'] = insightsExportSettings.toMap();
    map['inspectTemplate'] = inspectTemplate;
    map['name'] = name;
    map['purgeDataTypes'] = purgeDataTypes;
    map['redactionScope'] = redactionScope;
    map['redactionStrategy'] = redactionStrategy;
    map['retentionStrategy'] = retentionStrategy;
    map['retentionWindowDays'] = retentionWindowDays;
    return map;
  }

  factory GetSecuritySettingDialogflowV3beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetSecuritySettingDialogflowV3beta1Result(
      audioExportSettings:
          GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse
              .fromMap(
                  (map['audioExportSettings'] as Map).cast<String, dynamic>()),
      deidentifyTemplate: map['deidentifyTemplate'] as String,
      displayName: map['displayName'] as String,
      insightsExportSettings:
          GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettingsResponse
              .fromMap((map['insightsExportSettings'] as Map)
                  .cast<String, dynamic>()),
      inspectTemplate: map['inspectTemplate'] as String,
      name: map['name'] as String,
      purgeDataTypes: (map['purgeDataTypes'] as List).cast<String>(),
      redactionScope: map['redactionScope'] as String,
      redactionStrategy: map['redactionStrategy'] as String,
      retentionStrategy: map['retentionStrategy'] as String,
      retentionWindowDays: map['retentionWindowDays'] as int,
    );
  }
}
