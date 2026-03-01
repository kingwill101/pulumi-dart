import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_abort_statement.dart';
import 'bot_args.dart';
import 'bot_clarification_prompt.dart';
import 'bot_intent.dart';

/// Provides an Amazon Lex Bot resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowersBot = new aws.lex.Bot("order_flowers_bot", {
///     abortStatement: {
///         messages: [{
///             content: "Sorry, I am not able to assist at this time",
///             contentType: "PlainText",
///         }],
///     },
///     childDirected: false,
///     clarificationPrompt: {
///         maxAttempts: 2,
///         messages: [{
///             content: "I didn't understand you, what would you like to do?",
///             contentType: "PlainText",
///         }],
///     },
///     createVersion: false,
///     description: "Bot to order flowers on the behalf of a user",
///     idleSessionTtlInSeconds: 600,
///     intents: [{
///         intentName: "OrderFlowers",
///         intentVersion: "1",
///     }],
///     locale: "en-US",
///     name: "OrderFlowers",
///     processBehavior: "BUILD",
///     voiceId: "Salli",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_bot = aws.lex.Bot("order_flowers_bot",
///     abort_statement={
///         "messages": [{
///             "content": "Sorry, I am not able to assist at this time",
///             "content_type": "PlainText",
///         }],
///     },
///     child_directed=False,
///     clarification_prompt={
///         "max_attempts": 2,
///         "messages": [{
///             "content": "I didn't understand you, what would you like to do?",
///             "content_type": "PlainText",
///         }],
///     },
///     create_version=False,
///     description="Bot to order flowers on the behalf of a user",
///     idle_session_ttl_in_seconds=600,
///     intents=[{
///         "intent_name": "OrderFlowers",
///         "intent_version": "1",
///     }],
///     locale="en-US",
///     name="OrderFlowers",
///     process_behavior="BUILD",
///     voice_id="Salli")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orderFlowersBot = new Aws.Lex.Bot("order_flowers_bot", new()
///     {
///         AbortStatement = new Aws.Lex.Inputs.BotAbortStatementArgs
///         {
///             Messages = new[]
///             {
///                 new Aws.Lex.Inputs.BotAbortStatementMessageArgs
///                 {
///                     Content = "Sorry, I am not able to assist at this time",
///                     ContentType = "PlainText",
///                 },
///             },
///         },
///         ChildDirected = false,
///         ClarificationPrompt = new Aws.Lex.Inputs.BotClarificationPromptArgs
///         {
///             MaxAttempts = 2,
///             Messages = new[]
///             {
///                 new Aws.Lex.Inputs.BotClarificationPromptMessageArgs
///                 {
///                     Content = "I didn't understand you, what would you like to do?",
///                     ContentType = "PlainText",
///                 },
///             },
///         },
///         CreateVersion = false,
///         Description = "Bot to order flowers on the behalf of a user",
///         IdleSessionTtlInSeconds = 600,
///         Intents = new[]
///         {
///             new Aws.Lex.Inputs.BotIntentArgs
///             {
///                 IntentName = "OrderFlowers",
///                 IntentVersion = "1",
///             },
///         },
///         Locale = "en-US",
///         Name = "OrderFlowers",
///         ProcessBehavior = "BUILD",
///         VoiceId = "Salli",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.NewBot(ctx, "order_flowers_bot", &lex.BotArgs{
/// 			AbortStatement: &lex.BotAbortStatementArgs{
/// 				Messages: lex.BotAbortStatementMessageArray{
/// 					&lex.BotAbortStatementMessageArgs{
/// 						Content:     pulumi.String("Sorry, I am not able to assist at this time"),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 			},
/// 			ChildDirected: pulumi.Bool(false),
/// 			ClarificationPrompt: &lex.BotClarificationPromptArgs{
/// 				MaxAttempts: pulumi.Int(2),
/// 				Messages: lex.BotClarificationPromptMessageArray{
/// 					&lex.BotClarificationPromptMessageArgs{
/// 						Content:     pulumi.String("I didn't understand you, what would you like to do?"),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 			},
/// 			CreateVersion:           pulumi.Bool(false),
/// 			Description:             pulumi.String("Bot to order flowers on the behalf of a user"),
/// 			IdleSessionTtlInSeconds: pulumi.Int(600),
/// 			Intents: lex.BotIntentArray{
/// 				&lex.BotIntentArgs{
/// 					IntentName:    pulumi.String("OrderFlowers"),
/// 					IntentVersion: pulumi.String("1"),
/// 				},
/// 			},
/// 			Locale:          pulumi.String("en-US"),
/// 			Name:            pulumi.String("OrderFlowers"),
/// 			ProcessBehavior: pulumi.String("BUILD"),
/// 			VoiceId:         pulumi.String("Salli"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.Bot;
/// import com.pulumi.aws.lex.BotArgs;
/// import com.pulumi.aws.lex.inputs.BotAbortStatementArgs;
/// import com.pulumi.aws.lex.inputs.BotClarificationPromptArgs;
/// import com.pulumi.aws.lex.inputs.BotIntentArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var orderFlowersBot = new Bot("orderFlowersBot", BotArgs.builder()
///             .abortStatement(BotAbortStatementArgs.builder()
///                 .messages(BotAbortStatementMessageArgs.builder()
///                     .content("Sorry, I am not able to assist at this time")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .childDirected(false)
///             .clarificationPrompt(BotClarificationPromptArgs.builder()
///                 .maxAttempts(2)
///                 .messages(BotClarificationPromptMessageArgs.builder()
///                     .content("I didn't understand you, what would you like to do?")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .createVersion(false)
///             .description("Bot to order flowers on the behalf of a user")
///             .idleSessionTtlInSeconds(600)
///             .intents(BotIntentArgs.builder()
///                 .intentName("OrderFlowers")
///                 .intentVersion("1")
///                 .build())
///             .locale("en-US")
///             .name("OrderFlowers")
///             .processBehavior("BUILD")
///             .voiceId("Salli")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   orderFlowersBot:
///     type: aws:lex:Bot
///     name: order_flowers_bot
///     properties:
///       abortStatement:
///         messages:
///           - content: Sorry, I am not able to assist at this time
///             contentType: PlainText
///       childDirected: false
///       clarificationPrompt:
///         maxAttempts: 2
///         messages:
///           - content: I didn't understand you, what would you like to do?
///             contentType: PlainText
///       createVersion: false
///       description: Bot to order flowers on the behalf of a user
///       idleSessionTtlInSeconds: 600
///       intents:
///         - intentName: OrderFlowers
///           intentVersion: '1'
///       locale: en-US
///       name: OrderFlowers
///       processBehavior: BUILD
///       voiceId: Salli
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import bots using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lex/bot:Bot order_flowers_bot OrderFlowers
/// ```
class Bot extends pulumi.CustomResource {
  /// The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement.
  late final pulumi.Output<BotAbortStatement> abortStatement;
  late final pulumi.Output<String> arn;

