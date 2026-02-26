import 'package:pulumi/pulumi.dart';
import '../v2models_bot_locale_timeouts/v2models_bot_locale_timeouts.dart';
import '../v2models_bot_locale_voice_settings/v2models_bot_locale_voice_settings.dart';
import 'v2models_bot_locale_args.dart';

/// Resource for managing an AWS Lex V2 Models Bot Locale.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsBotLocale("example", {
/// botId: exampleAwsLexv2modelsBot.id,
/// botVersion: "DRAFT",
/// localeId: "en_US",
/// nLuIntentConfidenceThreshold: 0.7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsBotLocale("example",
/// bot_id=example_aws_lexv2models_bot["id"],
/// bot_version="DRAFT",
/// locale_id="en_US",
/// n_lu_intent_confidence_threshold=0.7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lex.V2modelsBotLocale("example", new()
/// {
/// BotId = exampleAwsLexv2modelsBot.Id,
/// BotVersion = "DRAFT",
/// LocaleId = "en_US",
/// NLuIntentConfidenceThreshold = 0.7,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lex.NewV2modelsBotLocale(ctx, "example", &lex.V2modelsBotLocaleArgs{
/// BotId:                        pulumi.Any(exampleAwsLexv2modelsBot.Id),
/// BotVersion:                   pulumi.String("DRAFT"),
/// LocaleId:                     pulumi.String("en_US"),
/// NLuIntentConfidenceThreshold: pulumi.Float64(0.7),
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
/// import com.pulumi.aws.lex.V2modelsBotLocale;
/// import com.pulumi.aws.lex.V2modelsBotLocaleArgs;
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
/// var example = new V2modelsBotLocale("example", V2modelsBotLocaleArgs.builder()
/// .botId(exampleAwsLexv2modelsBot.id())
/// .botVersion("DRAFT")
/// .localeId("en_US")
/// .nLuIntentConfidenceThreshold(0.7)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lex:V2modelsBotLocale
/// properties:
/// botId: ${exampleAwsLexv2modelsBot.id}
/// botVersion: DRAFT
/// localeId: en_US
/// nLuIntentConfidenceThreshold: 0.7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Voice Settings
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsBotLocale("example", {
/// botId: exampleAwsLexv2modelsBot.id,
/// botVersion: "DRAFT",
/// localeId: "en_US",
/// nLuIntentConfidenceThreshold: 0.7,
/// voiceSettings: {
/// voiceId: "Kendra",
/// engine: "standard",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsBotLocale("example",
/// bot_id=example_aws_lexv2models_bot["id"],
/// bot_version="DRAFT",
/// locale_id="en_US",
/// n_lu_intent_confidence_threshold=0.7,
/// voice_settings={
/// "voice_id": "Kendra",
/// "engine": "standard",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lex.V2modelsBotLocale("example", new()
/// {
/// BotId = exampleAwsLexv2modelsBot.Id,
/// BotVersion = "DRAFT",
/// LocaleId = "en_US",
/// NLuIntentConfidenceThreshold = 0.7,
/// VoiceSettings = new Aws.Lex.Inputs.V2modelsBotLocaleVoiceSettingsArgs
/// {
/// VoiceId = "Kendra",
/// Engine = "standard",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lex.NewV2modelsBotLocale(ctx, "example", &lex.V2modelsBotLocaleArgs{
/// BotId:                        pulumi.Any(exampleAwsLexv2modelsBot.Id),
/// BotVersion:                   pulumi.String("DRAFT"),
/// LocaleId:                     pulumi.String("en_US"),
/// NLuIntentConfidenceThreshold: pulumi.Float64(0.7),
/// VoiceSettings: &lex.V2modelsBotLocaleVoiceSettingsArgs{
/// VoiceId: pulumi.String("Kendra"),
/// Engine:  pulumi.String("standard"),
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
/// import com.pulumi.aws.lex.V2modelsBotLocale;
/// import com.pulumi.aws.lex.V2modelsBotLocaleArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsBotLocaleVoiceSettingsArgs;
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
/// var example = new V2modelsBotLocale("example", V2modelsBotLocaleArgs.builder()
/// .botId(exampleAwsLexv2modelsBot.id())
/// .botVersion("DRAFT")
/// .localeId("en_US")
/// .nLuIntentConfidenceThreshold(0.7)
/// .voiceSettings(V2modelsBotLocaleVoiceSettingsArgs.builder()
/// .voiceId("Kendra")
/// .engine("standard")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lex:V2modelsBotLocale
/// properties:
/// botId: ${exampleAwsLexv2modelsBot.id}
/// botVersion: DRAFT
/// localeId: en_US
/// nLuIntentConfidenceThreshold: 0.7
/// voiceSettings:
/// voiceId: Kendra
/// engine: standard
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot Locale using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBotLocale:V2modelsBotLocale example en_US,abcd-12345678,1
/// ```
class V2modelsBotLocale extends CustomResource {
  /// Identifier of the bot to create the locale for.
  late final Output<String> botId;

  /// Version of the bot to create the locale for. This can only be the draft version of the bot.
  late final Output<String> botVersion;

  /// Description of the bot locale. Use this to help identify the bot locale in lists.
  late final Output<String?> description;

  /// Identifier of the language and locale that the bot will be used in. The string must match one of the supported locales. All of the intents, slot types, and slots used in the bot must have the same locale. For more information, see Supported languages (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)
  late final Output<String> localeId;

  /// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents.
  ///
  /// The following arguments are optional:
  late final Output<double> nLuIntentConfidenceThreshold;

  /// Specified locale name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<V2modelsBotLocaleTimeouts?> timeouts;

  /// Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. See <span pulumi-lang-nodejs="`voiceSettings`" pulumi-lang-dotnet="`VoiceSettings`" pulumi-lang-go="`voiceSettings`" pulumi-lang-python="`voice_settings`" pulumi-lang-yaml="`voiceSettings`" pulumi-lang-java="`voiceSettings`">`voice_settings`</span>.
  late final Output<V2modelsBotLocaleVoiceSettings?> voiceSettings;

  V2modelsBotLocale(
    String name, {
    V2modelsBotLocaleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBotLocale:V2modelsBotLocale',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.botId = Output.createUnknown<String>();
    this.botVersion = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.localeId = Output.createUnknown<String>();
    this.nLuIntentConfidenceThreshold = Output.createUnknown<double>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<V2modelsBotLocaleTimeouts?>();
    this.voiceSettings =
        Output.createUnknown<V2modelsBotLocaleVoiceSettings?>();
  }
}
