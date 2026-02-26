import 'package:pulumi/pulumi.dart';
import '../guardrail_action/guardrail_action.dart';
import '../guardrail_code_callback/guardrail_code_callback.dart';
import '../guardrail_content_filter/guardrail_content_filter.dart';
import '../guardrail_llm_policy/guardrail_llm_policy.dart';
import '../guardrail_llm_prompt_security/guardrail_llm_prompt_security.dart';
import '../guardrail_model_safety/guardrail_model_safety.dart';
import 'guardrail_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Guardrail Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForGuardrail = new gcp.ces.App("ces_app_for_guardrail", {
/// appId: "app-id",
/// location: "us",
/// description: "App used as parent for CES Toolset example",
/// displayName: "my-app",
/// languageSettings: {
/// defaultLanguageCode: "en-US",
/// supportedLanguageCodes: [
/// "es-ES",
/// "fr-FR",
/// ],
/// enableMultilingualSupport: true,
/// fallbackAction: "escalate",
/// },
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesGuardrailBasic = new gcp.ces.Guardrail("ces_guardrail_basic", {
/// guardrailId: "guardrail-id",
/// location: cesAppForGuardrail.location,
/// app: cesAppForGuardrail.appId,
/// displayName: "my-guardrail",
/// description: "Guardrail description",
/// action: {
/// respondImmediately: {
/// responses: [{
/// text: "Text",
/// disabled: false,
/// }],
/// },
/// },
/// enabled: true,
/// modelSafety: {
/// safetySettings: [{
/// category: "HARM_CATEGORY_HATE_SPEECH",
/// threshold: "BLOCK_NONE",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_guardrail = gcp.ces.App("ces_app_for_guardrail",
/// app_id="app-id",
/// location="us",
/// description="App used as parent for CES Toolset example",
/// display_name="my-app",
/// language_settings={
/// "default_language_code": "en-US",
/// "supported_language_codes": [
/// "es-ES",
/// "fr-FR",
/// ],
/// "enable_multilingual_support": True,
/// "fallback_action": "escalate",
/// },
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_guardrail_basic = gcp.ces.Guardrail("ces_guardrail_basic",
/// guardrail_id="guardrail-id",
/// location=ces_app_for_guardrail.location,
/// app=ces_app_for_guardrail.app_id,
/// display_name="my-guardrail",
/// description="Guardrail description",
/// action={
/// "respond_immediately": {
/// "responses": [{
/// "text": "Text",
/// "disabled": False,
/// }],
/// },
/// },
/// enabled=True,
/// model_safety={
/// "safety_settings": [{
/// "category": "HARM_CATEGORY_HATE_SPEECH",
/// "threshold": "BLOCK_NONE",
/// }],
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
/// var cesAppForGuardrail = new Gcp.Ces.App("ces_app_for_guardrail", new()
/// {
/// AppId = "app-id",
/// Location = "us",
/// Description = "App used as parent for CES Toolset example",
/// DisplayName = "my-app",
/// LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
/// {
/// DefaultLanguageCode = "en-US",
/// SupportedLanguageCodes = new[]
/// {
/// "es-ES",
/// "fr-FR",
/// },
/// EnableMultilingualSupport = true,
/// FallbackAction = "escalate",
/// },
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesGuardrailBasic = new Gcp.Ces.Guardrail("ces_guardrail_basic", new()
/// {
/// GuardrailId = "guardrail-id",
/// Location = cesAppForGuardrail.Location,
/// App = cesAppForGuardrail.AppId,
/// DisplayName = "my-guardrail",
/// Description = "Guardrail description",
/// Action = new Gcp.Ces.Inputs.GuardrailActionArgs
/// {
/// RespondImmediately = new Gcp.Ces.Inputs.GuardrailActionRespondImmediatelyArgs
/// {
/// Responses = new[]
/// {
/// new Gcp.Ces.Inputs.GuardrailActionRespondImmediatelyResponseArgs
/// {
/// Text = "Text",
/// Disabled = false,
/// },
/// },
/// },
/// },
/// Enabled = true,
/// ModelSafety = new Gcp.Ces.Inputs.GuardrailModelSafetyArgs
/// {
/// SafetySettings = new[]
/// {
/// new Gcp.Ces.Inputs.GuardrailModelSafetySafetySettingArgs
/// {
/// Category = "HARM_CATEGORY_HATE_SPEECH",
/// Threshold = "BLOCK_NONE",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cesAppForGuardrail, err := ces.NewApp(ctx, "ces_app_for_guardrail", &ces.AppArgs{
/// AppId:       pulumi.String("app-id"),
/// Location:    pulumi.String("us"),
/// Description: pulumi.String("App used as parent for CES Toolset example"),
/// DisplayName: pulumi.String("my-app"),
/// LanguageSettings: &ces.AppLanguageSettingsArgs{
/// DefaultLanguageCode: pulumi.String("en-US"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("es-ES"),
/// pulumi.String("fr-FR"),
/// },
/// EnableMultilingualSupport: pulumi.Bool(true),
/// FallbackAction:            pulumi.String("escalate"),
/// },
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewGuardrail(ctx, "ces_guardrail_basic", &ces.GuardrailArgs{
/// GuardrailId: pulumi.String("guardrail-id"),
/// Location:    cesAppForGuardrail.Location,
/// App:         cesAppForGuardrail.AppId,
/// DisplayName: pulumi.String("my-guardrail"),
/// Description: pulumi.String("Guardrail description"),
/// Action: &ces.GuardrailActionArgs{
/// RespondImmediately: &ces.GuardrailActionRespondImmediatelyArgs{
/// Responses: ces.GuardrailActionRespondImmediatelyResponseArray{
/// &ces.GuardrailActionRespondImmediatelyResponseArgs{
/// Text:     pulumi.String("Text"),
/// Disabled: pulumi.Bool(false),
/// },
/// },
/// },
/// },
/// Enabled: pulumi.Bool(true),
/// ModelSafety: &ces.GuardrailModelSafetyArgs{
/// SafetySettings: ces.GuardrailModelSafetySafetySettingArray{
/// &ces.GuardrailModelSafetySafetySettingArgs{
/// Category:  pulumi.String("HARM_CATEGORY_HATE_SPEECH"),
/// Threshold: pulumi.String("BLOCK_NONE"),
/// },
/// },
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Guardrail;
/// import com.pulumi.gcp.ces.GuardrailArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionRespondImmediatelyArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailModelSafetyArgs;
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
/// var cesAppForGuardrail = new App("cesAppForGuardrail", AppArgs.builder()
/// .appId("app-id")
/// .location("us")
/// .description("App used as parent for CES Toolset example")
/// .displayName("my-app")
/// .languageSettings(AppLanguageSettingsArgs.builder()
/// .defaultLanguageCode("en-US")
/// .supportedLanguageCodes(
/// "es-ES",
/// "fr-FR")
/// .enableMultilingualSupport(true)
/// .fallbackAction("escalate")
/// .build())
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesGuardrailBasic = new Guardrail("cesGuardrailBasic", GuardrailArgs.builder()
/// .guardrailId("guardrail-id")
/// .location(cesAppForGuardrail.location())
/// .app(cesAppForGuardrail.appId())
/// .displayName("my-guardrail")
/// .description("Guardrail description")
/// .action(GuardrailActionArgs.builder()
/// .respondImmediately(GuardrailActionRespondImmediatelyArgs.builder()
/// .responses(GuardrailActionRespondImmediatelyResponseArgs.builder()
/// .text("Text")
/// .disabled(false)
/// .build())
/// .build())
/// .build())
/// .enabled(true)
/// .modelSafety(GuardrailModelSafetyArgs.builder()
/// .safetySettings(GuardrailModelSafetySafetySettingArgs.builder()
/// .category("HARM_CATEGORY_HATE_SPEECH")
/// .threshold("BLOCK_NONE")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cesAppForGuardrail:
/// type: gcp:ces:App
/// name: ces_app_for_guardrail
/// properties:
/// appId: app-id
/// location: us
/// description: App used as parent for CES Toolset example
/// displayName: my-app
/// languageSettings:
/// defaultLanguageCode: en-US
/// supportedLanguageCodes:
/// - es-ES
/// - fr-FR
/// enableMultilingualSupport: true
/// fallbackAction: escalate
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesGuardrailBasic:
/// type: gcp:ces:Guardrail
/// name: ces_guardrail_basic
/// properties:
/// guardrailId: guardrail-id
/// location: ${cesAppForGuardrail.location}
/// app: ${cesAppForGuardrail.appId}
/// displayName: my-guardrail
/// description: Guardrail description
/// action:
/// respondImmediately:
/// responses:
/// - text: Text
/// disabled: false
/// enabled: true
/// modelSafety:
/// safetySettings:
/// - category: HARM_CATEGORY_HATE_SPEECH
/// threshold: BLOCK_NONE
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Guardrail Transfer Agent Content Filter
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForGuardrail = new gcp.ces.App("ces_app_for_guardrail", {
/// appId: "app-id",
/// location: "us",
/// description: "App used as parent for CES Toolset example",
/// displayName: "my-app",
/// languageSettings: {
/// defaultLanguageCode: "en-US",
/// supportedLanguageCodes: [
/// "es-ES",
/// "fr-FR",
/// ],
/// enableMultilingualSupport: true,
/// fallbackAction: "escalate",
/// },
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesGuardrailTransferAgentContentFilter = new gcp.ces.Guardrail("ces_guardrail_transfer_agent_content_filter", {
/// guardrailId: "guardrail-id",
/// location: cesAppForGuardrail.location,
/// app: cesAppForGuardrail.appId,
/// displayName: "my-guardrail",
/// description: "Guardrail description",
/// action: {
/// transferAgent: {
/// agent: pulumi.interpolate`projects/${cesAppForGuardrail.project}/locations/us/apps/${cesAppForGuardrail.appId}/agents/fake-agent`,
/// },
/// },
/// enabled: true,
/// contentFilter: {
/// bannedContents: ["example"],
/// bannedContentsInUserInputs: ["example"],
/// bannedContentsInAgentResponses: ["example"],
/// matchType: "SIMPLE_STRING_MATCH",
/// disregardDiacritics: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_guardrail = gcp.ces.App("ces_app_for_guardrail",
/// app_id="app-id",
/// location="us",
/// description="App used as parent for CES Toolset example",
/// display_name="my-app",
/// language_settings={
/// "default_language_code": "en-US",
/// "supported_language_codes": [
/// "es-ES",
/// "fr-FR",
/// ],
/// "enable_multilingual_support": True,
/// "fallback_action": "escalate",
/// },
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_guardrail_transfer_agent_content_filter = gcp.ces.Guardrail("ces_guardrail_transfer_agent_content_filter",
/// guardrail_id="guardrail-id",
/// location=ces_app_for_guardrail.location,
/// app=ces_app_for_guardrail.app_id,
/// display_name="my-guardrail",
/// description="Guardrail description",
/// action={
/// "transfer_agent": {
/// "agent": pulumi.Output.all(
/// project=ces_app_for_guardrail.project,
/// app_id=ces_app_for_guardrail.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/fake-agent")
/// ,
/// },
/// },
/// enabled=True,
/// content_filter={
/// "banned_contents": ["example"],
/// "banned_contents_in_user_inputs": ["example"],
/// "banned_contents_in_agent_responses": ["example"],
/// "match_type": "SIMPLE_STRING_MATCH",
/// "disregard_diacritics": True,
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
/// var cesAppForGuardrail = new Gcp.Ces.App("ces_app_for_guardrail", new()
/// {
/// AppId = "app-id",
/// Location = "us",
/// Description = "App used as parent for CES Toolset example",
/// DisplayName = "my-app",
/// LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
/// {
/// DefaultLanguageCode = "en-US",
/// SupportedLanguageCodes = new[]
/// {
/// "es-ES",
/// "fr-FR",
/// },
/// EnableMultilingualSupport = true,
/// FallbackAction = "escalate",
/// },
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesGuardrailTransferAgentContentFilter = new Gcp.Ces.Guardrail("ces_guardrail_transfer_agent_content_filter", new()
/// {
/// GuardrailId = "guardrail-id",
/// Location = cesAppForGuardrail.Location,
/// App = cesAppForGuardrail.AppId,
/// DisplayName = "my-guardrail",
/// Description = "Guardrail description",
/// Action = new Gcp.Ces.Inputs.GuardrailActionArgs
/// {
/// TransferAgent = new Gcp.Ces.Inputs.GuardrailActionTransferAgentArgs
/// {
/// Agent = Output.Tuple(cesAppForGuardrail.Project, cesAppForGuardrail.AppId).Apply(values =>
/// {
/// var project = values.Item1;
/// var appId = values.Item2;
/// return $"projects/{project}/locations/us/apps/{appId}/agents/fake-agent";
/// }),
/// },
/// },
/// Enabled = true,
/// ContentFilter = new Gcp.Ces.Inputs.GuardrailContentFilterArgs
/// {
/// BannedContents = new[]
/// {
/// "example",
/// },
/// BannedContentsInUserInputs = new[]
/// {
/// "example",
/// },
/// BannedContentsInAgentResponses = new[]
/// {
/// "example",
/// },
/// MatchType = "SIMPLE_STRING_MATCH",
/// DisregardDiacritics = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cesAppForGuardrail, err := ces.NewApp(ctx, "ces_app_for_guardrail", &ces.AppArgs{
/// AppId:       pulumi.String("app-id"),
/// Location:    pulumi.String("us"),
/// Description: pulumi.String("App used as parent for CES Toolset example"),
/// DisplayName: pulumi.String("my-app"),
/// LanguageSettings: &ces.AppLanguageSettingsArgs{
/// DefaultLanguageCode: pulumi.String("en-US"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("es-ES"),
/// pulumi.String("fr-FR"),
/// },
/// EnableMultilingualSupport: pulumi.Bool(true),
/// FallbackAction:            pulumi.String("escalate"),
/// },
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewGuardrail(ctx, "ces_guardrail_transfer_agent_content_filter", &ces.GuardrailArgs{
/// GuardrailId: pulumi.String("guardrail-id"),
/// Location:    cesAppForGuardrail.Location,
/// App:         cesAppForGuardrail.AppId,
/// DisplayName: pulumi.String("my-guardrail"),
/// Description: pulumi.String("Guardrail description"),
/// Action: &ces.GuardrailActionArgs{
/// TransferAgent: &ces.GuardrailActionTransferAgentArgs{
/// Agent: pulumi.All(cesAppForGuardrail.Project, cesAppForGuardrail.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// appId := _args[1].(string)
/// return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/fake-agent", project, appId), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// Enabled: pulumi.Bool(true),
/// ContentFilter: &ces.GuardrailContentFilterArgs{
/// BannedContents: pulumi.StringArray{
/// pulumi.String("example"),
/// },
/// BannedContentsInUserInputs: pulumi.StringArray{
/// pulumi.String("example"),
/// },
/// BannedContentsInAgentResponses: pulumi.StringArray{
/// pulumi.String("example"),
/// },
/// MatchType:           pulumi.String("SIMPLE_STRING_MATCH"),
/// DisregardDiacritics: pulumi.Bool(true),
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Guardrail;
/// import com.pulumi.gcp.ces.GuardrailArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionTransferAgentArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailContentFilterArgs;
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
/// var cesAppForGuardrail = new App("cesAppForGuardrail", AppArgs.builder()
/// .appId("app-id")
/// .location("us")
/// .description("App used as parent for CES Toolset example")
/// .displayName("my-app")
/// .languageSettings(AppLanguageSettingsArgs.builder()
/// .defaultLanguageCode("en-US")
/// .supportedLanguageCodes(
/// "es-ES",
/// "fr-FR")
/// .enableMultilingualSupport(true)
/// .fallbackAction("escalate")
/// .build())
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesGuardrailTransferAgentContentFilter = new Guardrail("cesGuardrailTransferAgentContentFilter", GuardrailArgs.builder()
/// .guardrailId("guardrail-id")
/// .location(cesAppForGuardrail.location())
/// .app(cesAppForGuardrail.appId())
/// .displayName("my-guardrail")
/// .description("Guardrail description")
/// .action(GuardrailActionArgs.builder()
/// .transferAgent(GuardrailActionTransferAgentArgs.builder()
/// .agent(Output.tuple(cesAppForGuardrail.project(), cesAppForGuardrail.appId()).applyValue(values -> {
/// var project = values.t1;
/// var appId = values.t2;
/// return String.format("projects/%s/locations/us/apps/%s/agents/fake-agent", project,appId);
/// }))
/// .build())
/// .build())
/// .enabled(true)
/// .contentFilter(GuardrailContentFilterArgs.builder()
/// .bannedContents("example")
/// .bannedContentsInUserInputs("example")
/// .bannedContentsInAgentResponses("example")
/// .matchType("SIMPLE_STRING_MATCH")
/// .disregardDiacritics(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cesAppForGuardrail:
/// type: gcp:ces:App
/// name: ces_app_for_guardrail
/// properties:
/// appId: app-id
/// location: us
/// description: App used as parent for CES Toolset example
/// displayName: my-app
/// languageSettings:
/// defaultLanguageCode: en-US
/// supportedLanguageCodes:
/// - es-ES
/// - fr-FR
/// enableMultilingualSupport: true
/// fallbackAction: escalate
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesGuardrailTransferAgentContentFilter:
/// type: gcp:ces:Guardrail
/// name: ces_guardrail_transfer_agent_content_filter
/// properties:
/// guardrailId: guardrail-id
/// location: ${cesAppForGuardrail.location}
/// app: ${cesAppForGuardrail.appId}
/// displayName: my-guardrail
/// description: Guardrail description
/// action:
/// transferAgent:
/// agent: projects/${cesAppForGuardrail.project}/locations/us/apps/${cesAppForGuardrail.appId}/agents/fake-agent
/// enabled: true
/// contentFilter:
/// bannedContents:
/// - example
/// bannedContentsInUserInputs:
/// - example
/// bannedContentsInAgentResponses:
/// - example
/// matchType: SIMPLE_STRING_MATCH
/// disregardDiacritics: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Guardrail Generative Answer Llm Prompt Security
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForGuardrail = new gcp.ces.App("ces_app_for_guardrail", {
/// appId: "app-id",
/// location: "us",
/// description: "App used as parent for CES Toolset example",
/// displayName: "my-app",
/// languageSettings: {
/// defaultLanguageCode: "en-US",
/// supportedLanguageCodes: [
/// "es-ES",
/// "fr-FR",
/// ],
/// enableMultilingualSupport: true,
/// fallbackAction: "escalate",
/// },
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesGuardrailGenerativeAnswerLlmPromptSecurity = new gcp.ces.Guardrail("ces_guardrail_generative_answer_llm_prompt_security", {
/// guardrailId: "guardrail-id",
/// location: cesAppForGuardrail.location,
/// app: cesAppForGuardrail.appId,
/// displayName: "my-guardrail",
/// description: "Guardrail description",
/// action: {
/// generativeAnswer: {
/// prompt: "example_prompt",
/// },
/// },
/// enabled: true,
/// llmPromptSecurity: {
/// customPolicy: {
/// maxConversationMessages: 10,
/// modelSettings: {
/// model: "gemini-2.5-flash",
/// temperature: 50,
/// },
/// prompt: "example_prompt",
/// policyScope: "USER_QUERY",
/// failOpen: true,
/// allowShortUtterance: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_guardrail = gcp.ces.App("ces_app_for_guardrail",
/// app_id="app-id",
/// location="us",
/// description="App used as parent for CES Toolset example",
/// display_name="my-app",
/// language_settings={
/// "default_language_code": "en-US",
/// "supported_language_codes": [
/// "es-ES",
/// "fr-FR",
/// ],
/// "enable_multilingual_support": True,
/// "fallback_action": "escalate",
/// },
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_guardrail_generative_answer_llm_prompt_security = gcp.ces.Guardrail("ces_guardrail_generative_answer_llm_prompt_security",
/// guardrail_id="guardrail-id",
/// location=ces_app_for_guardrail.location,
/// app=ces_app_for_guardrail.app_id,
/// display_name="my-guardrail",
/// description="Guardrail description",
/// action={
/// "generative_answer": {
/// "prompt": "example_prompt",
/// },
/// },
/// enabled=True,
/// llm_prompt_security={
/// "custom_policy": {
/// "max_conversation_messages": 10,
/// "model_settings": {
/// "model": "gemini-2.5-flash",
/// "temperature": 50,
/// },
/// "prompt": "example_prompt",
/// "policy_scope": "USER_QUERY",
/// "fail_open": True,
/// "allow_short_utterance": True,
/// },
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
/// var cesAppForGuardrail = new Gcp.Ces.App("ces_app_for_guardrail", new()
/// {
/// AppId = "app-id",
/// Location = "us",
/// Description = "App used as parent for CES Toolset example",
/// DisplayName = "my-app",
/// LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
/// {
/// DefaultLanguageCode = "en-US",
/// SupportedLanguageCodes = new[]
/// {
/// "es-ES",
/// "fr-FR",
/// },
/// EnableMultilingualSupport = true,
/// FallbackAction = "escalate",
/// },
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesGuardrailGenerativeAnswerLlmPromptSecurity = new Gcp.Ces.Guardrail("ces_guardrail_generative_answer_llm_prompt_security", new()
/// {
/// GuardrailId = "guardrail-id",
/// Location = cesAppForGuardrail.Location,
/// App = cesAppForGuardrail.AppId,
/// DisplayName = "my-guardrail",
/// Description = "Guardrail description",
/// Action = new Gcp.Ces.Inputs.GuardrailActionArgs
/// {
/// GenerativeAnswer = new Gcp.Ces.Inputs.GuardrailActionGenerativeAnswerArgs
/// {
/// Prompt = "example_prompt",
/// },
/// },
/// Enabled = true,
/// LlmPromptSecurity = new Gcp.Ces.Inputs.GuardrailLlmPromptSecurityArgs
/// {
/// CustomPolicy = new Gcp.Ces.Inputs.GuardrailLlmPromptSecurityCustomPolicyArgs
/// {
/// MaxConversationMessages = 10,
/// ModelSettings = new Gcp.Ces.Inputs.GuardrailLlmPromptSecurityCustomPolicyModelSettingsArgs
/// {
/// Model = "gemini-2.5-flash",
/// Temperature = 50,
/// },
/// Prompt = "example_prompt",
/// PolicyScope = "USER_QUERY",
/// FailOpen = true,
/// AllowShortUtterance = true,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cesAppForGuardrail, err := ces.NewApp(ctx, "ces_app_for_guardrail", &ces.AppArgs{
/// AppId:       pulumi.String("app-id"),
/// Location:    pulumi.String("us"),
/// Description: pulumi.String("App used as parent for CES Toolset example"),
/// DisplayName: pulumi.String("my-app"),
/// LanguageSettings: &ces.AppLanguageSettingsArgs{
/// DefaultLanguageCode: pulumi.String("en-US"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("es-ES"),
/// pulumi.String("fr-FR"),
/// },
/// EnableMultilingualSupport: pulumi.Bool(true),
/// FallbackAction:            pulumi.String("escalate"),
/// },
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewGuardrail(ctx, "ces_guardrail_generative_answer_llm_prompt_security", &ces.GuardrailArgs{
/// GuardrailId: pulumi.String("guardrail-id"),
/// Location:    cesAppForGuardrail.Location,
/// App:         cesAppForGuardrail.AppId,
/// DisplayName: pulumi.String("my-guardrail"),
/// Description: pulumi.String("Guardrail description"),
/// Action: &ces.GuardrailActionArgs{
/// GenerativeAnswer: &ces.GuardrailActionGenerativeAnswerArgs{
/// Prompt: pulumi.String("example_prompt"),
/// },
/// },
/// Enabled: pulumi.Bool(true),
/// LlmPromptSecurity: &ces.GuardrailLlmPromptSecurityArgs{
/// CustomPolicy: &ces.GuardrailLlmPromptSecurityCustomPolicyArgs{
/// MaxConversationMessages: pulumi.Int(10),
/// ModelSettings: &ces.GuardrailLlmPromptSecurityCustomPolicyModelSettingsArgs{
/// Model:       pulumi.String("gemini-2.5-flash"),
/// Temperature: pulumi.Float64(50),
/// },
/// Prompt:              pulumi.String("example_prompt"),
/// PolicyScope:         pulumi.String("USER_QUERY"),
/// FailOpen:            pulumi.Bool(true),
/// AllowShortUtterance: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Guardrail;
/// import com.pulumi.gcp.ces.GuardrailArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionGenerativeAnswerArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailLlmPromptSecurityArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailLlmPromptSecurityCustomPolicyArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailLlmPromptSecurityCustomPolicyModelSettingsArgs;
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
/// var cesAppForGuardrail = new App("cesAppForGuardrail", AppArgs.builder()
/// .appId("app-id")
/// .location("us")
/// .description("App used as parent for CES Toolset example")
/// .displayName("my-app")
/// .languageSettings(AppLanguageSettingsArgs.builder()
/// .defaultLanguageCode("en-US")
/// .supportedLanguageCodes(
/// "es-ES",
/// "fr-FR")
/// .enableMultilingualSupport(true)
/// .fallbackAction("escalate")
/// .build())
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesGuardrailGenerativeAnswerLlmPromptSecurity = new Guardrail("cesGuardrailGenerativeAnswerLlmPromptSecurity", GuardrailArgs.builder()
/// .guardrailId("guardrail-id")
/// .location(cesAppForGuardrail.location())
/// .app(cesAppForGuardrail.appId())
/// .displayName("my-guardrail")
/// .description("Guardrail description")
/// .action(GuardrailActionArgs.builder()
/// .generativeAnswer(GuardrailActionGenerativeAnswerArgs.builder()
/// .prompt("example_prompt")
/// .build())
/// .build())
/// .enabled(true)
/// .llmPromptSecurity(GuardrailLlmPromptSecurityArgs.builder()
/// .customPolicy(GuardrailLlmPromptSecurityCustomPolicyArgs.builder()
/// .maxConversationMessages(10)
/// .modelSettings(GuardrailLlmPromptSecurityCustomPolicyModelSettingsArgs.builder()
/// .model("gemini-2.5-flash")
/// .temperature(50.0)
/// .build())
/// .prompt("example_prompt")
/// .policyScope("USER_QUERY")
/// .failOpen(true)
/// .allowShortUtterance(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cesAppForGuardrail:
/// type: gcp:ces:App
/// name: ces_app_for_guardrail
/// properties:
/// appId: app-id
/// location: us
/// description: App used as parent for CES Toolset example
/// displayName: my-app
/// languageSettings:
/// defaultLanguageCode: en-US
/// supportedLanguageCodes:
/// - es-ES
/// - fr-FR
/// enableMultilingualSupport: true
/// fallbackAction: escalate
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesGuardrailGenerativeAnswerLlmPromptSecurity:
/// type: gcp:ces:Guardrail
/// name: ces_guardrail_generative_answer_llm_prompt_security
/// properties:
/// guardrailId: guardrail-id
/// location: ${cesAppForGuardrail.location}
/// app: ${cesAppForGuardrail.appId}
/// displayName: my-guardrail
/// description: Guardrail description
/// action:
/// generativeAnswer:
/// prompt: example_prompt
/// enabled: true
/// llmPromptSecurity:
/// customPolicy:
/// maxConversationMessages: 10
/// modelSettings:
/// model: gemini-2.5-flash
/// temperature: 50
/// prompt: example_prompt
/// policyScope: USER_QUERY
/// failOpen: true
/// allowShortUtterance: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Guardrail Code Callback
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForGuardrail = new gcp.ces.App("ces_app_for_guardrail", {
/// appId: "app-id",
/// location: "us",
/// description: "App used as parent for CES Toolset example",
/// displayName: "my-app",
/// languageSettings: {
/// defaultLanguageCode: "en-US",
/// supportedLanguageCodes: [
/// "es-ES",
/// "fr-FR",
/// ],
/// enableMultilingualSupport: true,
/// fallbackAction: "escalate",
/// },
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesGuardrailCodeCallback = new gcp.ces.Guardrail("ces_guardrail_code_callback", {
/// guardrailId: "guardrail-id",
/// location: cesAppForGuardrail.location,
/// app: cesAppForGuardrail.appId,
/// displayName: "my-guardrail",
/// description: "Guardrail description",
/// action: {
/// generativeAnswer: {
/// prompt: "example_prompt",
/// },
/// },
/// enabled: true,
/// codeCallback: {
/// beforeAgentCallback: {
/// description: "Example callback",
/// disabled: true,
/// pythonCode: `def callback(context):
/// return {'override': False}`,
/// },
/// afterAgentCallback: {
/// description: "Example callback",
/// disabled: true,
/// pythonCode: `def callback(context):
/// return {'override': False}`,
/// },
/// beforeModelCallback: {
/// description: "Example callback",
/// disabled: true,
/// pythonCode: `def callback(context):
/// return {'override': False}`,
/// },
/// afterModelCallback: {
/// description: "Example callback",
/// disabled: true,
/// pythonCode: `def callback(context):
/// return {'override': False}`,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_guardrail = gcp.ces.App("ces_app_for_guardrail",
/// app_id="app-id",
/// location="us",
/// description="App used as parent for CES Toolset example",
/// display_name="my-app",
/// language_settings={
/// "default_language_code": "en-US",
/// "supported_language_codes": [
/// "es-ES",
/// "fr-FR",
/// ],
/// "enable_multilingual_support": True,
/// "fallback_action": "escalate",
/// },
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_guardrail_code_callback = gcp.ces.Guardrail("ces_guardrail_code_callback",
/// guardrail_id="guardrail-id",
/// location=ces_app_for_guardrail.location,
/// app=ces_app_for_guardrail.app_id,
/// display_name="my-guardrail",
/// description="Guardrail description",
/// action={
/// "generative_answer": {
/// "prompt": "example_prompt",
/// },
/// },
/// enabled=True,
/// code_callback={
/// "before_agent_callback": {
/// "description": "Example callback",
/// "disabled": True,
/// "python_code": """def callback(context):
/// return {'override': False}""",
/// },
/// "after_agent_callback": {
/// "description": "Example callback",
/// "disabled": True,
/// "python_code": """def callback(context):
/// return {'override': False}""",
/// },
/// "before_model_callback": {
/// "description": "Example callback",
/// "disabled": True,
/// "python_code": """def callback(context):
/// return {'override': False}""",
/// },
/// "after_model_callback": {
/// "description": "Example callback",
/// "disabled": True,
/// "python_code": """def callback(context):
/// return {'override': False}""",
/// },
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
/// var cesAppForGuardrail = new Gcp.Ces.App("ces_app_for_guardrail", new()
/// {
/// AppId = "app-id",
/// Location = "us",
/// Description = "App used as parent for CES Toolset example",
/// DisplayName = "my-app",
/// LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
/// {
/// DefaultLanguageCode = "en-US",
/// SupportedLanguageCodes = new[]
/// {
/// "es-ES",
/// "fr-FR",
/// },
/// EnableMultilingualSupport = true,
/// FallbackAction = "escalate",
/// },
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesGuardrailCodeCallback = new Gcp.Ces.Guardrail("ces_guardrail_code_callback", new()
/// {
/// GuardrailId = "guardrail-id",
/// Location = cesAppForGuardrail.Location,
/// App = cesAppForGuardrail.AppId,
/// DisplayName = "my-guardrail",
/// Description = "Guardrail description",
/// Action = new Gcp.Ces.Inputs.GuardrailActionArgs
/// {
/// GenerativeAnswer = new Gcp.Ces.Inputs.GuardrailActionGenerativeAnswerArgs
/// {
/// Prompt = "example_prompt",
/// },
/// },
/// Enabled = true,
/// CodeCallback = new Gcp.Ces.Inputs.GuardrailCodeCallbackArgs
/// {
/// BeforeAgentCallback = new Gcp.Ces.Inputs.GuardrailCodeCallbackBeforeAgentCallbackArgs
/// {
/// Description = "Example callback",
/// Disabled = true,
/// PythonCode = @"def callback(context):
/// return {'override': False}",
/// },
/// AfterAgentCallback = new Gcp.Ces.Inputs.GuardrailCodeCallbackAfterAgentCallbackArgs
/// {
/// Description = "Example callback",
/// Disabled = true,
/// PythonCode = @"def callback(context):
/// return {'override': False}",
/// },
/// BeforeModelCallback = new Gcp.Ces.Inputs.GuardrailCodeCallbackBeforeModelCallbackArgs
/// {
/// Description = "Example callback",
/// Disabled = true,
/// PythonCode = @"def callback(context):
/// return {'override': False}",
/// },
/// AfterModelCallback = new Gcp.Ces.Inputs.GuardrailCodeCallbackAfterModelCallbackArgs
/// {
/// Description = "Example callback",
/// Disabled = true,
/// PythonCode = @"def callback(context):
/// return {'override': False}",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cesAppForGuardrail, err := ces.NewApp(ctx, "ces_app_for_guardrail", &ces.AppArgs{
/// AppId:       pulumi.String("app-id"),
/// Location:    pulumi.String("us"),
/// Description: pulumi.String("App used as parent for CES Toolset example"),
/// DisplayName: pulumi.String("my-app"),
/// LanguageSettings: &ces.AppLanguageSettingsArgs{
/// DefaultLanguageCode: pulumi.String("en-US"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("es-ES"),
/// pulumi.String("fr-FR"),
/// },
/// EnableMultilingualSupport: pulumi.Bool(true),
/// FallbackAction:            pulumi.String("escalate"),
/// },
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewGuardrail(ctx, "ces_guardrail_code_callback", &ces.GuardrailArgs{
/// GuardrailId: pulumi.String("guardrail-id"),
/// Location:    cesAppForGuardrail.Location,
/// App:         cesAppForGuardrail.AppId,
/// DisplayName: pulumi.String("my-guardrail"),
/// Description: pulumi.String("Guardrail description"),
/// Action: &ces.GuardrailActionArgs{
/// GenerativeAnswer: &ces.GuardrailActionGenerativeAnswerArgs{
/// Prompt: pulumi.String("example_prompt"),
/// },
/// },
/// Enabled: pulumi.Bool(true),
/// CodeCallback: &ces.GuardrailCodeCallbackArgs{
/// BeforeAgentCallback: &ces.GuardrailCodeCallbackBeforeAgentCallbackArgs{
/// Description: pulumi.String("Example callback"),
/// Disabled:    pulumi.Bool(true),
/// PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// },
/// AfterAgentCallback: &ces.GuardrailCodeCallbackAfterAgentCallbackArgs{
/// Description: pulumi.String("Example callback"),
/// Disabled:    pulumi.Bool(true),
/// PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// },
/// BeforeModelCallback: &ces.GuardrailCodeCallbackBeforeModelCallbackArgs{
/// Description: pulumi.String("Example callback"),
/// Disabled:    pulumi.Bool(true),
/// PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// },
/// AfterModelCallback: &ces.GuardrailCodeCallbackAfterModelCallbackArgs{
/// Description: pulumi.String("Example callback"),
/// Disabled:    pulumi.Bool(true),
/// PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// },
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Guardrail;
/// import com.pulumi.gcp.ces.GuardrailArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionGenerativeAnswerArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailCodeCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailCodeCallbackBeforeAgentCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailCodeCallbackAfterAgentCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailCodeCallbackBeforeModelCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailCodeCallbackAfterModelCallbackArgs;
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
/// var cesAppForGuardrail = new App("cesAppForGuardrail", AppArgs.builder()
/// .appId("app-id")
/// .location("us")
/// .description("App used as parent for CES Toolset example")
/// .displayName("my-app")
/// .languageSettings(AppLanguageSettingsArgs.builder()
/// .defaultLanguageCode("en-US")
/// .supportedLanguageCodes(
/// "es-ES",
/// "fr-FR")
/// .enableMultilingualSupport(true)
/// .fallbackAction("escalate")
/// .build())
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesGuardrailCodeCallback = new Guardrail("cesGuardrailCodeCallback", GuardrailArgs.builder()
/// .guardrailId("guardrail-id")
/// .location(cesAppForGuardrail.location())
/// .app(cesAppForGuardrail.appId())
/// .displayName("my-guardrail")
/// .description("Guardrail description")
/// .action(GuardrailActionArgs.builder()
/// .generativeAnswer(GuardrailActionGenerativeAnswerArgs.builder()
/// .prompt("example_prompt")
/// .build())
/// .build())
/// .enabled(true)
/// .codeCallback(GuardrailCodeCallbackArgs.builder()
/// .beforeAgentCallback(GuardrailCodeCallbackBeforeAgentCallbackArgs.builder()
/// .description("Example callback")
/// .disabled(true)
/// .pythonCode("""
/// def callback(context):
/// return {'override': False}                    """)
/// .build())
/// .afterAgentCallback(GuardrailCodeCallbackAfterAgentCallbackArgs.builder()
/// .description("Example callback")
/// .disabled(true)
/// .pythonCode("""
/// def callback(context):
/// return {'override': False}                    """)
/// .build())
/// .beforeModelCallback(GuardrailCodeCallbackBeforeModelCallbackArgs.builder()
/// .description("Example callback")
/// .disabled(true)
/// .pythonCode("""
/// def callback(context):
/// return {'override': False}                    """)
/// .build())
/// .afterModelCallback(GuardrailCodeCallbackAfterModelCallbackArgs.builder()
/// .description("Example callback")
/// .disabled(true)
/// .pythonCode("""
/// def callback(context):
/// return {'override': False}                    """)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cesAppForGuardrail:
/// type: gcp:ces:App
/// name: ces_app_for_guardrail
/// properties:
/// appId: app-id
/// location: us
/// description: App used as parent for CES Toolset example
/// displayName: my-app
/// languageSettings:
/// defaultLanguageCode: en-US
/// supportedLanguageCodes:
/// - es-ES
/// - fr-FR
/// enableMultilingualSupport: true
/// fallbackAction: escalate
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesGuardrailCodeCallback:
/// type: gcp:ces:Guardrail
/// name: ces_guardrail_code_callback
/// properties:
/// guardrailId: guardrail-id
/// location: ${cesAppForGuardrail.location}
/// app: ${cesAppForGuardrail.appId}
/// displayName: my-guardrail
/// description: Guardrail description
/// action:
/// generativeAnswer:
/// prompt: example_prompt
/// enabled: true
/// codeCallback:
/// beforeAgentCallback:
/// description: Example callback
/// disabled: true
/// pythonCode: |-
/// def callback(context):
/// return {'override': False}
/// afterAgentCallback:
/// description: Example callback
/// disabled: true
/// pythonCode: |-
/// def callback(context):
/// return {'override': False}
/// beforeModelCallback:
/// description: Example callback
/// disabled: true
/// pythonCode: |-
/// def callback(context):
/// return {'override': False}
/// afterModelCallback:
/// description: Example callback
/// disabled: true
/// pythonCode: |-
/// def callback(context):
/// return {'override': False}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Ces Guardrail Llm Policy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForGuardrail = new gcp.ces.App("ces_app_for_guardrail", {
/// appId: "app-id",
/// location: "us",
/// description: "App used as parent for CES Toolset example",
/// displayName: "my-app",
/// languageSettings: {
/// defaultLanguageCode: "en-US",
/// supportedLanguageCodes: [
/// "es-ES",
/// "fr-FR",
/// ],
/// enableMultilingualSupport: true,
/// fallbackAction: "escalate",
/// },
/// timeZoneSettings: {
/// timeZone: "America/Los_Angeles",
/// },
/// });
/// const cesGuardrailLlmPolicy = new gcp.ces.Guardrail("ces_guardrail_llm_policy", {
/// guardrailId: "guardrail-id",
/// location: cesAppForGuardrail.location,
/// app: cesAppForGuardrail.appId,
/// displayName: "my-guardrail",
/// description: "Guardrail description",
/// action: {
/// generativeAnswer: {
/// prompt: "example_prompt",
/// },
/// },
/// enabled: true,
/// llmPolicy: {
/// maxConversationMessages: 10,
/// modelSettings: {
/// model: "gemini-2.5-flash",
/// temperature: 50,
/// },
/// prompt: "example_prompt",
/// policyScope: "USER_QUERY",
/// failOpen: true,
/// allowShortUtterance: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_guardrail = gcp.ces.App("ces_app_for_guardrail",
/// app_id="app-id",
/// location="us",
/// description="App used as parent for CES Toolset example",
/// display_name="my-app",
/// language_settings={
/// "default_language_code": "en-US",
/// "supported_language_codes": [
/// "es-ES",
/// "fr-FR",
/// ],
/// "enable_multilingual_support": True,
/// "fallback_action": "escalate",
/// },
/// time_zone_settings={
/// "time_zone": "America/Los_Angeles",
/// })
/// ces_guardrail_llm_policy = gcp.ces.Guardrail("ces_guardrail_llm_policy",
/// guardrail_id="guardrail-id",
/// location=ces_app_for_guardrail.location,
/// app=ces_app_for_guardrail.app_id,
/// display_name="my-guardrail",
/// description="Guardrail description",
/// action={
/// "generative_answer": {
/// "prompt": "example_prompt",
/// },
/// },
/// enabled=True,
/// llm_policy={
/// "max_conversation_messages": 10,
/// "model_settings": {
/// "model": "gemini-2.5-flash",
/// "temperature": 50,
/// },
/// "prompt": "example_prompt",
/// "policy_scope": "USER_QUERY",
/// "fail_open": True,
/// "allow_short_utterance": True,
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
/// var cesAppForGuardrail = new Gcp.Ces.App("ces_app_for_guardrail", new()
/// {
/// AppId = "app-id",
/// Location = "us",
/// Description = "App used as parent for CES Toolset example",
/// DisplayName = "my-app",
/// LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
/// {
/// DefaultLanguageCode = "en-US",
/// SupportedLanguageCodes = new[]
/// {
/// "es-ES",
/// "fr-FR",
/// },
/// EnableMultilingualSupport = true,
/// FallbackAction = "escalate",
/// },
/// TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
/// {
/// TimeZone = "America/Los_Angeles",
/// },
/// });
///
/// var cesGuardrailLlmPolicy = new Gcp.Ces.Guardrail("ces_guardrail_llm_policy", new()
/// {
/// GuardrailId = "guardrail-id",
/// Location = cesAppForGuardrail.Location,
/// App = cesAppForGuardrail.AppId,
/// DisplayName = "my-guardrail",
/// Description = "Guardrail description",
/// Action = new Gcp.Ces.Inputs.GuardrailActionArgs
/// {
/// GenerativeAnswer = new Gcp.Ces.Inputs.GuardrailActionGenerativeAnswerArgs
/// {
/// Prompt = "example_prompt",
/// },
/// },
/// Enabled = true,
/// LlmPolicy = new Gcp.Ces.Inputs.GuardrailLlmPolicyArgs
/// {
/// MaxConversationMessages = 10,
/// ModelSettings = new Gcp.Ces.Inputs.GuardrailLlmPolicyModelSettingsArgs
/// {
/// Model = "gemini-2.5-flash",
/// Temperature = 50,
/// },
/// Prompt = "example_prompt",
/// PolicyScope = "USER_QUERY",
/// FailOpen = true,
/// AllowShortUtterance = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cesAppForGuardrail, err := ces.NewApp(ctx, "ces_app_for_guardrail", &ces.AppArgs{
/// AppId:       pulumi.String("app-id"),
/// Location:    pulumi.String("us"),
/// Description: pulumi.String("App used as parent for CES Toolset example"),
/// DisplayName: pulumi.String("my-app"),
/// LanguageSettings: &ces.AppLanguageSettingsArgs{
/// DefaultLanguageCode: pulumi.String("en-US"),
/// SupportedLanguageCodes: pulumi.StringArray{
/// pulumi.String("es-ES"),
/// pulumi.String("fr-FR"),
/// },
/// EnableMultilingualSupport: pulumi.Bool(true),
/// FallbackAction:            pulumi.String("escalate"),
/// },
/// TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// TimeZone: pulumi.String("America/Los_Angeles"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ces.NewGuardrail(ctx, "ces_guardrail_llm_policy", &ces.GuardrailArgs{
/// GuardrailId: pulumi.String("guardrail-id"),
/// Location:    cesAppForGuardrail.Location,
/// App:         cesAppForGuardrail.AppId,
/// DisplayName: pulumi.String("my-guardrail"),
/// Description: pulumi.String("Guardrail description"),
/// Action: &ces.GuardrailActionArgs{
/// GenerativeAnswer: &ces.GuardrailActionGenerativeAnswerArgs{
/// Prompt: pulumi.String("example_prompt"),
/// },
/// },
/// Enabled: pulumi.Bool(true),
/// LlmPolicy: &ces.GuardrailLlmPolicyArgs{
/// MaxConversationMessages: pulumi.Int(10),
/// ModelSettings: &ces.GuardrailLlmPolicyModelSettingsArgs{
/// Model:       pulumi.String("gemini-2.5-flash"),
/// Temperature: pulumi.Float64(50),
/// },
/// Prompt:              pulumi.String("example_prompt"),
/// PolicyScope:         pulumi.String("USER_QUERY"),
/// FailOpen:            pulumi.Bool(true),
/// AllowShortUtterance: pulumi.Bool(true),
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Guardrail;
/// import com.pulumi.gcp.ces.GuardrailArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionGenerativeAnswerArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailLlmPolicyArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailLlmPolicyModelSettingsArgs;
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
/// var cesAppForGuardrail = new App("cesAppForGuardrail", AppArgs.builder()
/// .appId("app-id")
/// .location("us")
/// .description("App used as parent for CES Toolset example")
/// .displayName("my-app")
/// .languageSettings(AppLanguageSettingsArgs.builder()
/// .defaultLanguageCode("en-US")
/// .supportedLanguageCodes(
/// "es-ES",
/// "fr-FR")
/// .enableMultilingualSupport(true)
/// .fallbackAction("escalate")
/// .build())
/// .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
/// .timeZone("America/Los_Angeles")
/// .build())
/// .build());
///
/// var cesGuardrailLlmPolicy = new Guardrail("cesGuardrailLlmPolicy", GuardrailArgs.builder()
/// .guardrailId("guardrail-id")
/// .location(cesAppForGuardrail.location())
/// .app(cesAppForGuardrail.appId())
/// .displayName("my-guardrail")
/// .description("Guardrail description")
/// .action(GuardrailActionArgs.builder()
/// .generativeAnswer(GuardrailActionGenerativeAnswerArgs.builder()
/// .prompt("example_prompt")
/// .build())
/// .build())
/// .enabled(true)
/// .llmPolicy(GuardrailLlmPolicyArgs.builder()
/// .maxConversationMessages(10)
/// .modelSettings(GuardrailLlmPolicyModelSettingsArgs.builder()
/// .model("gemini-2.5-flash")
/// .temperature(50.0)
/// .build())
/// .prompt("example_prompt")
/// .policyScope("USER_QUERY")
/// .failOpen(true)
/// .allowShortUtterance(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cesAppForGuardrail:
/// type: gcp:ces:App
/// name: ces_app_for_guardrail
/// properties:
/// appId: app-id
/// location: us
/// description: App used as parent for CES Toolset example
/// displayName: my-app
/// languageSettings:
/// defaultLanguageCode: en-US
/// supportedLanguageCodes:
/// - es-ES
/// - fr-FR
/// enableMultilingualSupport: true
/// fallbackAction: escalate
/// timeZoneSettings:
/// timeZone: America/Los_Angeles
/// cesGuardrailLlmPolicy:
/// type: gcp:ces:Guardrail
/// name: ces_guardrail_llm_policy
/// properties:
/// guardrailId: guardrail-id
/// location: ${cesAppForGuardrail.location}
/// app: ${cesAppForGuardrail.appId}
/// displayName: my-guardrail
/// description: Guardrail description
/// action:
/// generativeAnswer:
/// prompt: example_prompt
/// enabled: true
/// llmPolicy:
/// maxConversationMessages: 10
/// modelSettings:
/// model: gemini-2.5-flash
/// temperature: 50
/// prompt: example_prompt
/// policyScope: USER_QUERY
/// failOpen: true
/// allowShortUtterance: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Guardrail can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/guardrails/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Guardrail can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/guardrail:Guardrail default projects/{{project}}/locations/{{location}}/apps/{{app}}/guardrails/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/guardrail:Guardrail default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/guardrail:Guardrail default {{location}}/{{app}}/{{name}}
/// ```
class Guardrail extends CustomResource {
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  late final Output<GuardrailAction?> action;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> app;

  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  late final Output<GuardrailCodeCallback?> codeCallback;

  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  late final Output<GuardrailContentFilter?> contentFilter;

  /// Timestamp when the guardrail was created.
  late final Output<String> createTime;

  /// Description of the guardrail.
  late final Output<String?> description;

  /// Display name of the guardrail.
  late final Output<String> displayName;

  /// Whether the guardrail is enabled.
  late final Output<bool?> enabled;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final Output<String> etag;

  /// The ID to use for the guardrail, which will become the final component of
  /// the guardrail's resource name. If not provided, a unique ID will be
  /// automatically assigned for the guardrail.
  late final Output<String> guardrailId;

  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  late final Output<GuardrailLlmPolicy?> llmPolicy;

  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  late final Output<GuardrailLlmPromptSecurity?> llmPromptSecurity;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  late final Output<GuardrailModelSafety?> modelSafety;

  /// Identifier. The unique identifier of the guardrail.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Timestamp when the guardrail was last updated.
  late final Output<String> updateTime;

  Guardrail(
    String name, {
    GuardrailArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:ces/guardrail:Guardrail',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<GuardrailAction?>('action');
    this.app = registerOutput<String>('app');
    this.codeCallback = registerOutput<GuardrailCodeCallback?>('codeCallback');
    this.contentFilter =
        registerOutput<GuardrailContentFilter?>('contentFilter');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.etag = registerOutput<String>('etag');
    this.guardrailId = registerOutput<String>('guardrailId');
    this.llmPolicy = registerOutput<GuardrailLlmPolicy?>('llmPolicy');
    this.llmPromptSecurity =
        registerOutput<GuardrailLlmPromptSecurity?>('llmPromptSecurity');
    this.location = registerOutput<String>('location');
    this.modelSafety = registerOutput<GuardrailModelSafety?>('modelSafety');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
