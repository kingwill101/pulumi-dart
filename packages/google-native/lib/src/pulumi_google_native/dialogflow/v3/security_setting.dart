import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_security_settings_insights_export_settings_response.dart';
import 'security_setting_args.dart';

/// Create security settings in the specified location.
class SecuritySetting extends CustomResource {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  late final Output<
          GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse>
      audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  late final Output<String> deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  late final Output<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  late final Output<
          GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettingsResponse>
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  late final Output<String> inspectTemplate;
  late final Output<String> location;

  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  late final Output<String> name;
  late final Output<String> project;

  /// List of types of data to remove when retention settings triggers purge.
  late final Output<List<String>> purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  late final Output<String> redactionScope;

  /// Strategy that defines how we do redaction.
  late final Output<String> redactionStrategy;

  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  late final Output<String> retentionStrategy;

  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  late final Output<int> retentionWindowDays;

  SecuritySetting(
    String name, {
    SecuritySettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:SecuritySetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.audioExportSettings = registerOutput<
            GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse>(
        'audioExportSettings');
    this.deidentifyTemplate = registerOutput<String>('deidentifyTemplate');
    this.displayName = registerOutput<String>('displayName');
    this.insightsExportSettings = registerOutput<
            GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettingsResponse>(
        'insightsExportSettings');
    this.inspectTemplate = registerOutput<String>('inspectTemplate');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.purgeDataTypes = registerOutput<List<String>>('purgeDataTypes');
    this.redactionScope = registerOutput<String>('redactionScope');
    this.redactionStrategy = registerOutput<String>('redactionStrategy');
    this.retentionStrategy = registerOutput<String>('retentionStrategy');
    this.retentionWindowDays = registerOutput<int>('retentionWindowDays');
  }
}
