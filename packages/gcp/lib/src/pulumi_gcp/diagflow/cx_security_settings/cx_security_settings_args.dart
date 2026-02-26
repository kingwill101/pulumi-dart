// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_security_settings_audio_export_settings/cx_security_settings_audio_export_settings.dart';
import '../cx_security_settings_insights_export_settings/cx_security_settings_insights_export_settings.dart';

/// The set of arguments for CxSecuritySettings.
class CxSecuritySettingsArgs {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
  /// If<span pulumi-lang-nodejs=" retentionStrategy " pulumi-lang-dotnet=" RetentionStrategy " pulumi-lang-go=" retentionStrategy " pulumi-lang-python=" retention_strategy " pulumi-lang-yaml=" retentionStrategy " pulumi-lang-java=" retentionStrategy "> retention_strategy </span>is set to REMOVE_AFTER_CONVERSATION or<span pulumi-lang-nodejs=" gcsBucket " pulumi-lang-dotnet=" GcsBucket " pulumi-lang-go=" gcsBucket " pulumi-lang-python=" gcs_bucket " pulumi-lang-yaml=" gcsBucket " pulumi-lang-java=" gcsBucket "> gcs_bucket </span>is empty, audio export is disabled.
  /// If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
  /// This setting won't effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent).
  /// Structure is documented below.
  final Input<CxSecuritySettingsAudioExportSettings>? audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/deidentifyTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/deidentifyTemplates/<Template ID>
  final Input<String>? deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  final Input<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed.
  /// If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// Structure is documented below.
  final Input<CxSecuritySettingsInsightsExportSettings>? insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// Note: inspectTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/inspectTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/inspectTemplates/<Template ID>
  final Input<String>? inspectTemplate;

  /// The location these settings are located in. Settings can only be applied to an agent in the same location.
  /// See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// List of types of data to remove when retention settings triggers purge.
  /// Each value may be one of: `DIALOGFLOW_HISTORY`.
  final Input<List<String>>? purgeDataTypes;

  /// Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
  /// * REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk.
  /// Possible values are: `REDACT_DISK_STORAGE`.
  final Input<String>? redactionScope;

  /// Defines how we redact data. If not set, defaults to not redacting.
  /// * REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted.
  /// Possible values are: `REDACT_WITH_SERVICE`.
  final Input<String>? redactionStrategy;

  /// Defines how long we retain persisted data that contains sensitive info. Only one of <span pulumi-lang-nodejs="`retentionWindowDays`" pulumi-lang-dotnet="`RetentionWindowDays`" pulumi-lang-go="`retentionWindowDays`" pulumi-lang-python="`retention_window_days`" pulumi-lang-yaml="`retentionWindowDays`" pulumi-lang-java="`retentionWindowDays`">`retention_window_days`</span> and <span pulumi-lang-nodejs="`retentionStrategy`" pulumi-lang-dotnet="`RetentionStrategy`" pulumi-lang-go="`retentionStrategy`" pulumi-lang-python="`retention_strategy`" pulumi-lang-yaml="`retentionStrategy`" pulumi-lang-java="`retentionStrategy`">`retention_strategy`</span> may be set.
  /// * REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends.
  /// Possible values are: `REMOVE_AFTER_CONVERSATION`.
  final Input<String>? retentionStrategy;

  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  /// Only one of <span pulumi-lang-nodejs="`retentionWindowDays`" pulumi-lang-dotnet="`RetentionWindowDays`" pulumi-lang-go="`retentionWindowDays`" pulumi-lang-python="`retention_window_days`" pulumi-lang-yaml="`retentionWindowDays`" pulumi-lang-java="`retentionWindowDays`">`retention_window_days`</span> and <span pulumi-lang-nodejs="`retentionStrategy`" pulumi-lang-dotnet="`RetentionStrategy`" pulumi-lang-go="`retentionStrategy`" pulumi-lang-python="`retention_strategy`" pulumi-lang-yaml="`retentionStrategy`" pulumi-lang-java="`retentionStrategy`">`retention_strategy`</span> may be set.
  final Input<int>? retentionWindowDays;

  CxSecuritySettingsArgs({
    this.audioExportSettings,
    this.deidentifyTemplate,
    required this.displayName,
    this.insightsExportSettings,
    this.inspectTemplate,
    required this.location,
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
              CxSecuritySettingsAudioExportSettings, Map<String, dynamic>>(
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
              CxSecuritySettingsInsightsExportSettings, Map<String, dynamic>>(
          insightsExportSettingsValue, (value) => value.toMap());
    }
    final inspectTemplateValue = inspectTemplate;
    if (inspectTemplateValue != null) {
      map['inspectTemplate'] = inspectTemplateValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purgeDataTypesValue = purgeDataTypes;
    if (purgeDataTypesValue != null) {
      map['purgeDataTypes'] = purgeDataTypesValue;
    }
    final redactionScopeValue = redactionScope;
    if (redactionScopeValue != null) {
      map['redactionScope'] = redactionScopeValue;
    }
    final redactionStrategyValue = redactionStrategy;
    if (redactionStrategyValue != null) {
      map['redactionStrategy'] = redactionStrategyValue;
    }
    final retentionStrategyValue = retentionStrategy;
    if (retentionStrategyValue != null) {
      map['retentionStrategy'] = retentionStrategyValue;
    }
    final retentionWindowDaysValue = retentionWindowDays;
    if (retentionWindowDaysValue != null) {
      map['retentionWindowDays'] = retentionWindowDaysValue;
    }
    return map;
  }

  factory CxSecuritySettingsArgs.fromMap(Map<String, dynamic> map) {
    return CxSecuritySettingsArgs(
      audioExportSettings:
          Input.asOptionalInput<CxSecuritySettingsAudioExportSettings>(
              map['audioExportSettings']),
      deidentifyTemplate:
          Input.asOptionalInput<String>(map['deidentifyTemplate']),
      displayName: Input.asInput<String>(map['displayName']),
      insightsExportSettings:
          Input.asOptionalInput<CxSecuritySettingsInsightsExportSettings>(
              map['insightsExportSettings']),
      inspectTemplate: Input.asOptionalInput<String>(map['inspectTemplate']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      purgeDataTypes:
          Input.asOptionalInput<List<String>>(map['purgeDataTypes']),
      redactionScope: Input.asOptionalInput<String>(map['redactionScope']),
      redactionStrategy:
          Input.asOptionalInput<String>(map['redactionStrategy']),
      retentionStrategy:
          Input.asOptionalInput<String>(map['retentionStrategy']),
      retentionWindowDays:
          Input.asOptionalInput<int>(map['retentionWindowDays']),
    );
  }
}
