import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_args.dart';
import 'intent_conclusion_statement.dart';
import 'intent_confirmation_prompt.dart';
import 'intent_dialog_code_hook.dart';
import 'intent_follow_up_prompt.dart';
import 'intent_fulfillment_activity.dart';
import 'intent_rejection_statement.dart';
import 'intent_slot.dart';

/// Provides an Amazon Lex Intent resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowersIntent = new aws.lex.Intent("order_flowers_intent", {
///     confirmationPrompt: {
///         maxAttempts: 2,
///         messages: [{
///             content: "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?",
///             contentType: "PlainText",
///         }],
///     },
///     createVersion: false,
///     name: "OrderFlowers",
///     description: "Intent to order a bouquet of flowers for pick up",
///     fulfillmentActivity: {
///         type: "ReturnIntent",
///     },
///     rejectionStatement: {
///         messages: [{
///             content: "Okay, I will not place your order.",
///             contentType: "PlainText",
///         }],
///     },
///     sampleUtterances: [
///         "I would like to order some flowers",
///         "I would like to pick up flowers",
///     ],
///     slots: [
///         {
///             description: "The type of flowers to pick up",
///             name: "FlowerType",
///             priority: 1,
///             sampleUtterances: ["I would like to order {FlowerType}"],
///             slotConstraint: "Required",
///             slotType: "FlowerTypes",
///             slotTypeVersion: "$$LATEST",
///             valueElicitationPrompt: {
///                 maxAttempts: 2,
///                 messages: [{
///                     content: "What type of flowers would you like to order?",
///                     contentType: "PlainText",
///                 }],
///             },
///         },
///         {
///             description: "The date to pick up the flowers",
///             name: "PickupDate",
///             priority: 2,
///             sampleUtterances: ["I would like to order {FlowerType}"],
///             slotConstraint: "Required",
///             slotType: "AMAZON.DATE",
///             slotTypeVersion: "$$LATEST",
///             valueElicitationPrompt: {
///                 maxAttempts: 2,
///                 messages: [{
///                     content: "What day do you want the {FlowerType} to be picked up?",
///                     contentType: "PlainText",
///                 }],
///             },
///         },
///         {
///             description: "The time to pick up the flowers",
///             name: "PickupTime",
///             priority: 3,
///             sampleUtterances: ["I would like to order {FlowerType}"],
///             slotConstraint: "Required",
///             slotType: "AMAZON.TIME",
///             slotTypeVersion: "$$LATEST",
///             valueElicitationPrompt: {
///                 maxAttempts: 2,
///                 messages: [{
///                     content: "Pick up the {FlowerType} at what time on {PickupDate}?",
///                     contentType: "PlainText",
///                 }],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_intent = aws.lex.Intent("order_flowers_intent",
///     confirmation_prompt={
///         "max_attempts": 2,
///         "messages": [{
///             "content": "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?",
///             "content_type": "PlainText",
///         }],
///     },
///     create_version=False,
///     name="OrderFlowers",
///     description="Intent to order a bouquet of flowers for pick up",
///     fulfillment_activity={
///         "type": "ReturnIntent",
///     },
///     rejection_statement={
///         "messages": [{
///             "content": "Okay, I will not place your order.",
///             "content_type": "PlainText",
///         }],
///     },
///     sample_utterances=[
///         "I would like to order some flowers",
///         "I would like to pick up flowers",
///     ],
///     slots=[
///         {
///             "description": "The type of flowers to pick up",
///             "name": "FlowerType",
///             "priority": 1,
///             "sample_utterances": ["I would like to order {FlowerType}"],
///             "slot_constraint": "Required",
///             "slot_type": "FlowerTypes",
///             "slot_type_version": "$$LATEST",
///             "value_elicitation_prompt": {
///                 "max_attempts": 2,
///                 "messages": [{
///                     "content": "What type of flowers would you like to order?",
///                     "content_type": "PlainText",
///                 }],
///             },
///         },
///         {
///             "description": "The date to pick up the flowers",
///             "name": "PickupDate",
///             "priority": 2,
///             "sample_utterances": ["I would like to order {FlowerType}"],
///             "slot_constraint": "Required",
///             "slot_type": "AMAZON.DATE",
///             "slot_type_version": "$$LATEST",
///             "value_elicitation_prompt": {
///                 "max_attempts": 2,
///                 "messages": [{
///                     "content": "What day do you want the {FlowerType} to be picked up?",
///                     "content_type": "PlainText",
///                 }],
///             },
///         },
///         {
///             "description": "The time to pick up the flowers",
///             "name": "PickupTime",
///             "priority": 3,
///             "sample_utterances": ["I would like to order {FlowerType}"],
///             "slot_constraint": "Required",
///             "slot_type": "AMAZON.TIME",
///             "slot_type_version": "$$LATEST",
///             "value_elicitation_prompt": {
///                 "max_attempts": 2,
///                 "messages": [{
///                     "content": "Pick up the {FlowerType} at what time on {PickupDate}?",
///                     "content_type": "PlainText",
///                 }],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orderFlowersIntent = new Aws.Lex.Intent("order_flowers_intent", new()
///     {
///         ConfirmationPrompt = new Aws.Lex.Inputs.IntentConfirmationPromptArgs
///         {
///             MaxAttempts = 2,
///             Messages = new[]
///             {
///                 new Aws.Lex.Inputs.IntentConfirmationPromptMessageArgs
///                 {
///                     Content = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?",
///                     ContentType = "PlainText",
///                 },
///             },
///         },
///         CreateVersion = false,
///         Name = "OrderFlowers",
///         Description = "Intent to order a bouquet of flowers for pick up",
///         FulfillmentActivity = new Aws.Lex.Inputs.IntentFulfillmentActivityArgs
///         {
///             Type = "ReturnIntent",
///         },
///         RejectionStatement = new Aws.Lex.Inputs.IntentRejectionStatementArgs
///         {
///             Messages = new[]
///             {
///                 new Aws.Lex.Inputs.IntentRejectionStatementMessageArgs
///                 {
///                     Content = "Okay, I will not place your order.",
///                     ContentType = "PlainText",
///                 },
///             },
///         },
///         SampleUtterances = new[]
///         {
///             "I would like to order some flowers",
///             "I would like to pick up flowers",
///         },
///         Slots = new[]
///         {
///             new Aws.Lex.Inputs.IntentSlotArgs
///             {
///                 Description = "The type of flowers to pick up",
///                 Name = "FlowerType",
///                 Priority = 1,
///                 SampleUtterances = new[]
///                 {
///                     "I would like to order {FlowerType}",
///                 },
///                 SlotConstraint = "Required",
///                 SlotType = "FlowerTypes",
///                 SlotTypeVersion = "$$LATEST",
///                 ValueElicitationPrompt = new Aws.Lex.Inputs.IntentSlotValueElicitationPromptArgs
///                 {
///                     MaxAttempts = 2,
///                     Messages = new[]
///                     {
///                         new Aws.Lex.Inputs.IntentSlotValueElicitationPromptMessageArgs
///                         {
///                             Content = "What type of flowers would you like to order?",
///                             ContentType = "PlainText",
///                         },
///                     },
///                 },
///             },
///             new Aws.Lex.Inputs.IntentSlotArgs
///             {
///                 Description = "The date to pick up the flowers",
///                 Name = "PickupDate",
///                 Priority = 2,
///                 SampleUtterances = new[]
///                 {
///                     "I would like to order {FlowerType}",
///                 },
///                 SlotConstraint = "Required",
///                 SlotType = "AMAZON.DATE",
///                 SlotTypeVersion = "$$LATEST",
///                 ValueElicitationPrompt = new Aws.Lex.Inputs.IntentSlotValueElicitationPromptArgs
///                 {
///                     MaxAttempts = 2,
///                     Messages = new[]
///                     {
///                         new Aws.Lex.Inputs.IntentSlotValueElicitationPromptMessageArgs
///                         {
///                             Content = "What day do you want the {FlowerType} to be picked up?",
///                             ContentType = "PlainText",
///                         },
///                     },
///                 },
///             },
///             new Aws.Lex.Inputs.IntentSlotArgs
///             {
///                 Description = "The time to pick up the flowers",
///                 Name = "PickupTime",
///                 Priority = 3,
///                 SampleUtterances = new[]
///                 {
///                     "I would like to order {FlowerType}",
///                 },
///                 SlotConstraint = "Required",
///                 SlotType = "AMAZON.TIME",
///                 SlotTypeVersion = "$$LATEST",
///                 ValueElicitationPrompt = new Aws.Lex.Inputs.IntentSlotValueElicitationPromptArgs
///                 {
///                     MaxAttempts = 2,
///                     Messages = new[]
///                     {
///                         new Aws.Lex.Inputs.IntentSlotValueElicitationPromptMessageArgs
///                         {
///                             Content = "Pick up the {FlowerType} at what time on {PickupDate}?",
///                             ContentType = "PlainText",
///                         },
///                     },
///                 },
///             },
///         },
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
/// 		_, err := lex.NewIntent(ctx, "order_flowers_intent", &lex.IntentArgs{
/// 			ConfirmationPrompt: &lex.IntentConfirmationPromptArgs{
/// 				MaxAttempts: pulumi.Int(2),
/// 				Messages: lex.IntentConfirmationPromptMessageArray{
/// 					&lex.IntentConfirmationPromptMessageArgs{
/// 						Content:     pulumi.String("Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?"),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 			},
/// 			CreateVersion: pulumi.Bool(false),
/// 			Name:          pulumi.String("OrderFlowers"),
/// 			Description:   pulumi.String("Intent to order a bouquet of flowers for pick up"),
/// 			FulfillmentActivity: &lex.IntentFulfillmentActivityArgs{
/// 				Type: pulumi.String("ReturnIntent"),
/// 			},
/// 			RejectionStatement: &lex.IntentRejectionStatementArgs{
/// 				Messages: lex.IntentRejectionStatementMessageArray{
/// 					&lex.IntentRejectionStatementMessageArgs{
/// 						Content:     pulumi.String("Okay, I will not place your order."),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 			},
/// 			SampleUtterances: pulumi.StringArray{
/// 				pulumi.String("I would like to order some flowers"),
/// 				pulumi.String("I would like to pick up flowers"),
/// 			},
/// 			Slots: lex.IntentSlotArray{
/// 				&lex.IntentSlotArgs{
/// 					Description: pulumi.String("The type of flowers to pick up"),
/// 					Name:        pulumi.String("FlowerType"),
/// 					Priority:    pulumi.Int(1),
/// 					SampleUtterances: pulumi.StringArray{
/// 						pulumi.String("I would like to order {FlowerType}"),
/// 					},
/// 					SlotConstraint:  pulumi.String("Required"),
/// 					SlotType:        pulumi.String("FlowerTypes"),
/// 					SlotTypeVersion: pulumi.String("$$LATEST"),
/// 					ValueElicitationPrompt: &lex.IntentSlotValueElicitationPromptArgs{
/// 						MaxAttempts: pulumi.Int(2),
/// 						Messages: lex.IntentSlotValueElicitationPromptMessageArray{
/// 							&lex.IntentSlotValueElicitationPromptMessageArgs{
/// 								Content:     pulumi.String("What type of flowers would you like to order?"),
/// 								ContentType: pulumi.String("PlainText"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&lex.IntentSlotArgs{
/// 					Description: pulumi.String("The date to pick up the flowers"),
/// 					Name:        pulumi.String("PickupDate"),
/// 					Priority:    pulumi.Int(2),
/// 					SampleUtterances: pulumi.StringArray{
/// 						pulumi.String("I would like to order {FlowerType}"),
/// 					},
/// 					SlotConstraint:  pulumi.String("Required"),
/// 					SlotType:        pulumi.String("AMAZON.DATE"),
/// 					SlotTypeVersion: pulumi.String("$$LATEST"),
/// 					ValueElicitationPrompt: &lex.IntentSlotValueElicitationPromptArgs{
/// 						MaxAttempts: pulumi.Int(2),
/// 						Messages: lex.IntentSlotValueElicitationPromptMessageArray{
/// 							&lex.IntentSlotValueElicitationPromptMessageArgs{
/// 								Content:     pulumi.String("What day do you want the {FlowerType} to be picked up?"),
/// 								ContentType: pulumi.String("PlainText"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&lex.IntentSlotArgs{
/// 					Description: pulumi.String("The time to pick up the flowers"),
/// 					Name:        pulumi.String("PickupTime"),
/// 					Priority:    pulumi.Int(3),
/// 					SampleUtterances: pulumi.StringArray{
/// 						pulumi.String("I would like to order {FlowerType}"),
/// 					},
/// 					SlotConstraint:  pulumi.String("Required"),
/// 					SlotType:        pulumi.String("AMAZON.TIME"),
/// 					SlotTypeVersion: pulumi.String("$$LATEST"),
/// 					ValueElicitationPrompt: &lex.IntentSlotValueElicitationPromptArgs{
/// 						MaxAttempts: pulumi.Int(2),
/// 						Messages: lex.IntentSlotValueElicitationPromptMessageArray{
/// 							&lex.IntentSlotValueElicitationPromptMessageArgs{
/// 								Content:     pulumi.String("Pick up the {FlowerType} at what time on {PickupDate}?"),
/// 								ContentType: pulumi.String("PlainText"),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.aws.lex.Intent;
/// import com.pulumi.aws.lex.IntentArgs;
/// import com.pulumi.aws.lex.inputs.IntentConfirmationPromptArgs;
/// import com.pulumi.aws.lex.inputs.IntentFulfillmentActivityArgs;
/// import com.pulumi.aws.lex.inputs.IntentRejectionStatementArgs;
/// import com.pulumi.aws.lex.inputs.IntentSlotArgs;
/// import com.pulumi.aws.lex.inputs.IntentSlotValueElicitationPromptArgs;
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
///         var orderFlowersIntent = new Intent("orderFlowersIntent", IntentArgs.builder()
///             .confirmationPrompt(IntentConfirmationPromptArgs.builder()
///                 .maxAttempts(2)
///                 .messages(IntentConfirmationPromptMessageArgs.builder()
///                     .content("Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .createVersion(false)
///             .name("OrderFlowers")
///             .description("Intent to order a bouquet of flowers for pick up")
///             .fulfillmentActivity(IntentFulfillmentActivityArgs.builder()
///                 .type("ReturnIntent")
///                 .build())
///             .rejectionStatement(IntentRejectionStatementArgs.builder()
///                 .messages(IntentRejectionStatementMessageArgs.builder()
///                     .content("Okay, I will not place your order.")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .sampleUtterances(
///                 "I would like to order some flowers",
///                 "I would like to pick up flowers")
///             .slots(
///                 IntentSlotArgs.builder()
///                     .description("The type of flowers to pick up")
///                     .name("FlowerType")
///                     .priority(1)
///                     .sampleUtterances("I would like to order {FlowerType}")
///                     .slotConstraint("Required")
///                     .slotType("FlowerTypes")
///                     .slotTypeVersion("$$LATEST")
///                     .valueElicitationPrompt(IntentSlotValueElicitationPromptArgs.builder()
///                         .maxAttempts(2)
///                         .messages(IntentSlotValueElicitationPromptMessageArgs.builder()
///                             .content("What type of flowers would you like to order?")
///                             .contentType("PlainText")
///                             .build())
///                         .build())
///                     .build(),
///                 IntentSlotArgs.builder()
///                     .description("The date to pick up the flowers")
///                     .name("PickupDate")
///                     .priority(2)
///                     .sampleUtterances("I would like to order {FlowerType}")
///                     .slotConstraint("Required")
///                     .slotType("AMAZON.DATE")
///                     .slotTypeVersion("$$LATEST")
///                     .valueElicitationPrompt(IntentSlotValueElicitationPromptArgs.builder()
///                         .maxAttempts(2)
///                         .messages(IntentSlotValueElicitationPromptMessageArgs.builder()
///                             .content("What day do you want the {FlowerType} to be picked up?")
///                             .contentType("PlainText")
///                             .build())
///                         .build())
///                     .build(),
///                 IntentSlotArgs.builder()
///                     .description("The time to pick up the flowers")
///                     .name("PickupTime")
///                     .priority(3)
///                     .sampleUtterances("I would like to order {FlowerType}")
///                     .slotConstraint("Required")
///                     .slotType("AMAZON.TIME")
///                     .slotTypeVersion("$$LATEST")
///                     .valueElicitationPrompt(IntentSlotValueElicitationPromptArgs.builder()
///                         .maxAttempts(2)
///                         .messages(IntentSlotValueElicitationPromptMessageArgs.builder()
///                             .content("Pick up the {FlowerType} at what time on {PickupDate}?")
///                             .contentType("PlainText")
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   orderFlowersIntent:
///     type: aws:lex:Intent
///     name: order_flowers_intent
///     properties:
///       confirmationPrompt:
///         maxAttempts: 2
///         messages:
///           - content: Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?
///             contentType: PlainText
///       createVersion: false
///       name: OrderFlowers
///       description: Intent to order a bouquet of flowers for pick up
///       fulfillmentActivity:
///         type: ReturnIntent
///       rejectionStatement:
///         messages:
///           - content: Okay, I will not place your order.
///             contentType: PlainText
///       sampleUtterances:
///         - I would like to order some flowers
///         - I would like to pick up flowers
///       slots:
///         - description: The type of flowers to pick up
///           name: FlowerType
///           priority: 1
///           sampleUtterances:
///             - I would like to order {FlowerType}
///           slotConstraint: Required
///           slotType: FlowerTypes
///           slotTypeVersion: $$LATEST
///           valueElicitationPrompt:
///             maxAttempts: 2
///             messages:
///               - content: What type of flowers would you like to order?
///                 contentType: PlainText
///         - description: The date to pick up the flowers
///           name: PickupDate
///           priority: 2
///           sampleUtterances:
///             - I would like to order {FlowerType}
///           slotConstraint: Required
///           slotType: AMAZON.DATE
///           slotTypeVersion: $$LATEST
///           valueElicitationPrompt:
///             maxAttempts: 2
///             messages:
///               - content: What day do you want the {FlowerType} to be picked up?
///                 contentType: PlainText
///         - description: The time to pick up the flowers
///           name: PickupTime
///           priority: 3
///           sampleUtterances:
///             - I would like to order {FlowerType}
///           slotConstraint: Required
///           slotType: AMAZON.TIME
///           slotTypeVersion: $$LATEST
///           valueElicitationPrompt:
///             maxAttempts: 2
///             messages:
///               - content: Pick up the {FlowerType} at what time on {PickupDate}?
///                 contentType: PlainText
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import intents using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lex/intent:Intent order_flowers_intent OrderFlowers
/// ```
class Intent extends pulumi.CustomResource {
  /// The ARN of the Lex intent.
  late final pulumi.Output<String> arn;

