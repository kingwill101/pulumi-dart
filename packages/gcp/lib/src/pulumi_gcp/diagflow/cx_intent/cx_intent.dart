import 'package:pulumi/pulumi.dart';
import '../cx_intent_parameter/cx_intent_parameter.dart';
import '../cx_intent_training_phrase/cx_intent_training_phrase.dart';
import 'cx_intent_args.dart';

/// An intent represents a user's intent to interact with a conversational agent.
///
///
/// To get more information about Intent, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Intent Full
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
/// const basicIntent = new gcp.diagflow.CxIntent("basic_intent", {
/// parent: agent.id,
/// displayName: "Example",
/// priority: 1,
/// description: "Intent example",
/// trainingPhrases: [{
/// parts: [
/// {
/// text: "training",
/// },
/// {
/// text: "phrase",
/// },
/// {
/// text: "example",
/// },
/// ],
/// repeatCount: 1,
/// }],
/// parameters: [{
/// id: "param1",
/// entityType: "projects/-/locations/-/agents/-/entityTypes/sys.date",
/// }],
/// labels: {
/// label1: "value1",
/// label2: "value2",
/// },
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
/// basic_intent = gcp.diagflow.CxIntent("basic_intent",
/// parent=agent.id,
/// display_name="Example",
/// priority=1,
/// description="Intent example",
/// training_phrases=[{
/// "parts": [
/// {
/// "text": "training",
/// },
/// {
/// "text": "phrase",
/// },
/// {
/// "text": "example",
/// },
/// ],
/// "repeat_count": 1,
/// }],
/// parameters=[{
/// "id": "param1",
/// "entity_type": "projects/-/locations/-/agents/-/entityTypes/sys.date",
/// }],
/// labels={
/// "label1": "value1",
/// "label2": "value2",
/// })
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
/// var basicIntent = new Gcp.Diagflow.CxIntent("basic_intent", new()
/// {
/// Parent = agent.Id,
/// DisplayName = "Example",
/// Priority = 1,
/// Description = "Intent example",
/// TrainingPhrases = new[]
/// {
/// new Gcp.Diagflow.Inputs.CxIntentTrainingPhraseArgs
/// {
/// Parts = new[]
/// {
/// new Gcp.Diagflow.Inputs.CxIntentTrainingPhrasePartArgs
/// {
/// Text = "training",
/// },
/// new Gcp.Diagflow.Inputs.CxIntentTrainingPhrasePartArgs
/// {
/// Text = "phrase",
/// },
/// new Gcp.Diagflow.Inputs.CxIntentTrainingPhrasePartArgs
/// {
/// Text = "example",
/// },
/// },
/// RepeatCount = 1,
/// },
/// },
/// Parameters = new[]
/// {
/// new Gcp.Diagflow.Inputs.CxIntentParameterArgs
/// {
/// Id = "param1",
/// EntityType = "projects/-/locations/-/agents/-/entityTypes/sys.date",
/// },
/// },
/// Labels =
/// {
/// { "label1", "value1" },
/// { "label2", "value2" },
/// },
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
/// _, err = diagflow.NewCxIntent(ctx, "basic_intent", &diagflow.CxIntentArgs{
/// Parent:      agent.ID(),
/// DisplayName: pulumi.String("Example"),
/// Priority:    pulumi.Int(1),
/// Description: pulumi.String("Intent example"),
/// TrainingPhrases: diagflow.CxIntentTrainingPhraseArray{
/// &diagflow.CxIntentTrainingPhraseArgs{
/// Parts: diagflow.CxIntentTrainingPhrasePartArray{
/// &diagflow.CxIntentTrainingPhrasePartArgs{
/// Text: pulumi.String("training"),
/// },
/// &diagflow.CxIntentTrainingPhrasePartArgs{
/// Text: pulumi.String("phrase"),
/// },
/// &diagflow.CxIntentTrainingPhrasePartArgs{
/// Text: pulumi.String("example"),
/// },
/// },
/// RepeatCount: pulumi.Int(1),
/// },
/// },
/// Parameters: diagflow.CxIntentParameterArray{
/// &diagflow.CxIntentParameterArgs{
/// Id:         pulumi.String("param1"),
/// EntityType: pulumi.String("projects/-/locations/-/agents/-/entityTypes/sys.date"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "label1": pulumi.String("value1"),
/// "label2": pulumi.String("value2"),
/// },
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
/// import com.pulumi.gcp.diagflow.CxIntent;
/// import com.pulumi.gcp.diagflow.CxIntentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxIntentTrainingPhraseArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxIntentParameterArgs;
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
/// var basicIntent = new CxIntent("basicIntent", CxIntentArgs.builder()
/// .parent(agent.id())
/// .displayName("Example")
/// .priority(1)
/// .description("Intent example")
/// .trainingPhrases(CxIntentTrainingPhraseArgs.builder()
/// .parts(
/// CxIntentTrainingPhrasePartArgs.builder()
/// .text("training")
/// .build(),
/// CxIntentTrainingPhrasePartArgs.builder()
/// .text("phrase")
/// .build(),
/// CxIntentTrainingPhrasePartArgs.builder()
/// .text("example")
/// .build())
/// .repeatCount(1)
/// .build())
/// .parameters(CxIntentParameterArgs.builder()
/// .id("param1")
/// .entityType("projects/-/locations/-/agents/-/entityTypes/sys.date")
/// .build())
/// .labels(Map.ofEntries(
/// Map.entry("label1", "value1"),
/// Map.entry("label2", "value2")
/// ))
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
/// basicIntent:
/// type: gcp:diagflow:CxIntent
/// name: basic_intent
/// properties:
/// parent: ${agent.id}
/// displayName: Example
/// priority: 1
/// description: Intent example
/// trainingPhrases:
/// - parts:
/// - text: training
/// - text: phrase
/// - text: example
/// repeatCount: 1
/// parameters:
/// - id: param1
/// entityType: projects/-/locations/-/agents/-/entityTypes/sys.date
/// labels:
/// label1: value1
/// label2: value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Intent can be imported using any of these accepted formats:
///
/// * `{{parent}}/intents/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Intent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxIntent:CxIntent default {{parent}}/intents/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxIntent:CxIntent default {{parent}}/{{name}}
/// ```
class CxIntent extends CustomResource {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  late final Output<String?> description;

