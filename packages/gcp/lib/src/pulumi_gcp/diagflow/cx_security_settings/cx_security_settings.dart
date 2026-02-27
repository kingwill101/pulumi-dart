import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_security_settings_audio_export_settings/cx_security_settings_audio_export_settings.dart';
import '../cx_security_settings_insights_export_settings/cx_security_settings_insights_export_settings.dart';
import 'cx_security_settings_args.dart';

/// Represents the settings related to security issues, such as data redaction and data retention. It may take hours for updates on the settings to propagate to all the related components and take effect.
/// Multiple security settings can be configured in each location. Each agent can specify the security settings to apply, and each setting can be applied to multiple agents in the same project and location.
///
///
/// To get more information about SecuritySettings, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.securitySettings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Security Settings Basic
///
///
///
/// ### Dialogflowcx Security Settings Full
///
///
///
///
/// ## Import
///
/// SecuritySettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/securitySettings/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, SecuritySettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxSecuritySettings:CxSecuritySettings default projects/{{project}}/locations/{{location}}/securitySettings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxSecuritySettings:CxSecuritySettings default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxSecuritySettings:CxSecuritySettings default {{location}}/{{name}}
/// ```
class CxSecuritySettings extends pulumi.CustomResource {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
  /// If retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.
  /// If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
  /// This setting won't effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent).
  /// Structure is documented below.
  late final pulumi.Output<CxSecuritySettingsAudioExportSettings?>
      audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/deidentifyTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/deidentifyTemplates/<Template ID>
  late final pulumi.Output<String?> deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  late final pulumi.Output<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed.
  /// If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// Structure is documented below.
  late final pulumi.Output<CxSecuritySettingsInsightsExportSettings?>
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// Note: inspectTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/inspectTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/inspectTemplates/<Template ID>
  late final pulumi.Output<String?> inspectTemplate;

  /// The location these settings are located in. Settings can only be applied to an agent in the same location.
  /// See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The unique identifier of the settings.
  /// Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// List of types of data to remove when retention settings triggers purge.
  /// Each value may be one of: `DIALOGFLOW_HISTORY`.
  late final pulumi.Output<List<String>?> purgeDataTypes;

  /// Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
  /// * REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk.
  /// Possible values are: `REDACT_DISK_STORAGE`.
  late final pulumi.Output<String?> redactionScope;

  /// Defines how we redact data. If not set, defaults to not redacting.
  /// * REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted.
  /// Possible values are: `REDACT_WITH_SERVICE`.
  late final pulumi.Output<String?> redactionStrategy;

  /// Defines how long we retain persisted data that contains sensitive info. Only one of `retention_window_days` and `retention_strategy` may be set.
  /// * REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends.
  /// Possible values are: `REMOVE_AFTER_CONVERSATION`.
  late final pulumi.Output<String?> retentionStrategy;

  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  /// Only one of `retention_window_days` and `retention_strategy` may be set.
  late final pulumi.Output<int?> retentionWindowDays;

  CxSecuritySettings(
    String name, {
    CxSecuritySettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxSecuritySettings:CxSecuritySettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.audioExportSettings =
        registerOutput<CxSecuritySettingsAudioExportSettings?>(
            'audioExportSettings');
    this.deidentifyTemplate = registerOutput<String?>('deidentifyTemplate');
    this.displayName = registerOutput<String>('displayName');
    this.insightsExportSettings =
        registerOutput<CxSecuritySettingsInsightsExportSettings?>(
            'insightsExportSettings');
    this.inspectTemplate = registerOutput<String?>('inspectTemplate');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.purgeDataTypes = registerOutput<List<String>?>('purgeDataTypes');
    this.redactionScope = registerOutput<String?>('redactionScope');
    this.redactionStrategy = registerOutput<String?>('redactionStrategy');
    this.retentionStrategy = registerOutput<String?>('retentionStrategy');
    this.retentionWindowDays = registerOutput<int?>('retentionWindowDays');
  }
}