  /// Checksum identifying the version of the intent that was created. The checksum is not
  /// included as an argument because the resource will add it automatically when updating the intent.
  late final pulumi.Output<String> checksum;

  /// The statement that you want Amazon Lex to convey to the user
  /// after the intent is successfully fulfilled by the Lambda function. This element is relevant only if
  /// you provide a Lambda function in the `fulfillment_activity`. If you return the intent to the client
  /// application, you can't specify this element. The `follow_up_prompt` and `conclusion_statement` are
  /// mutually exclusive. You can specify only one. Attributes are documented under statement.
  late final pulumi.Output<IntentConclusionStatement?> conclusionStatement;

  /// Prompts the user to confirm the intent. This question should
  /// have a yes or no answer. You you must provide both the `rejection_statement` and `confirmation_prompt`,
  /// or neither. Attributes are documented under prompt.
  late final pulumi.Output<IntentConfirmationPrompt?> confirmationPrompt;

  /// Determines if a new slot type version is created when the initial
  /// resource is created and on each update. Defaults to `false`.
  late final pulumi.Output<bool?> createVersion;

  /// The date when the intent version was created.
  late final pulumi.Output<String> createdDate;

  /// A description of the intent. Must be less than or equal to 200 characters in length.
  late final pulumi.Output<String?> description;

