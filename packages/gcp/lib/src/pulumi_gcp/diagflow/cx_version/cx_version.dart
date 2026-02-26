import 'package:pulumi/pulumi.dart';
import '../cx_version_nlu_setting/cx_version_nlu_setting.dart';
import 'cx_version_args.dart';

/// You can create multiple versions of your agent flows and deploy them to separate serving environments.
/// When you edit a flow, you are editing a draft flow. At any point, you can save a draft flow as a flow version. A flow version is an immutable snapshot of your flow data and associated agent data like intents, entities, webhooks, pages, route groups, etc.
///
///
/// To get more information about Version, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Version Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
/// displayName: "dialogflowcx-agent",
/// location: "global",
/// defaultLanguageCode: "en",
/// supportedLanguageCodes: [
/// "fr",
/// "de",
/// "es",
/// ],
/// timeZone: "America/New_York",
/// description: "Example description.",
/// avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
/// enableStackdriverLogging: true,
/// enableSpellCorrection: true,
/// speechToTextSettings: {
/// enableSpeechAdaptation: true,
/// },
/// });
/// const version1 = new gcp.diagflow.CxVersion("version_1", {
/// parent: agent.startFlow,
/// displayName: "1.0.0",
/// description: "version 1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
/// display_name="dialogflowcx-agent",
/// location="global",
/// default_language_code="en",
/// supported_language_codes=[
/// "fr",
/// "de",
/// "es",
/// ],
/// time_zone="America/New_York",
/// description="Example description.",
/// avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
/// enable_stackdriver_logging=True,
/// enable_spell_correction=True,
/// speech_to_text_settings={
/// "enable_speech_adaptation": True,
/// })
/// version1 = gcp.diagflow.CxVersion("version_1",
/// parent=agent.start_flow,
/// display_name="1.0.0",
/// description="version 1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var agent = new Gcp.Diagflow.CxAgent("agent", new()
/// {
/// DisplayName = "dialogflowcx-agent",
/// Location = "global",
/// DefaultLanguageCode = "en",
/// SupportedLanguageCodes = new[]
/// {
/// "fr",
/// "de",
/// "es",
/// },
/// TimeZone = "America/New_York",
/// Description = "Example description.",
/// AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
/// EnableStackdriverLogging = true,
/// EnableSpellCorrection = true,
/// SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
/// {
/// EnableSpeechAdaptation = true,
/// },
/// });
///
/// var version1 = new Gcp.Diagflow.CxVersion("version_1", new()
/// {
/// Parent = agent.StartFlow,
/// DisplayName = "1.0.0",
/// Description = "version 1.0.0",
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
/// agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// DisplayName:         pulumi.String("dialogflowcx-agent"),
/// Location:            pulumi.String("global"),
/// DefaultLanguageCode: pulumi.String("en"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("fr"),
/// pulumi.String("de"),
/// pulumi.String("es"),
/// },
/// TimeZone:                 pulumi.String("America/New_York"),
/// Description:              pulumi.String("Example description."),
/// AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// EnableStackdriverLogging: pulumi.Bool(true),
/// EnableSpellCorrection:    pulumi.Bool(true),
/// SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// EnableSpeechAdaptation: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = diagflow.NewCxVersion(ctx, "version_1", &diagflow.CxVersionArgs{
/// Parent:      agent.StartFlow,
/// DisplayName: pulumi.String("1.0.0"),
/// Description: pulumi.String("version 1.0.0"),
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxVersion;
/// import com.pulumi.gcp.diagflow.CxVersionArgs;
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
/// var agent = new CxAgent("agent", CxAgentArgs.builder()
/// .displayName("dialogflowcx-agent")
/// .location("global")
/// .defaultLanguageCode("en")
/// .supportedLanguageCodes(
/// "fr",
/// "de",
/// "es")
/// .timeZone("America/New_York")
/// .description("Example description.")
/// .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
/// .enableStackdriverLogging(true)
/// .enableSpellCorrection(true)
/// .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
/// .enableSpeechAdaptation(true)
/// .build())
/// .build());
///
/// var version1 = new CxVersion("version1", CxVersionArgs.builder()
/// .parent(agent.startFlow())
/// .displayName("1.0.0")
/// .description("version 1.0.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// agent:
/// type: gcp:diagflow:CxAgent
/// properties:
/// displayName: dialogflowcx-agent
/// location: global
/// defaultLanguageCode: en
/// supportedLanguageCodes:
/// - fr
/// - de
/// - es
/// timeZone: America/New_York
/// description: Example description.
/// avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
/// enableStackdriverLogging: true
/// enableSpellCorrection: true
/// speechToTextSettings:
/// enableSpeechAdaptation: true
/// version1:
/// type: gcp:diagflow:CxVersion
/// name: version_1
/// properties:
/// parent: ${agent.startFlow}
/// displayName: 1.0.0
/// description: version 1.0.0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Version can be imported using any of these accepted formats:
///
/// * `{{parent}}/versions/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Version can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxVersion:CxVersion default {{parent}}/versions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxVersion:CxVersion default {{parent}}/{{name}}
/// ```
class CxVersion extends CustomResource {
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final Output<String?> description;

  /// The human-readable name of the version. Limit of 64 characters.
  late final Output<String> displayName;

  /// Format: projects//locations//agents//flows//versions/. Version ID is a self-increasing number generated by Dialogflow upon version creation.
  late final Output<String> name;

  /// The NLU settings of the flow at version creation.
  /// Structure is documented below.
  late final Output<List<CxVersionNluSetting>> nluSettings;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final Output<String?> parent;

  /// The state of this version.
  /// * RUNNING: Version is not ready to serve (e.g. training is running).
  /// * SUCCEEDED: Training has succeeded and this version is ready to serve.
  /// * FAILED: Version training failed.
  late final Output<String> state;

  CxVersion(
    String name, {
    CxVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxVersion:CxVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.nluSettings = registerOutput<List<CxVersionNluSetting>>('nluSettings');
    this.parent = registerOutput<String?>('parent');
    this.state = registerOutput<String>('state');
  }
}
