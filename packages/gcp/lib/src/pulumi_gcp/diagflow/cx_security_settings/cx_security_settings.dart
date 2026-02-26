import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicSecuritySettings = new gcp.diagflow.CxSecuritySettings("basic_security_settings", {
/// displayName: "dialogflowcx-security-settings",
/// location: "global",
/// purgeDataTypes: [],
/// retentionWindowDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_security_settings = gcp.diagflow.CxSecuritySettings("basic_security_settings",
/// display_name="dialogflowcx-security-settings",
/// location="global",
/// purge_data_types=[],
/// retention_window_days=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basicSecuritySettings = new Gcp.Diagflow.CxSecuritySettings("basic_security_settings", new()
/// {
/// DisplayName = "dialogflowcx-security-settings",
/// Location = "global",
/// PurgeDataTypes = new[] {},
/// RetentionWindowDays = 7,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := diagflow.NewCxSecuritySettings(ctx, "basic_security_settings", &diagflow.CxSecuritySettingsArgs{
/// DisplayName:         pulumi.String("dialogflowcx-security-settings"),
/// Location:            pulumi.String("global"),
/// PurgeDataTypes:      pulumi.StringArray{},
/// RetentionWindowDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxSecuritySettings;
/// import com.pulumi.gcp.diagflow.CxSecuritySettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var basicSecuritySettings = new CxSecuritySettings("basicSecuritySettings", CxSecuritySettingsArgs.builder()
/// .displayName("dialogflowcx-security-settings")
/// .location("global")
/// .purgeDataTypes()
/// .retentionWindowDays(7)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basicSecuritySettings:
/// type: gcp:diagflow:CxSecuritySettings
/// name: basic_security_settings
/// properties:
/// displayName: dialogflowcx-security-settings
/// location: global
/// purgeDataTypes: []
/// retentionWindowDays: 7
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dialogflowcx Security Settings Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const inspect = new gcp.dataloss.PreventionInspectTemplate("inspect", {
/// parent: "projects/my-project-name/locations/global",
/// displayName: "dialogflowcx-inspect-template",
/// inspectConfig: {
/// infoTypes: [{
/// name: "EMAIL_ADDRESS",
/// }],
/// },
/// });
/// const deidentify = new gcp.dataloss.PreventionDeidentifyTemplate("deidentify", {
/// parent: "projects/my-project-name/locations/global",
/// displayName: "dialogflowcx-deidentify-template",
/// deidentifyConfig: {
/// infoTypeTransformations: {
/// transformations: [{
/// primitiveTransformation: {
/// replaceConfig: {
/// newValue: {
/// stringValue: "[REDACTED]",
/// },
/// },
/// },
/// }],
/// },
/// },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "dialogflowcx-bucket",
/// location: "US",
/// uniformBucketLevelAccess: true,
/// });
/// const basicSecuritySettings = new gcp.diagflow.CxSecuritySettings("basic_security_settings", {
/// displayName: "dialogflowcx-security-settings",
/// location: "global",
/// redactionStrategy: "REDACT_WITH_SERVICE",
/// redactionScope: "REDACT_DISK_STORAGE",
/// inspectTemplate: inspect.id,
/// deidentifyTemplate: deidentify.id,
/// purgeDataTypes: ["DIALOGFLOW_HISTORY"],
/// audioExportSettings: {
/// gcsBucket: bucket.id,
/// audioExportPattern: "export",
/// enableAudioRedaction: true,
/// audioFormat: "OGG",
/// },
/// insightsExportSettings: {
/// enableInsightsExport: true,
/// },
/// retentionStrategy: "REMOVE_AFTER_CONVERSATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// inspect = gcp.dataloss.PreventionInspectTemplate("inspect",
/// parent="projects/my-project-name/locations/global",
/// display_name="dialogflowcx-inspect-template",
/// inspect_config={
/// "info_types": [{
/// "name": "EMAIL_ADDRESS",
/// }],
/// })
/// deidentify = gcp.dataloss.PreventionDeidentifyTemplate("deidentify",
/// parent="projects/my-project-name/locations/global",
/// display_name="dialogflowcx-deidentify-template",
/// deidentify_config={
/// "info_type_transformations": {
/// "transformations": [{
/// "primitive_transformation": {
/// "replace_config": {
/// "new_value": {
/// "string_value": "[REDACTED]",
/// },
/// },
/// },
/// }],
/// },
/// })
/// bucket = gcp.storage.Bucket("bucket",
/// name="dialogflowcx-bucket",
/// location="US",
/// uniform_bucket_level_access=True)
/// basic_security_settings = gcp.diagflow.CxSecuritySettings("basic_security_settings",
/// display_name="dialogflowcx-security-settings",
/// location="global",
/// redaction_strategy="REDACT_WITH_SERVICE",
/// redaction_scope="REDACT_DISK_STORAGE",
/// inspect_template=inspect.id,
/// deidentify_template=deidentify.id,
/// purge_data_types=["DIALOGFLOW_HISTORY"],
/// audio_export_settings={
/// "gcs_bucket": bucket.id,
/// "audio_export_pattern": "export",
/// "enable_audio_redaction": True,
/// "audio_format": "OGG",
/// },
/// insights_export_settings={
/// "enable_insights_export": True,
/// },
/// retention_strategy="REMOVE_AFTER_CONVERSATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var inspect = new Gcp.DataLoss.PreventionInspectTemplate("inspect", new()
/// {
/// Parent = "projects/my-project-name/locations/global",
/// DisplayName = "dialogflowcx-inspect-template",
/// InspectConfig = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigArgs
/// {
/// InfoTypes = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
/// {
/// Name = "EMAIL_ADDRESS",
/// },
/// },
/// },
/// });
///
/// var deidentify = new Gcp.DataLoss.PreventionDeidentifyTemplate("deidentify", new()
/// {
/// Parent = "projects/my-project-name/locations/global",
/// DisplayName = "dialogflowcx-deidentify-template",
/// DeidentifyConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigArgs
/// {
/// InfoTypeTransformations = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs
/// {
/// Transformations = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs
/// {
/// PrimitiveTransformation = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs
/// {
/// ReplaceConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs
/// {
/// NewValue = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs
/// {
/// StringValue = "[REDACTED]",
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "dialogflowcx-bucket",
/// Location = "US",
/// UniformBucketLevelAccess = true,
/// });
///
/// var basicSecuritySettings = new Gcp.Diagflow.CxSecuritySettings("basic_security_settings", new()
/// {
/// DisplayName = "dialogflowcx-security-settings",
/// Location = "global",
/// RedactionStrategy = "REDACT_WITH_SERVICE",
/// RedactionScope = "REDACT_DISK_STORAGE",
/// InspectTemplate = inspect.Id,
/// DeidentifyTemplate = deidentify.Id,
/// PurgeDataTypes = new[]
/// {
/// "DIALOGFLOW_HISTORY",
/// },
/// AudioExportSettings = new Gcp.Diagflow.Inputs.CxSecuritySettingsAudioExportSettingsArgs
/// {
/// GcsBucket = bucket.Id,
/// AudioExportPattern = "export",
/// EnableAudioRedaction = true,
/// AudioFormat = "OGG",
/// },
/// InsightsExportSettings = new Gcp.Diagflow.Inputs.CxSecuritySettingsInsightsExportSettingsArgs
/// {
/// EnableInsightsExport = true,
/// },
/// RetentionStrategy = "REMOVE_AFTER_CONVERSATION",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// inspect, err := dataloss.NewPreventionInspectTemplate(ctx, "inspect", &dataloss.PreventionInspectTemplateArgs{
/// Parent:      pulumi.String("projects/my-project-name/locations/global"),
/// DisplayName: pulumi.String("dialogflowcx-inspect-template"),
/// InspectConfig: &dataloss.PreventionInspectTemplateInspectConfigArgs{
/// InfoTypes: dataloss.PreventionInspectTemplateInspectConfigInfoTypeArray{
/// &dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// Name: pulumi.String("EMAIL_ADDRESS"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// deidentify, err := dataloss.NewPreventionDeidentifyTemplate(ctx, "deidentify", &dataloss.PreventionDeidentifyTemplateArgs{
/// Parent:      pulumi.String("projects/my-project-name/locations/global"),
/// DisplayName: pulumi.String("dialogflowcx-deidentify-template"),
/// DeidentifyConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigArgs{
/// InfoTypeTransformations: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs{
/// Transformations: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArray{
/// &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs{
/// PrimitiveTransformation: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs{
/// ReplaceConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs{
/// NewValue: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs{
/// StringValue: pulumi.String("[REDACTED]"),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("dialogflowcx-bucket"),
/// Location:                 pulumi.String("US"),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = diagflow.NewCxSecuritySettings(ctx, "basic_security_settings", &diagflow.CxSecuritySettingsArgs{
/// DisplayName:        pulumi.String("dialogflowcx-security-settings"),
/// Location:           pulumi.String("global"),
/// RedactionStrategy:  pulumi.String("REDACT_WITH_SERVICE"),
/// RedactionScope:     pulumi.String("REDACT_DISK_STORAGE"),
/// InspectTemplate:    inspect.ID(),
/// DeidentifyTemplate: deidentify.ID(),
/// PurgeDataTypes: pulumi.StringArray{
/// pulumi.String("DIALOGFLOW_HISTORY"),
/// },
/// AudioExportSettings: &diagflow.CxSecuritySettingsAudioExportSettingsArgs{
/// GcsBucket:            bucket.ID(),
/// AudioExportPattern:   pulumi.String("export"),
/// EnableAudioRedaction: pulumi.Bool(true),
/// AudioFormat:          pulumi.String("OGG"),
/// },
/// InsightsExportSettings: &diagflow.CxSecuritySettingsInsightsExportSettingsArgs{
/// EnableInsightsExport: pulumi.Bool(true),
/// },
/// RetentionStrategy: pulumi.String("REMOVE_AFTER_CONVERSATION"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplate;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.PreventionDeidentifyTemplate;
/// import com.pulumi.gcp.dataloss.PreventionDeidentifyTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionDeidentifyTemplateDeidentifyConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.diagflow.CxSecuritySettings;
/// import com.pulumi.gcp.diagflow.CxSecuritySettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxSecuritySettingsAudioExportSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxSecuritySettingsInsightsExportSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var inspect = new PreventionInspectTemplate("inspect", PreventionInspectTemplateArgs.builder()
/// .parent("projects/my-project-name/locations/global")
/// .displayName("dialogflowcx-inspect-template")
/// .inspectConfig(PreventionInspectTemplateInspectConfigArgs.builder()
/// .infoTypes(PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
/// .name("EMAIL_ADDRESS")
/// .build())
/// .build())
/// .build());
///
/// var deidentify = new PreventionDeidentifyTemplate("deidentify", PreventionDeidentifyTemplateArgs.builder()
/// .parent("projects/my-project-name/locations/global")
/// .displayName("dialogflowcx-deidentify-template")
/// .deidentifyConfig(PreventionDeidentifyTemplateDeidentifyConfigArgs.builder()
/// .infoTypeTransformations(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs.builder()
/// .transformations(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs.builder()
/// .primitiveTransformation(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs.builder()
/// .replaceConfig(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs.builder()
/// .newValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs.builder()
/// .stringValue("[REDACTED]")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("dialogflowcx-bucket")
/// .location("US")
/// .uniformBucketLevelAccess(true)
/// .build());
///
/// var basicSecuritySettings = new CxSecuritySettings("basicSecuritySettings", CxSecuritySettingsArgs.builder()
/// .displayName("dialogflowcx-security-settings")
/// .location("global")
/// .redactionStrategy("REDACT_WITH_SERVICE")
/// .redactionScope("REDACT_DISK_STORAGE")
/// .inspectTemplate(inspect.id())
/// .deidentifyTemplate(deidentify.id())
/// .purgeDataTypes("DIALOGFLOW_HISTORY")
/// .audioExportSettings(CxSecuritySettingsAudioExportSettingsArgs.builder()
/// .gcsBucket(bucket.id())
/// .audioExportPattern("export")
/// .enableAudioRedaction(true)
/// .audioFormat("OGG")
/// .build())
/// .insightsExportSettings(CxSecuritySettingsInsightsExportSettingsArgs.builder()
/// .enableInsightsExport(true)
/// .build())
/// .retentionStrategy("REMOVE_AFTER_CONVERSATION")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// inspect:
/// type: gcp:dataloss:PreventionInspectTemplate
/// properties:
/// parent: projects/my-project-name/locations/global
/// displayName: dialogflowcx-inspect-template
/// inspectConfig:
/// infoTypes:
/// - name: EMAIL_ADDRESS
/// deidentify:
/// type: gcp:dataloss:PreventionDeidentifyTemplate
/// properties:
/// parent: projects/my-project-name/locations/global
/// displayName: dialogflowcx-deidentify-template
/// deidentifyConfig:
/// infoTypeTransformations:
/// transformations:
/// - primitiveTransformation:
/// replaceConfig:
/// newValue:
/// stringValue: '[REDACTED]'
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: dialogflowcx-bucket
/// location: US
/// uniformBucketLevelAccess: true
/// basicSecuritySettings:
/// type: gcp:diagflow:CxSecuritySettings
/// name: basic_security_settings
/// properties:
/// displayName: dialogflowcx-security-settings
/// location: global
/// redactionStrategy: REDACT_WITH_SERVICE
/// redactionScope: REDACT_DISK_STORAGE
/// inspectTemplate: ${inspect.id}
/// deidentifyTemplate: ${deidentify.id}
/// purgeDataTypes:
/// - DIALOGFLOW_HISTORY
/// audioExportSettings:
/// gcsBucket: ${bucket.id}
/// audioExportPattern: export
/// enableAudioRedaction: true
/// audioFormat: OGG
/// insightsExportSettings:
/// enableInsightsExport: true
/// retentionStrategy: REMOVE_AFTER_CONVERSATION
/// ```
/// <!--End PulumiCodeChooser -->
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
class CxSecuritySettings extends CustomResource {
  /// Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
  /// If<span pulumi-lang-nodejs=" retentionStrategy " pulumi-lang-dotnet=" RetentionStrategy " pulumi-lang-go=" retentionStrategy " pulumi-lang-python=" retention_strategy " pulumi-lang-yaml=" retentionStrategy " pulumi-lang-java=" retentionStrategy "> retention_strategy </span>is set to REMOVE_AFTER_CONVERSATION or<span pulumi-lang-nodejs=" gcsBucket " pulumi-lang-dotnet=" GcsBucket " pulumi-lang-go=" gcsBucket " pulumi-lang-python=" gcs_bucket " pulumi-lang-yaml=" gcsBucket " pulumi-lang-java=" gcsBucket "> gcs_bucket </span>is empty, audio export is disabled.
  /// If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
  /// This setting won't effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent).
  /// Structure is documented below.
  late final Output<CxSecuritySettingsAudioExportSettings?> audioExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
  /// Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/deidentifyTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/deidentifyTemplates/<Template ID>
  late final Output<String?> deidentifyTemplate;

  /// The human-readable name of the security settings, unique within the location.
  late final Output<String> displayName;

  /// Controls conversation exporting settings to Insights after conversation is completed.
  /// If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.
  /// Structure is documented below.
  late final Output<CxSecuritySettingsInsightsExportSettings?>
      insightsExportSettings;

  /// [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
  /// Note: inspectTemplate must be located in the same region as the SecuritySettings.
  /// Format: projects/<Project ID>/locations/<Location ID>/inspectTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/inspectTemplates/<Template ID>
  late final Output<String?> inspectTemplate;

  /// The location these settings are located in. Settings can only be applied to an agent in the same location.
  /// See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations.
  late final Output<String> location;

  /// The unique identifier of the settings.
  /// Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// List of types of data to remove when retention settings triggers purge.
  /// Each value may be one of: `DIALOGFLOW_HISTORY`.
  late final Output<List<String>?> purgeDataTypes;

  /// Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
  /// * REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk.
  /// Possible values are: `REDACT_DISK_STORAGE`.
  late final Output<String?> redactionScope;

  /// Defines how we redact data. If not set, defaults to not redacting.
  /// * REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted.
  /// Possible values are: `REDACT_WITH_SERVICE`.
  late final Output<String?> redactionStrategy;

  /// Defines how long we retain persisted data that contains sensitive info. Only one of <span pulumi-lang-nodejs="`retentionWindowDays`" pulumi-lang-dotnet="`RetentionWindowDays`" pulumi-lang-go="`retentionWindowDays`" pulumi-lang-python="`retention_window_days`" pulumi-lang-yaml="`retentionWindowDays`" pulumi-lang-java="`retentionWindowDays`">`retention_window_days`</span> and <span pulumi-lang-nodejs="`retentionStrategy`" pulumi-lang-dotnet="`RetentionStrategy`" pulumi-lang-go="`retentionStrategy`" pulumi-lang-python="`retention_strategy`" pulumi-lang-yaml="`retentionStrategy`" pulumi-lang-java="`retentionStrategy`">`retention_strategy`</span> may be set.
  /// * REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends.
  /// Possible values are: `REMOVE_AFTER_CONVERSATION`.
  late final Output<String?> retentionStrategy;

  /// Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
  /// Only one of <span pulumi-lang-nodejs="`retentionWindowDays`" pulumi-lang-dotnet="`RetentionWindowDays`" pulumi-lang-go="`retentionWindowDays`" pulumi-lang-python="`retention_window_days`" pulumi-lang-yaml="`retentionWindowDays`" pulumi-lang-java="`retentionWindowDays`">`retention_window_days`</span> and <span pulumi-lang-nodejs="`retentionStrategy`" pulumi-lang-dotnet="`RetentionStrategy`" pulumi-lang-go="`retentionStrategy`" pulumi-lang-python="`retention_strategy`" pulumi-lang-yaml="`retentionStrategy`" pulumi-lang-java="`retentionStrategy`">`retention_strategy`</span> may be set.
  late final Output<int?> retentionWindowDays;

  CxSecuritySettings(
    String name, {
    CxSecuritySettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxSecuritySettings:CxSecuritySettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