  /// Specifies a Lambda function to invoke for each user input. You can
  /// invoke this Lambda function to personalize user interaction. Attributes are documented under code_hook.
  late final pulumi.Output<IntentDialogCodeHook?> dialogCodeHook;

  /// Amazon Lex uses this prompt to solicit additional activity after
  /// fulfilling an intent. For example, after the OrderPizza intent is fulfilled, you might prompt the
  /// user to order a drink. The `follow_up_prompt` field and the `conclusion_statement` field are mutually
  /// exclusive. You can specify only one. Attributes are documented under follow_up_prompt.
  late final pulumi.Output<IntentFollowUpPrompt?> followUpPrompt;

  /// Describes how the intent is fulfilled. For example, after a
  /// user provides all of the information for a pizza order, `fulfillment_activity` defines how the bot
  /// places an order with a local pizza store. Attributes are documented under fulfillment_activity.
  late final pulumi.Output<IntentFulfillmentActivity> fulfillmentActivity;

  /// The date when the $LATEST version of this intent was updated.
  late final pulumi.Output<String> lastUpdatedDate;

  /// The name of the intent, not case sensitive. Must be less than or equal to 100 characters in length.
  late final pulumi.Output<String> name;

  /// A unique identifier for the built-in intent to base this
  /// intent on. To find the signature for an intent, see
  /// [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
  /// in the Alexa Skills Kit.
  late final pulumi.Output<String?> parentIntentSignature;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// When the user answers "no" to the question defined in
  /// `confirmation_prompt`, Amazon Lex responds with this statement to acknowledge that the intent was
  /// canceled. You must provide both the `rejection_statement` and the `confirmation_prompt`, or neither.
  /// Attributes are documented under statement.
  late final pulumi.Output<IntentRejectionStatement?> rejectionStatement;