  /// Checksum identifying the version of the bot that was created. The checksum is not
  /// included as an argument because the resource will add it automatically when updating the bot.
  late final pulumi.Output<String> checksum;

  /// By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the [Amazon Lex FAQ](https://aws.amazon.com/lex/faqs#data-security) and the [Amazon Lex PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-childDirected).
  late final pulumi.Output<bool> childDirected;

  /// The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt.
  late final pulumi.Output<BotClarificationPrompt?> clarificationPrompt;

  /// Determines if a new bot version is created when the initial resource is created and on each update. Defaults to `false`.
  late final pulumi.Output<bool?> createVersion;

  /// The date when the bot version was created.
  late final pulumi.Output<String> createdDate;

  /// A description of the bot. Must be less than or equal to 200 characters in length.
  late final pulumi.Output<String?> description;

  /// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is `false`.
  late final pulumi.Output<bool?> detectSentiment;

  /// Set to `true` to enable access to natural language understanding improvements. When you set the `enable_model_improvements` parameter to true you can use the `nlu_intent_confidence_threshold` parameter to configure confidence scores. For more information, see [Confidence Scores](https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html). You can only set the `enable_model_improvements` parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-enableModelImprovements).
  late final pulumi.Output<bool?> enableModelImprovements;

  /// If status is FAILED, Amazon Lex provides the reason that it failed to build the bot.
  late final pulumi.Output<String> failureReason;

  /// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is `300`. Must be a number between 60 and 86400 (inclusive).
  late final pulumi.Output<int?> idleSessionTtlInSeconds;

  /// A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects.
  late final pulumi.Output<List<BotIntent>> intents;

  /// The date when the $LATEST version of this bot was updated.
  late final pulumi.Output<String> lastUpdatedDate;

  /// Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-locale). Default is `en-US`.
  late final pulumi.Output<String?> locale;

  /// The name of the bot that you want to create, case sensitive. Must be between 2 and 50 characters in length.
  late final pulumi.Output<String> name;

  /// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-nluIntentConfidenceThreshold) This value requires `enable_model_improvements` to be set to `true` and the default is `0`. Must be a float between 0 and 1.
  late final pulumi.Output<double?> nluIntentConfidenceThreshold;

  /// If you set the `process_behavior` element to `BUILD`, Amazon Lex builds the bot so that it can be run. If you set the element to `SAVE` Amazon Lex saves the bot, but doesn't build it. Default is `SAVE`.
  late final pulumi.Output<String?> processBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// When you send a request to create or update a bot, Amazon Lex sets the status response
  /// element to BUILDING. After Amazon Lex builds the bot, it sets status to READY. If Amazon Lex can't
  /// build the bot, it sets status to FAILED. Amazon Lex returns the reason for the failure in the
  /// failure_reason response element.
  late final pulumi.Output<String> status;

  /// The version of the bot.
  late final pulumi.Output<String> version;

  /// The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see [Available Voices](http://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in the Amazon Polly Developer Guide.
  late final pulumi.Output<String> voiceId;

  /// Creates a new [Bot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bot]. {@macro pulumi_lex_bot_bot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bot(String name, {BotArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:lex/bot:Bot',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.abortStatement = registerOutput<BotAbortStatement>('abortStatement');
    this.arn = registerOutput<String>('arn');
    this.checksum = registerOutput<String>('checksum');
    this.childDirected = registerOutput<bool>('childDirected');
    this.clarificationPrompt = registerOutput<BotClarificationPrompt?>(
      'clarificationPrompt',
    );
    this.createVersion = registerOutput<bool?>('createVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.detectSentiment = registerOutput<bool?>('detectSentiment');
    this.enableModelImprovements = registerOutput<bool?>(
      'enableModelImprovements',
    );
    this.failureReason = registerOutput<String>('failureReason');
    this.idleSessionTtlInSeconds = registerOutput<int?>(
      'idleSessionTtlInSeconds',
    );
    this.intents = registerOutput<List<BotIntent>>('intents');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.locale = registerOutput<String?>('locale');
    this.name = registerOutput<String>('name');
    this.nluIntentConfidenceThreshold = registerOutput<double?>(
      'nluIntentConfidenceThreshold',
    );
    this.processBehavior = registerOutput<String?>('processBehavior');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.version = registerOutput<String>('version');
    this.voiceId = registerOutput<String>('voiceId');
  }
}