  /// The human-readable name of the intent, unique within the agent.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// The Default Negative Intent cannot be deleted; deleting the <span pulumi-lang-nodejs="`gcp.diagflow.CxIntent`" pulumi-lang-dotnet="`gcp.diagflow.CxIntent`" pulumi-lang-go="`diagflow.CxIntent`" pulumi-lang-python="`diagflow.CxIntent`" pulumi-lang-yaml="`gcp.diagflow.CxIntent`" pulumi-lang-java="`gcp.diagflow.CxIntent`">`gcp.diagflow.CxIntent`</span> resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple <span pulumi-lang-nodejs="`gcp.diagflow.CxIntent`" pulumi-lang-dotnet="`gcp.diagflow.CxIntent`" pulumi-lang-go="`diagflow.CxIntent`" pulumi-lang-python="`diagflow.CxIntent`" pulumi-lang-yaml="`gcp.diagflow.CxIntent`" pulumi-lang-java="`gcp.diagflow.CxIntent`">`gcp.diagflow.CxIntent`</span> resources linked to the same agent with <span pulumi-lang-nodejs="`isDefaultNegativeIntent " pulumi-lang-dotnet="`IsDefaultNegativeIntent " pulumi-lang-go="`isDefaultNegativeIntent " pulumi-lang-python="`is_default_negative_intent " pulumi-lang-yaml="`isDefaultNegativeIntent " pulumi-lang-java="`isDefaultNegativeIntent ">`is_default_negative_intent </span>= true` because they will compete to control a single Default Negative Intent resource in GCP.
  late final Output<bool?> isDefaultNegativeIntent;

  /// Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// The Default Welcome Intent cannot be deleted; deleting the <span pulumi-lang-nodejs="`gcp.diagflow.CxIntent`" pulumi-lang-dotnet="`gcp.diagflow.CxIntent`" pulumi-lang-go="`diagflow.CxIntent`" pulumi-lang-python="`diagflow.CxIntent`" pulumi-lang-yaml="`gcp.diagflow.CxIntent`" pulumi-lang-java="`gcp.diagflow.CxIntent`">`gcp.diagflow.CxIntent`</span> resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple <span pulumi-lang-nodejs="`gcp.diagflow.CxIntent`" pulumi-lang-dotnet="`gcp.diagflow.CxIntent`" pulumi-lang-go="`diagflow.CxIntent`" pulumi-lang-python="`diagflow.CxIntent`" pulumi-lang-yaml="`gcp.diagflow.CxIntent`" pulumi-lang-java="`gcp.diagflow.CxIntent`">`gcp.diagflow.CxIntent`</span> resources linked to the same agent with <span pulumi-lang-nodejs="`isDefaultWelcomeIntent " pulumi-lang-dotnet="`IsDefaultWelcomeIntent " pulumi-lang-go="`isDefaultWelcomeIntent " pulumi-lang-python="`is_default_welcome_intent " pulumi-lang-yaml="`isDefaultWelcomeIntent " pulumi-lang-java="`isDefaultWelcomeIntent ">`is_default_welcome_intent </span>= true` because they will compete to control a single Default Welcome Intent resource in GCP.
  late final Output<bool?> isDefaultWelcomeIntent;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
  /// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// To manage the fallback intent, set <span pulumi-lang-nodejs="`isDefaultNegativeIntent " pulumi-lang-dotnet="`IsDefaultNegativeIntent " pulumi-lang-go="`isDefaultNegativeIntent " pulumi-lang-python="`is_default_negative_intent " pulumi-lang-yaml="`isDefaultNegativeIntent " pulumi-lang-java="`isDefaultNegativeIntent ">`is_default_negative_intent </span>= true`
  late final Output<bool?> isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
  /// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The language of the following fields in intent:
  /// Intent.training_phrases.parts.text
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final Output<String?> languageCode;

  /// The unique identifier of the intent.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>.
  late final Output<String> name;

  /// The collection of parameters associated with the intent.
  /// Structure is documented below.
  late final Output<List<CxIntentParameter>?> parameters;

  /// The agent to create an intent for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final Output<String?> parent;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
  /// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  late final Output<int?> priority;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The collection of training phrases the agent is trained on to identify the intent.
  /// Structure is documented below.
  late final Output<List<CxIntentTrainingPhrase>?> trainingPhrases;

  CxIntent(
    String name, {
    CxIntentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxIntent:CxIntent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.isDefaultNegativeIntent =
        registerOutput<bool?>('isDefaultNegativeIntent');
    this.isDefaultWelcomeIntent =
        registerOutput<bool?>('isDefaultWelcomeIntent');
    this.isFallback = registerOutput<bool?>('isFallback');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<List<CxIntentParameter>?>('parameters');
    this.parent = registerOutput<String?>('parent');
    this.priority = registerOutput<int?>('priority');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.trainingPhrases =
        registerOutput<List<CxIntentTrainingPhrase>?>('trainingPhrases');
  }
}