  /// An array of utterances (strings) that a user might say to signal
  /// the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".
  /// In each utterance, a slot name is enclosed in curly braces. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
  late final pulumi.Output<List<String>?> sampleUtterances;

  /// An list of intent slots. At runtime, Amazon Lex elicits required slot values
  /// from the user using prompts defined in the slots. Attributes are documented under slot.
  late final pulumi.Output<List<IntentSlot>?> slots;

  /// The version of the bot.
  late final pulumi.Output<String> version;

  /// Creates a new [Intent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Intent]. {@macro pulumi_lex_intent_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Intent(String name, {IntentArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:lex/intent:Intent',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.checksum = registerOutput<String>('checksum');
    this.conclusionStatement = registerOutput<IntentConclusionStatement?>(
      'conclusionStatement',
    );
    this.confirmationPrompt = registerOutput<IntentConfirmationPrompt?>(
      'confirmationPrompt',
    );
    this.createVersion = registerOutput<bool?>('createVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.dialogCodeHook = registerOutput<IntentDialogCodeHook?>(
      'dialogCodeHook',
    );
    this.followUpPrompt = registerOutput<IntentFollowUpPrompt?>(
      'followUpPrompt',
    );
    this.fulfillmentActivity = registerOutput<IntentFulfillmentActivity>(
      'fulfillmentActivity',
    );
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    this.parentIntentSignature = registerOutput<String?>(
      'parentIntentSignature',
    );
    this.region = registerOutput<String>('region');
    this.rejectionStatement = registerOutput<IntentRejectionStatement?>(
      'rejectionStatement',
    );
    this.sampleUtterances = registerOutput<List<String>?>('sampleUtterances');
    this.slots = registerOutput<List<IntentSlot>?>('slots');
    this.version = registerOutput<String>('version');
  }
}
