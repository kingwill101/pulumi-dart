import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_association_args.dart';
import 'bot_association_lex_bot.dart';
import 'bot_association_state.dart';

/// Allows the specified Amazon Connect instance to access the specified Amazon Lex (V1) bot. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html) and [Add an Amazon Lex bot](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-lex.html).
///
/// &gt; **NOTE:** This resource only currently supports Amazon Lex (V1) Associations.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.BotAssociation("example", {
///     instanceId: exampleAwsConnectInstance.id,
///     lexBot: {
///         lexRegion: "us-west-2",
///         name: "Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.BotAssociation("example",
///     instance_id=example_aws_connect_instance["id"],
///     lex_bot={
///         "lex_region": "us-west-2",
///         "name": "Test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.BotAssociation("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         LexBot = new Aws.Connect.Inputs.BotAssociationLexBotArgs
///         {
///             LexRegion = "us-west-2",
///             Name = "Test",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewBotAssociation(ctx, "example", &connect.BotAssociationArgs{
/// 			InstanceId: pulumi.Any(exampleAwsConnectInstance.Id),
/// 			LexBot: &connect.BotAssociationLexBotArgs{
/// 				LexRegion: pulumi.String("us-west-2"),
/// 				Name:      pulumi.String("Test"),
/// 			},
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
/// import com.pulumi.aws.connect.BotAssociation;
/// import com.pulumi.aws.connect.BotAssociationArgs;
/// import com.pulumi.aws.connect.inputs.BotAssociationLexBotArgs;
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
///         var example = new BotAssociation("example", BotAssociationArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .lexBot(BotAssociationLexBotArgs.builder()
///                 .lexRegion("us-west-2")
///                 .name("Test")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:BotAssociation
///     properties:
///       instanceId: ${exampleAwsConnectInstance.id}
///       lexBot:
///         lexRegion: us-west-2
///         name: Test
/// ```
///
///
/// ### Including a sample Lex bot
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = new aws.lex.Intent("example", {
///     createVersion: true,
///     name: "connect_lex_intent",
///     fulfillmentActivity: {
///         type: "ReturnIntent",
///     },
///     sampleUtterances: ["I would like to pick up flowers."],
/// });
/// const exampleBot = new aws.lex.Bot("example", {
///     abortStatement: {
///         messages: [{
///             content: "Sorry, I am not able to assist at this time.",
///             contentType: "PlainText",
///         }],
///     },
///     clarificationPrompt: {
///         maxAttempts: 2,
///         messages: [{
///             content: "I didn't understand you, what would you like to do?",
///             contentType: "PlainText",
///         }],
///     },
///     intents: [{
///         intentName: example.name,
///         intentVersion: "1",
///     }],
///     childDirected: false,
///     name: "connect_lex_bot",
///     processBehavior: "BUILD",
/// });
/// const exampleBotAssociation = new aws.connect.BotAssociation("example", {
///     instanceId: exampleAwsConnectInstance.id,
///     lexBot: {
///         lexRegion: current.then(current => current.region),
///         name: exampleBot.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.lex.Intent("example",
///     create_version=True,
///     name="connect_lex_intent",
///     fulfillment_activity={
///         "type": "ReturnIntent",
///     },
///     sample_utterances=["I would like to pick up flowers."])
/// example_bot = aws.lex.Bot("example",
///     abort_statement={
///         "messages": [{
///             "content": "Sorry, I am not able to assist at this time.",
///             "content_type": "PlainText",
///         }],
///     },
///     clarification_prompt={
///         "max_attempts": 2,
///         "messages": [{
///             "content": "I didn't understand you, what would you like to do?",
///             "content_type": "PlainText",
///         }],
///     },
///     intents=[{
///         "intent_name": example.name,
///         "intent_version": "1",
///     }],
///     child_directed=False,
///     name="connect_lex_bot",
///     process_behavior="BUILD")
/// example_bot_association = aws.connect.BotAssociation("example",
///     instance_id=example_aws_connect_instance["id"],
///     lex_bot={
///         "lex_region": current.region,
///         "name": example_bot.name,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Lex.Intent("example", new()
///     {
///         CreateVersion = true,
///         Name = "connect_lex_intent",
///         FulfillmentActivity = new Aws.Lex.Inputs.IntentFulfillmentActivityArgs
///         {
///             Type = "ReturnIntent",
///         },
///         SampleUtterances = new[]
///         {
///             "I would like to pick up flowers.",
///         },
///     });
///
///     var exampleBot = new Aws.Lex.Bot("example", new()
///     {
///         AbortStatement = new Aws.Lex.Inputs.BotAbortStatementArgs
///         {
///             Messages = new[]
///             {
///                 new Aws.Lex.Inputs.BotAbortStatementMessageArgs
///                 {
///                     Content = "Sorry, I am not able to assist at this time.",
///                     ContentType = "PlainText",
///                 },
///             },
///         },
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
///         Intents = new[]
///         {
///             new Aws.Lex.Inputs.BotIntentArgs
///             {
///                 IntentName = example.Name,
///                 IntentVersion = "1",
///             },
///         },
///         ChildDirected = false,
///         Name = "connect_lex_bot",
///         ProcessBehavior = "BUILD",
///     });
///
///     var exampleBotAssociation = new Aws.Connect.BotAssociation("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         LexBot = new Aws.Connect.Inputs.BotAssociationLexBotArgs
///         {
///             LexRegion = current.Apply(getRegionResult => getRegionResult.Region),
///             Name = exampleBot.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := lex.NewIntent(ctx, "example", &lex.IntentArgs{
/// 			CreateVersion: pulumi.Bool(true),
/// 			Name:          pulumi.String("connect_lex_intent"),
/// 			FulfillmentActivity: &lex.IntentFulfillmentActivityArgs{
/// 				Type: pulumi.String("ReturnIntent"),
/// 			},
/// 			SampleUtterances: pulumi.StringArray{
/// 				pulumi.String("I would like to pick up flowers."),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBot, err := lex.NewBot(ctx, "example", &lex.BotArgs{
/// 			AbortStatement: &lex.BotAbortStatementArgs{
/// 				Messages: lex.BotAbortStatementMessageArray{
/// 					&lex.BotAbortStatementMessageArgs{
/// 						Content:     pulumi.String("Sorry, I am not able to assist at this time."),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 			},
/// 			ClarificationPrompt: &lex.BotClarificationPromptArgs{
/// 				MaxAttempts: pulumi.Int(2),
/// 				Messages: lex.BotClarificationPromptMessageArray{
/// 					&lex.BotClarificationPromptMessageArgs{
/// 						Content:     pulumi.String("I didn't understand you, what would you like to do?"),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 			},
/// 			Intents: lex.BotIntentArray{
/// 				&lex.BotIntentArgs{
/// 					IntentName:    example.Name,
/// 					IntentVersion: pulumi.String("1"),
/// 				},
/// 			},
/// 			ChildDirected:   pulumi.Bool(false),
/// 			Name:            pulumi.String("connect_lex_bot"),
/// 			ProcessBehavior: pulumi.String("BUILD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = connect.NewBotAssociation(ctx, "example", &connect.BotAssociationArgs{
/// 			InstanceId: pulumi.Any(exampleAwsConnectInstance.Id),
/// 			LexBot: &connect.BotAssociationLexBotArgs{
/// 				LexRegion: pulumi.String(current.Region),
/// 				Name:      exampleBot.Name,
/// 			},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.lex.Intent;
/// import com.pulumi.aws.lex.IntentArgs;
/// import com.pulumi.aws.lex.inputs.IntentFulfillmentActivityArgs;
/// import com.pulumi.aws.lex.Bot;
/// import com.pulumi.aws.lex.BotArgs;
/// import com.pulumi.aws.lex.inputs.BotAbortStatementArgs;
/// import com.pulumi.aws.lex.inputs.BotClarificationPromptArgs;
/// import com.pulumi.aws.lex.inputs.BotIntentArgs;
/// import com.pulumi.aws.connect.BotAssociation;
/// import com.pulumi.aws.connect.BotAssociationArgs;
/// import com.pulumi.aws.connect.inputs.BotAssociationLexBotArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Intent("example", IntentArgs.builder()
///             .createVersion(true)
///             .name("connect_lex_intent")
///             .fulfillmentActivity(IntentFulfillmentActivityArgs.builder()
///                 .type("ReturnIntent")
///                 .build())
///             .sampleUtterances("I would like to pick up flowers.")
///             .build());
///
///         var exampleBot = new Bot("exampleBot", BotArgs.builder()
///             .abortStatement(BotAbortStatementArgs.builder()
///                 .messages(BotAbortStatementMessageArgs.builder()
///                     .content("Sorry, I am not able to assist at this time.")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .clarificationPrompt(BotClarificationPromptArgs.builder()
///                 .maxAttempts(2)
///                 .messages(BotClarificationPromptMessageArgs.builder()
///                     .content("I didn't understand you, what would you like to do?")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .intents(BotIntentArgs.builder()
///                 .intentName(example.name())
///                 .intentVersion("1")
///                 .build())
///             .childDirected(false)
///             .name("connect_lex_bot")
///             .processBehavior("BUILD")
///             .build());
///
///         var exampleBotAssociation = new BotAssociation("exampleBotAssociation", BotAssociationArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .lexBot(BotAssociationLexBotArgs.builder()
///                 .lexRegion(current.region())
///                 .name(exampleBot.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lex:Intent
///     properties:
///       createVersion: true
///       name: connect_lex_intent
///       fulfillmentActivity:
///         type: ReturnIntent
///       sampleUtterances:
///         - I would like to pick up flowers.
///   exampleBot:
///     type: aws:lex:Bot
///     name: example
///     properties:
///       abortStatement:
///         messages:
///           - content: Sorry, I am not able to assist at this time.
///             contentType: PlainText
///       clarificationPrompt:
///         maxAttempts: 2
///         messages:
///           - content: I didn't understand you, what would you like to do?
///             contentType: PlainText
///       intents:
///         - intentName: ${example.name}
///           intentVersion: '1'
///       childDirected: false
///       name: connect_lex_bot
///       processBehavior: BUILD
///   exampleBotAssociation:
///     type: aws:connect:BotAssociation
///     name: example
///     properties:
///       instanceId: ${exampleAwsConnectInstance.id}
///       lexBot:
///         lexRegion: ${current.region}
///         name: ${exampleBot.name}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.connect.BotAssociation` using the Amazon Connect instance ID, Lex (V1) bot name, and Lex (V1) bot region separated by colons (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/botAssociation:BotAssociation example aaaaaaaa-bbbb-cccc-dddd-111111111111:Example:us-west-2
/// ```
class BotAssociation extends pulumi.CustomResource {
  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  late final pulumi.Output<String> instanceId;

  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  late final pulumi.Output<BotAssociationLexBot> lexBot;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BotAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BotAssociation]. {@macro pulumi_connect_bot_association_bot_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BotAssociation(
    String name, {
    BotAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/botAssociation:BotAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    lexBot = registerOutput<BotAssociationLexBot>('lexBot');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BotAssociation] resource's state with the given [name] and [id].
  static BotAssociation get(
    String name,
    pulumi.Input<String> id, {
    BotAssociationState? state,
  }) {
    return BotAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BotAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/botAssociation:BotAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    lexBot = registerOutput<BotAssociationLexBot>('lexBot');
    region = registerOutput<String>('region');
  }
}
