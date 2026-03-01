// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_security_settings_audio_export_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_security_settings_insights_export_settings.dart';
import 'security_setting_purge_data_types_item_dialogflow_v3beta1.dart';
import 'security_setting_redaction_scope_dialogflow_v3beta1.dart';
import 'security_setting_redaction_strategy_dialogflow_v3beta1.dart';
import 'security_setting_retention_strategy_dialogflow_v3beta1.dart';

/// {@template pulumi_dialogflow_v3beta1_security_setting_dialogflow_v3beta1_args_doc}
/// The set of arguments for SecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_security_setting_dialogflow_v3beta1_args_doc}
class SecuritySettingDialogflowV3beta1Args {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings
  >?
  audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.
  final pulumi.Input<String>? deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  final pulumi.Input<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings
  >?
  insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.
  final pulumi.Input<String>? inspectTemplate;
  final pulumi.Input<String>? location;

  /// Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// List of types of data to remove when retention settings triggers purge.
  final pulumi.Input<List<SecuritySettingPurgeDataTypesItemDialogflowV3beta1>>?
  purgeDataTypes;

  /// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
  final pulumi.Input<SecuritySettingRedactionScopeDialogflowV3beta1>?
  redactionScope;

  /// Strategy that defines how we do redaction.
  final pulumi.Input<SecuritySettingRedactionStrategyDialogflowV3beta1>?
  redactionStrategy;

  /// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
  final pulumi.Input<SecuritySettingRetentionStrategyDialogflowV3beta1>?
  retentionStrategy;

  /// Retains data in interaction logging for the specified number of days. This does not apply to Cloud logging, which is owned by the user - not Dialogflow. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  final pulumi.Input<int>? retentionWindowDays;

  /// Creates a new [SecuritySettingDialogflowV3beta1Args].
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
  /// [retentionWindowDays] Retains data in interaction logging for the specified number of days. This does not apply to Cloud logging, which is owned by the user - not Dialogflow. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  SecuritySettingDialogflowV3beta1Args({
    GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings?
    audioExportSettings,
    String? deidentifyTemplate,
    required String displayName,
    GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings?
    insightsExportSettings,
    String? inspectTemplate,
    String? location,
    String? name,
    String? project,
    List<SecuritySettingPurgeDataTypesItemDialogflowV3beta1>? purgeDataTypes,
    SecuritySettingRedactionScopeDialogflowV3beta1? redactionScope,
    SecuritySettingRedactionStrategyDialogflowV3beta1? redactionStrategy,
    SecuritySettingRetentionStrategyDialogflowV3beta1? retentionStrategy,
    int? retentionWindowDays,
  }) : audioExportSettings =
           pulumi.Input.asOptionalInput<
             GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings
           >(audioExportSettings),
       deidentifyTemplate = pulumi.Input.asOptionalInput<String>(
         deidentifyTemplate,
       ),
       displayName = pulumi.Input.asInput<String>(displayName),
       insightsExportSettings =
           pulumi.Input.asOptionalInput<
             GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings
           >(insightsExportSettings),
       inspectTemplate = pulumi.Input.asOptionalInput<String>(inspectTemplate),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       purgeDataTypes =
           pulumi.Input.asOptionalInput<
             List<SecuritySettingPurgeDataTypesItemDialogflowV3beta1>
           >(purgeDataTypes),
       redactionScope =
           pulumi.Input.asOptionalInput<
             SecuritySettingRedactionScopeDialogflowV3beta1
           >(redactionScope),
       redactionStrategy =
           pulumi.Input.asOptionalInput<
             SecuritySettingRedactionStrategyDialogflowV3beta1
           >(redactionStrategy),
       retentionStrategy =
           pulumi.Input.asOptionalInput<
             SecuritySettingRetentionStrategyDialogflowV3beta1
           >(retentionStrategy),
       retentionWindowDays = pulumi.Input.asOptionalInput<int>(
         retentionWindowDays,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportSettings':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings,
            Map<String, dynamic>
          >(audioExportSettings, (value) => value.toMap()),
      'deidentifyTemplate': ?deidentifyTemplate,
      'displayName': displayName,
      'insightsExportSettings':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings,
            Map<String, dynamic>
          >(insightsExportSettings, (value) => value.toMap()),
      'inspectTemplate': ?inspectTemplate,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'purgeDataTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecuritySettingPurgeDataTypesItemDialogflowV3beta1>,
            List<String>
          >(
            purgeDataTypes,
            (value) =>
                pulumi.Input.encodeList<
                  SecuritySettingPurgeDataTypesItemDialogflowV3beta1,
                  String
                >(value, (value) => value.value),
          ),
      'redactionScope':
          ?pulumi.Input.mapOptionalInputValue<
            SecuritySettingRedactionScopeDialogflowV3beta1,
            String
          >(redactionScope, (value) => value.value),
      'redactionStrategy':
          ?pulumi.Input.mapOptionalInputValue<
            SecuritySettingRedactionStrategyDialogflowV3beta1,
            String
          >(redactionStrategy, (value) => value.value),
      'retentionStrategy':
          ?pulumi.Input.mapOptionalInputValue<
            SecuritySettingRetentionStrategyDialogflowV3beta1,
            String
          >(retentionStrategy, (value) => value.value),
      'retentionWindowDays': ?retentionWindowDays,
    };
  }

  factory SecuritySettingDialogflowV3beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecuritySettingDialogflowV3beta1Args(
      audioExportSettings: map['audioExportSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings.fromMap(
              (map['audioExportSettings'] as Map).cast<String, dynamic>(),
            ),
      deidentifyTemplate: map['deidentifyTemplate'] == null
          ? null
          : map['deidentifyTemplate'] as String,
      displayName: map['displayName'] as String,
      insightsExportSettings: map['insightsExportSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings.fromMap(
              (map['insightsExportSettings'] as Map).cast<String, dynamic>(),
            ),
      inspectTemplate: map['inspectTemplate'] == null
          ? null
          : map['inspectTemplate'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      purgeDataTypes: map['purgeDataTypes'] == null
          ? null
          : pulumi.Input.decodeList<
              SecuritySettingPurgeDataTypesItemDialogflowV3beta1
            >(
              map['purgeDataTypes'],
              (value) =>
                  SecuritySettingPurgeDataTypesItemDialogflowV3beta1.fromValue(
                    value as String,
                  ),
            ),
      redactionScope: map['redactionScope'] == null
          ? null
          : SecuritySettingRedactionScopeDialogflowV3beta1.fromValue(
              map['redactionScope'] as String,
            ),
      redactionStrategy: map['redactionStrategy'] == null
          ? null
          : SecuritySettingRedactionStrategyDialogflowV3beta1.fromValue(
              map['redactionStrategy'] as String,
            ),
      retentionStrategy: map['retentionStrategy'] == null
          ? null
          : SecuritySettingRetentionStrategyDialogflowV3beta1.fromValue(
              map['retentionStrategy'] as String,
            ),
      retentionWindowDays: map['retentionWindowDays'] == null
          ? null
          : map['retentionWindowDays'] as int,
    );
  }
}
