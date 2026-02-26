import 'package:pulumi/pulumi.dart';
import '../cx_generator_llm_model_settings/cx_generator_llm_model_settings.dart';
import '../cx_generator_model_parameter/cx_generator_model_parameter.dart';
import '../cx_generator_placeholder/cx_generator_placeholder.dart';
import '../cx_generator_prompt_text/cx_generator_prompt_text.dart';
import 'cx_generator_args.dart';

/// Generators contain prompt to be sent to the LLM model to generate text. The prompt can contain parameters which will be resolved before calling the model. It can optionally contain banned phrases to ensure the model responses are safe.
///
///
/// To get more information about Generator, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.generators)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Generator Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
/// displayName: "dialogflowcx-agent-fucntion",
/// location: "global",
/// defaultLanguageCode: "en",
/// supportedLanguageCodes: [
/// "fr",
/// "de",
/// "es",
/// ],
/// timeZone: "America/New_York",
/// description: "Example description.",
/// });
/// const generator = new gcp.diagflow.CxGenerator("generator", {
/// parent: agent.id,
/// languageCode: "fr",
/// displayName: "TF Prompt generator",
/// llmModelSettings: {
/// model: "gemini-2.0-flash-001",
/// promptText: "Return me some great results",
/// },
/// promptText: {
/// text: "Send me great results in french",
/// },
/// modelParameter: {
/// temperature: 0.55,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
/// display_name="dialogflowcx-agent-fucntion",
/// location="global",
/// default_language_code="en",
/// supported_language_codes=[
/// "fr",
/// "de",
/// "es",
/// ],
/// time_zone="America/New_York",
/// description="Example description.")
/// generator = gcp.diagflow.CxGenerator("generator",
/// parent=agent.id,
/// language_code="fr",
/// display_name="TF Prompt generator",
/// llm_model_settings={
/// "model": "gemini-2.0-flash-001",
/// "prompt_text": "Return me some great results",
/// },
/// prompt_text={
/// "text": "Send me great results in french",
/// },
/// model_parameter={
/// "temperature": 0.55,
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
/// DisplayName = "dialogflowcx-agent-fucntion",
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
/// });
///
/// var generator = new Gcp.Diagflow.CxGenerator("generator", new()
/// {
/// Parent = agent.Id,
/// LanguageCode = "fr",
/// DisplayName = "TF Prompt generator",
/// LlmModelSettings = new Gcp.Diagflow.Inputs.CxGeneratorLlmModelSettingsArgs
/// {
/// Model = "gemini-2.0-flash-001",
/// PromptText = "Return me some great results",
/// },
/// PromptText = new Gcp.Diagflow.Inputs.CxGeneratorPromptTextArgs
/// {
/// Text = "Send me great results in french",
/// },
/// ModelParameter = new Gcp.Diagflow.Inputs.CxGeneratorModelParameterArgs
/// {
/// Temperature = 0.55,
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
/// DisplayName:         pulumi.String("dialogflowcx-agent-fucntion"),
/// Location:            pulumi.String("global"),
/// DefaultLanguageCode: pulumi.String("en"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("fr"),
/// pulumi.String("de"),
/// pulumi.String("es"),
/// },
/// TimeZone:    pulumi.String("America/New_York"),
/// Description: pulumi.String("Example description."),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = diagflow.NewCxGenerator(ctx, "generator", &diagflow.CxGeneratorArgs{
/// Parent:       agent.ID(),
/// LanguageCode: pulumi.String("fr"),
/// DisplayName:  pulumi.String("TF Prompt generator"),
/// LlmModelSettings: &diagflow.CxGeneratorLlmModelSettingsArgs{
/// Model:      pulumi.String("gemini-2.0-flash-001"),
/// PromptText: pulumi.String("Return me some great results"),
/// },
/// PromptText: &diagflow.CxGeneratorPromptTextArgs{
/// Text: pulumi.String("Send me great results in french"),
/// },
/// ModelParameter: &diagflow.CxGeneratorModelParameterArgs{
/// Temperature: pulumi.Float64(0.55),
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
/// import com.pulumi.gcp.diagflow.CxGenerator;
/// import com.pulumi.gcp.diagflow.CxGeneratorArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGeneratorLlmModelSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGeneratorPromptTextArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGeneratorModelParameterArgs;
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
/// .displayName("dialogflowcx-agent-fucntion")
/// .location("global")
/// .defaultLanguageCode("en")
/// .supportedLanguageCodes(
/// "fr",
/// "de",
/// "es")
/// .timeZone("America/New_York")
/// .description("Example description.")
/// .build());
///
/// var generator = new CxGenerator("generator", CxGeneratorArgs.builder()
/// .parent(agent.id())
/// .languageCode("fr")
/// .displayName("TF Prompt generator")
/// .llmModelSettings(CxGeneratorLlmModelSettingsArgs.builder()
/// .model("gemini-2.0-flash-001")
/// .promptText("Return me some great results")
/// .build())
/// .promptText(CxGeneratorPromptTextArgs.builder()
/// .text("Send me great results in french")
/// .build())
/// .modelParameter(CxGeneratorModelParameterArgs.builder()
/// .temperature(0.55)
/// .build())
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
/// displayName: dialogflowcx-agent-fucntion
/// location: global
/// defaultLanguageCode: en
/// supportedLanguageCodes:
/// - fr
/// - de
/// - es
/// timeZone: America/New_York
/// description: Example description.
/// generator:
/// type: gcp:diagflow:CxGenerator
/// properties:
/// parent: ${agent.id}
/// languageCode: fr
/// displayName: TF Prompt generator
/// llmModelSettings:
/// model: gemini-2.0-flash-001
/// promptText: Return me some great results
/// promptText:
/// text: Send me great results in french
/// modelParameter:
/// temperature: 0.55
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Generator can be imported using any of these accepted formats:
///
/// * `{{parent}}/generators/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Generator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerator:CxGenerator default {{parent}}/generators/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerator:CxGenerator default {{parent}}/{{name}}
/// ```
class CxGenerator extends CustomResource {
  /// The human-readable name of the generator, unique within the agent.
  late final Output<String> displayName;

  /// The language to create generators for the following fields:
  /// * Generator.prompt_text.text
  /// If not specified, the agent's default language is used.
  late final Output<String?> languageCode;

  /// The LLM model settings.
  /// Structure is documented below.
  late final Output<CxGeneratorLlmModelSettings?> llmModelSettings;

  /// Parameters passed to the LLM to configure its behavior.
  /// Structure is documented below.
  late final Output<CxGeneratorModelParameter?> modelParameter;

  /// The unique identifier of the Generator.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/generators/<Generator ID>.
  late final Output<String> name;

  /// The agent to create a Generator for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final Output<String?> parent;

  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  late final Output<List<CxGeneratorPlaceholder>?> placeholders;

  /// Prompt for the LLM model.
  /// Structure is documented below.
  late final Output<CxGeneratorPromptText> promptText;

  CxGenerator(
    String name, {
    CxGeneratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxGenerator:CxGenerator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String?>();
    this.llmModelSettings =
        Output.createUnknown<CxGeneratorLlmModelSettings?>();
    this.modelParameter = Output.createUnknown<CxGeneratorModelParameter?>();
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String?>();
    this.placeholders = Output.createUnknown<List<CxGeneratorPlaceholder>?>();
    this.promptText = Output.createUnknown<CxGeneratorPromptText>();
  }
}
