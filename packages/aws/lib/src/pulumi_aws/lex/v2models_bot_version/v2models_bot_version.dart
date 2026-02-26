import 'package:pulumi/pulumi.dart';
import '../v2models_bot_version_locale_specification/v2models_bot_version_locale_specification.dart';
import '../v2models_bot_version_timeouts/v2models_bot_version_timeouts.dart';
import 'v2models_bot_version_args.dart';

/// Resource for managing an AWS Lex V2 Models Bot Version.
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
/// const test = new aws.lex.V2modelsBotVersion("test", {
/// botId: testAwsLexv2modelsBot.id,
/// localeSpecification: {
/// en_US: {
/// sourceBotVersion: "DRAFT",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lex.V2modelsBotVersion("test",
/// bot_id=test_aws_lexv2models_bot["id"],
/// locale_specification={
/// "en_US": {
/// "source_bot_version": "DRAFT",
/// },
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
/// var test = new Aws.Lex.V2modelsBotVersion("test", new()
/// {
/// BotId = testAwsLexv2modelsBot.Id,
/// LocaleSpecification =
/// {
/// { "en_US", new Aws.Lex.Inputs.V2modelsBotVersionLocaleSpecificationArgs
/// {
/// SourceBotVersion = "DRAFT",
/// } },
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
/// _, err := lex.NewV2modelsBotVersion(ctx, "test", &lex.V2modelsBotVersionArgs{
/// BotId: pulumi.Any(testAwsLexv2modelsBot.Id),
/// LocaleSpecification: lex.V2modelsBotVersionLocaleSpecificationMap{
/// "en_US": &lex.V2modelsBotVersionLocaleSpecificationArgs{
/// SourceBotVersion: pulumi.String("DRAFT"),
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
/// import com.pulumi.aws.lex.V2modelsBotVersion;
/// import com.pulumi.aws.lex.V2modelsBotVersionArgs;
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
/// var test = new V2modelsBotVersion("test", V2modelsBotVersionArgs.builder()
/// .botId(testAwsLexv2modelsBot.id())
/// .localeSpecification(Map.of("en_US", V2modelsBotVersionLocaleSpecificationArgs.builder()
/// .sourceBotVersion("DRAFT")
/// .build()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:lex:V2modelsBotVersion
/// properties:
/// botId: ${testAwsLexv2modelsBot.id}
/// localeSpecification:
/// en_US:
/// sourceBotVersion: DRAFT
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot Version using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBotVersion:V2modelsBotVersion example id-12345678,1
/// ```
class V2modelsBotVersion extends CustomResource {
  /// Idientifier of the bot to create the version for.
  late final Output<String> botId;

  /// Version number assigned to the version.
  late final Output<String> botVersion;

  /// A description of the version. Use the description to help identify the version in lists.
  /// * `sourceBotVersion` - (Required) The version of a bot used for a bot locale. Valid values: `DRAFT`, a numeric version.
  late final Output<String?> description;

  /// Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  late final Output<Map<String, V2modelsBotVersionLocaleSpecification>>
      localeSpecification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<V2modelsBotVersionTimeouts?> timeouts;

  V2modelsBotVersion(
    String name, {
    V2modelsBotVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBotVersion:V2modelsBotVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.botId = registerOutput<String>('botId');
    this.botVersion = registerOutput<String>('botVersion');
    this.description = registerOutput<String?>('description');
    this.localeSpecification =
        registerOutput<Map<String, V2modelsBotVersionLocaleSpecification>>(
            'localeSpecification');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<V2modelsBotVersionTimeouts?>('timeouts');
  }
}
