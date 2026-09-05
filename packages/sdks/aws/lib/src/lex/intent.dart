import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_args.dart';
import 'intent_conclusion_statement.dart';
import 'intent_confirmation_prompt.dart';
import 'intent_dialog_code_hook.dart';
import 'intent_follow_up_prompt.dart';
import 'intent_fulfillment_activity.dart';
import 'intent_rejection_statement.dart';
import 'intent_slot.dart';
import 'intent_state.dart';

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
///         messages: [{
///             content: "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?",
///             contentType: "PlainText",
///         }],
///         maxAttempts: 2,
///     },
///     fulfillmentActivity: {
///         type: "ReturnIntent",
///     },
///     rejectionStatement: {
///         messages: [{
///             content: "Okay, I will not place your order.",
///             contentType: "PlainText",
///         }],
///     },
///     slots: [
///         {
///             valueElicitationPrompt: {
///                 messages: [{
///                     content: "What type of flowers would you like to order?",
///                     contentType: "PlainText",
///                 }],
///                 maxAttempts: 2,
///             },
///             description: "The type of flowers to pick up",
///             name: "FlowerType",
///             priority: 1,
///             sampleUtterances: ["I would like to order {FlowerType}"],
///             slotConstraint: "Required",
///             slotType: "FlowerTypes",
///             slotTypeVersion: "$$LATEST",
///         },
///         {
///             valueElicitationPrompt: {
///                 messages: [{
///                     content: "What day do you want the {FlowerType} to be picked up?",
///                     contentType: "PlainText",
///                 }],
///                 maxAttempts: 2,
///             },
///             description: "The date to pick up the flowers",
///             name: "PickupDate",
///             priority: 2,
///             sampleUtterances: ["I would like to order {FlowerType}"],
///             slotConstraint: "Required",
///             slotType: "AMAZON.DATE",
///             slotTypeVersion: "$$LATEST",
///         },
///         {
///             valueElicitationPrompt: {
///                 messages: [{
///                     content: "Pick up the {FlowerType} at what time on {PickupDate}?",
///                     contentType: "PlainText",
///                 }],
///                 maxAttempts: 2,
///             },
///             description: "The time to pick up the flowers",
///             name: "PickupTime",
///             priority: 3,
///             sampleUtterances: ["I would like to order {FlowerType}"],
///             slotConstraint: "Required",
///             slotType: "AMAZON.TIME",
///             slotTypeVersion: "$$LATEST",
///         },
///     ],
///     createVersion: false,
///     name: "OrderFlowers",
///     description: "Intent to order a bouquet of flowers for pick up",
///     sampleUtterances: [
///         "I would like to order some flowers",
///         "I would like to pick up flowers",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_intent = aws.lex.Intent("order_flowers_intent",
///     confirmation_prompt={
///         "messages": [{
///             "content": "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?",
///             "content_type": "PlainText",
///         }],
///         "max_attempts": 2,
///     },
///     fulfillment_activity={
///         "type": "ReturnIntent",
///     },
///     rejection_statement={
///         "messages": [{
///             "content": "Okay, I will not place your order.",
///             "content_type": "PlainText",
///         }],
///     },
///     slots=[
///         {
///             "value_elicitation_prompt": {
///                 "messages": [{
///                     "content": "What type of flowers would you like to order?",
///                     "content_type": "PlainText",
///                 }],
///                 "max_attempts": 2,
///             },
///             "description": "The type of flowers to pick up",
///             "name": "FlowerType",
///             "priority": 1,
///             "sample_utterances": ["I would like to order {FlowerType}"],
///             "slot_constraint": "Required",
///             "slot_type": "FlowerTypes",
///             "slot_type_version": "$$LATEST",
///         },
///         {
///             "value_elicitation_prompt": {
///                 "messages": [{
///                     "content": "What day do you want the {FlowerType} to be picked up?",
///                     "content_type": "PlainText",
///                 }],
///                 "max_attempts": 2,
///             },
///             "description": "The date to pick up the flowers",
///             "name": "PickupDate",
///             "priority": 2,
///             "sample_utterances": ["I would like to order {FlowerType}"],
///             "slot_constraint": "Required",
///             "slot_type": "AMAZON.DATE",
///             "slot_type_version": "$$LATEST",
///         },
///         {
///             "value_elicitation_prompt": {
///                 "messages": [{
///                     "content": "Pick up the {FlowerType} at what time on {PickupDate}?",
///                     "content_type": "PlainText",
///                 }],
///                 "max_attempts": 2,
///             },
///             "description": "The time to pick up the flowers",
///             "name": "PickupTime",
///             "priority": 3,
///             "sample_utterances": ["I would like to order {FlowerType}"],
///             "slot_constraint": "Required",
///             "slot_type": "AMAZON.TIME",
///             "slot_type_version": "$$LATEST",
///         },
///     ],
///     create_version=False,
///     name="OrderFlowers",
///     description="Intent to order a bouquet of flowers for pick up",
///     sample_utterances=[
///         "I would like to order some flowers",
///         "I would like to pick up flowers",
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
///             Messages = new[]
///             {
///                 new Aws.Lex.Inputs.IntentConfirmationPromptMessageArgs
///                 {
///                     Content = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?",
///                     ContentType = "PlainText",
///                 },
///             },
///             MaxAttempts = 2,
///         },
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
///         Slots = new[]
///         {
///             new Aws.Lex.Inputs.IntentSlotArgs
///             {
///                 ValueElicitationPrompt = new Aws.Lex.Inputs.IntentSlotValueElicitationPromptArgs
///                 {
///                     Messages = new[]
///                     {
///                         new Aws.Lex.Inputs.IntentSlotValueElicitationPromptMessageArgs
///                         {
///                             Content = "What type of flowers would you like to order?",
///                             ContentType = "PlainText",
///                         },
///                     },
///                     MaxAttempts = 2,
///                 },
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
///             },
///             new Aws.Lex.Inputs.IntentSlotArgs
///             {
///                 ValueElicitationPrompt = new Aws.Lex.Inputs.IntentSlotValueElicitationPromptArgs
///                 {
///                     Messages = new[]
///                     {
///                         new Aws.Lex.Inputs.IntentSlotValueElicitationPromptMessageArgs
///                         {
///                             Content = "What day do you want the {FlowerType} to be picked up?",
///                             ContentType = "PlainText",
///                         },
///                     },
///                     MaxAttempts = 2,
///                 },
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
///             },
///             new Aws.Lex.Inputs.IntentSlotArgs
///             {
///                 ValueElicitationPrompt = new Aws.Lex.Inputs.IntentSlotValueElicitationPromptArgs
///                 {
///                     Messages = new[]
///                     {
///                         new Aws.Lex.Inputs.IntentSlotValueElicitationPromptMessageArgs
///                         {
///                             Content = "Pick up the {FlowerType} at what time on {PickupDate}?",
///                             ContentType = "PlainText",
///                         },
///                     },
///                     MaxAttempts = 2,
///                 },
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
///             },
///         },
///         CreateVersion = false,
///         Name = "OrderFlowers",
///         Description = "Intent to order a bouquet of flowers for pick up",
///         SampleUtterances = new[]
///         {
///             "I would like to order some flowers",
///             "I would like to pick up flowers",
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
/// 				Messages: lex.IntentConfirmationPromptMessageArray{
/// 					&lex.IntentConfirmationPromptMessageArgs{
/// 						Content:     pulumi.String("Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?"),
/// 						ContentType: pulumi.String("PlainText"),
/// 					},
/// 				},
/// 				MaxAttempts: pulumi.Int(2),
/// 			},
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
/// 			Slots: lex.IntentSlotArray{
/// 				&lex.IntentSlotArgs{
/// 					ValueElicitationPrompt: &lex.IntentSlotValueElicitationPromptArgs{
/// 						Messages: lex.IntentSlotValueElicitationPromptMessageArray{
/// 							&lex.IntentSlotValueElicitationPromptMessageArgs{
/// 								Content:     pulumi.String("What type of flowers would you like to order?"),
/// 								ContentType: pulumi.String("PlainText"),
/// 							},
/// 						},
/// 						MaxAttempts: pulumi.Int(2),
/// 					},
/// 					Description: pulumi.String("The type of flowers to pick up"),
/// 					Name:        pulumi.String("FlowerType"),
/// 					Priority:    pulumi.Int(1),
/// 					SampleUtterances: pulumi.StringArray{
/// 						pulumi.String("I would like to order {FlowerType}"),
/// 					},
/// 					SlotConstraint:  pulumi.String("Required"),
/// 					SlotType:        pulumi.String("FlowerTypes"),
/// 					SlotTypeVersion: pulumi.String("$$LATEST"),
/// 				},
/// 				&lex.IntentSlotArgs{
/// 					ValueElicitationPrompt: &lex.IntentSlotValueElicitationPromptArgs{
/// 						Messages: lex.IntentSlotValueElicitationPromptMessageArray{
/// 							&lex.IntentSlotValueElicitationPromptMessageArgs{
/// 								Content:     pulumi.String("What day do you want the {FlowerType} to be picked up?"),
/// 								ContentType: pulumi.String("PlainText"),
/// 							},
/// 						},
/// 						MaxAttempts: pulumi.Int(2),
/// 					},
/// 					Description: pulumi.String("The date to pick up the flowers"),
/// 					Name:        pulumi.String("PickupDate"),
/// 					Priority:    pulumi.Int(2),
/// 					SampleUtterances: pulumi.StringArray{
/// 						pulumi.String("I would like to order {FlowerType}"),
/// 					},
/// 					SlotConstraint:  pulumi.String("Required"),
/// 					SlotType:        pulumi.String("AMAZON.DATE"),
/// 					SlotTypeVersion: pulumi.String("$$LATEST"),
/// 				},
/// 				&lex.IntentSlotArgs{
/// 					ValueElicitationPrompt: &lex.IntentSlotValueElicitationPromptArgs{
/// 						Messages: lex.IntentSlotValueElicitationPromptMessageArray{
/// 							&lex.IntentSlotValueElicitationPromptMessageArgs{
/// 								Content:     pulumi.String("Pick up the {FlowerType} at what time on {PickupDate}?"),
/// 								ContentType: pulumi.String("PlainText"),
/// 							},
/// 						},
/// 						MaxAttempts: pulumi.Int(2),
/// 					},
/// 					Description: pulumi.String("The time to pick up the flowers"),
/// 					Name:        pulumi.String("PickupTime"),
/// 					Priority:    pulumi.Int(3),
/// 					SampleUtterances: pulumi.StringArray{
/// 						pulumi.String("I would like to order {FlowerType}"),
/// 					},
/// 					SlotConstraint:  pulumi.String("Required"),
/// 					SlotType:        pulumi.String("AMAZON.TIME"),
/// 					SlotTypeVersion: pulumi.String("$$LATEST"),
/// 				},
/// 			},
/// 			CreateVersion: pulumi.Bool(false),
/// 			Name:          pulumi.String("OrderFlowers"),
/// 			Description:   pulumi.String("Intent to order a bouquet of flowers for pick up"),
/// 			SampleUtterances: pulumi.StringArray{
/// 				pulumi.String("I would like to order some flowers"),
/// 				pulumi.String("I would like to pick up flowers"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lex_intent" "order_flowers_intent" {
///   confirmation_prompt = {
///     messages = [{
///       "content"     = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?"
///       "contentType" = "PlainText"
///     }]
///     max_attempts = 2
///   }
///   fulfillment_activity = {
///     type = "ReturnIntent"
///   }
///   rejection_statement = {
///     messages = [{
///       "content"     = "Okay, I will not place your order."
///       "contentType" = "PlainText"
///     }]
///   }
///   slots {
///     value_elicitation_prompt = {
///       messages = [{
///         "content"     = "What type of flowers would you like to order?"
///         "contentType" = "PlainText"
///       }]
///       max_attempts = 2
///     }
///     description       = "The type of flowers to pick up"
///     name              = "FlowerType"
///     priority          = 1
///     sample_utterances = ["I would like to order {FlowerType}"]
///     slot_constraint   = "Required"
///     slot_type         = "FlowerTypes"
///     slot_type_version = "$$LATEST"
///   }
///   slots {
///     value_elicitation_prompt = {
///       messages = [{
///         "content"     = "What day do you want the {FlowerType} to be picked up?"
///         "contentType" = "PlainText"
///       }]
///       max_attempts = 2
///     }
///     description       = "The date to pick up the flowers"
///     name              = "PickupDate"
///     priority          = 2
///     sample_utterances = ["I would like to order {FlowerType}"]
///     slot_constraint   = "Required"
///     slot_type         = "AMAZON.DATE"
///     slot_type_version = "$$LATEST"
///   }
///   slots {
///     value_elicitation_prompt = {
///       messages = [{
///         "content"     = "Pick up the {FlowerType} at what time on {PickupDate}?"
///         "contentType" = "PlainText"
///       }]
///       max_attempts = 2
///     }
///     description       = "The time to pick up the flowers"
///     name              = "PickupTime"
///     priority          = 3
///     sample_utterances = ["I would like to order {FlowerType}"]
///     slot_constraint   = "Required"
///     slot_type         = "AMAZON.TIME"
///     slot_type_version = "$$LATEST"
///   }
///   create_version    = false
///   name              = "OrderFlowers"
///   description       = "Intent to order a bouquet of flowers for pick up"
///   sample_utterances = ["I would like to order some flowers", "I would like to pick up flowers"]
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
/// import com.pulumi.aws.lex.inputs.IntentConfirmationPromptMessageArgs;
/// import com.pulumi.aws.lex.inputs.IntentFulfillmentActivityArgs;
/// import com.pulumi.aws.lex.inputs.IntentRejectionStatementArgs;
/// import com.pulumi.aws.lex.inputs.IntentRejectionStatementMessageArgs;
/// import com.pulumi.aws.lex.inputs.IntentSlotArgs;
/// import com.pulumi.aws.lex.inputs.IntentSlotValueElicitationPromptArgs;
/// import com.pulumi.aws.lex.inputs.IntentSlotValueElicitationPromptMessageArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///                 .messages(IntentConfirmationPromptMessageArgs.builder()
///                     .content("Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?")
///                     .contentType("PlainText")
///                     .build())
///                 .maxAttempts(2)
///                 .build())
///             .fulfillmentActivity(IntentFulfillmentActivityArgs.builder()
///                 .type("ReturnIntent")
///                 .build())
///             .rejectionStatement(IntentRejectionStatementArgs.builder()
///                 .messages(IntentRejectionStatementMessageArgs.builder()
///                     .content("Okay, I will not place your order.")
///                     .contentType("PlainText")
///                     .build())
///                 .build())
///             .slots(
///                 IntentSlotArgs.builder()
///                     .valueElicitationPrompt(IntentSlotValueElicitationPromptArgs.builder()
///                         .messages(IntentSlotValueElicitationPromptMessageArgs.builder()
///                             .content("What type of flowers would you like to order?")
///                             .contentType("PlainText")
///                             .build())
///                         .maxAttempts(2)
///                         .build())
///                     .description("The type of flowers to pick up")
///                     .name("FlowerType")
///                     .priority(1)
///                     .sampleUtterances("I would like to order {FlowerType}")
///                     .slotConstraint("Required")
///                     .slotType("FlowerTypes")
///                     .slotTypeVersion("$$LATEST")
///                     .build(),
///                 IntentSlotArgs.builder()
///                     .valueElicitationPrompt(IntentSlotValueElicitationPromptArgs.builder()
///                         .messages(IntentSlotValueElicitationPromptMessageArgs.builder()
///                             .content("What day do you want the {FlowerType} to be picked up?")
///                             .contentType("PlainText")
///                             .build())
///                         .maxAttempts(2)
///                         .build())
///                     .description("The date to pick up the flowers")
///                     .name("PickupDate")
///                     .priority(2)
///                     .sampleUtterances("I would like to order {FlowerType}")
///                     .slotConstraint("Required")
///                     .slotType("AMAZON.DATE")
///                     .slotTypeVersion("$$LATEST")
///                     .build(),
///                 IntentSlotArgs.builder()
///                     .valueElicitationPrompt(IntentSlotValueElicitationPromptArgs.builder()
///                         .messages(IntentSlotValueElicitationPromptMessageArgs.builder()
///                             .content("Pick up the {FlowerType} at what time on {PickupDate}?")
///                             .contentType("PlainText")
///                             .build())
///                         .maxAttempts(2)
///                         .build())
///                     .description("The time to pick up the flowers")
///                     .name("PickupTime")
///                     .priority(3)
///                     .sampleUtterances("I would like to order {FlowerType}")
///                     .slotConstraint("Required")
///                     .slotType("AMAZON.TIME")
///                     .slotTypeVersion("$$LATEST")
///                     .build())
///             .createVersion(false)
///             .name("OrderFlowers")
///             .description("Intent to order a bouquet of flowers for pick up")
///             .sampleUtterances(
///                 "I would like to order some flowers",
///                 "I would like to pick up flowers")
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
///         messages:
///           - content: Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?
///             contentType: PlainText
///         maxAttempts: 2
///       fulfillmentActivity:
///         type: ReturnIntent
///       rejectionStatement:
///         messages:
///           - content: Okay, I will not place your order.
///             contentType: PlainText
///       slots:
///         - valueElicitationPrompt:
///             messages:
///               - content: What type of flowers would you like to order?
///                 contentType: PlainText
///             maxAttempts: 2
///           description: The type of flowers to pick up
///           name: FlowerType
///           priority: 1
///           sampleUtterances:
///             - I would like to order {FlowerType}
///           slotConstraint: Required
///           slotType: FlowerTypes
///           slotTypeVersion: $$LATEST
///         - valueElicitationPrompt:
///             messages:
///               - content: What day do you want the {FlowerType} to be picked up?
///                 contentType: PlainText
///             maxAttempts: 2
///           description: The date to pick up the flowers
///           name: PickupDate
///           priority: 2
///           sampleUtterances:
///             - I would like to order {FlowerType}
///           slotConstraint: Required
///           slotType: AMAZON.DATE
///           slotTypeVersion: $$LATEST
///         - valueElicitationPrompt:
///             messages:
///               - content: Pick up the {FlowerType} at what time on {PickupDate}?
///                 contentType: PlainText
///             maxAttempts: 2
///           description: The time to pick up the flowers
///           name: PickupTime
///           priority: 3
///           sampleUtterances:
///             - I would like to order {FlowerType}
///           slotConstraint: Required
///           slotType: AMAZON.TIME
///           slotTypeVersion: $$LATEST
///       createVersion: false
///       name: OrderFlowers
///       description: Intent to order a bouquet of flowers for pick up
///       sampleUtterances:
///         - I would like to order some flowers
///         - I would like to pick up flowers
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
  /// you provide a Lambda function in the `fulfillmentActivity`. If you return the intent to the client
  /// application, you can't specify this element. The `followUpPrompt` and `conclusionStatement` are
  /// mutually exclusive. You can specify only one. Attributes are documented under statement.
  late final pulumi.Output<IntentConclusionStatement?> conclusionStatement;
  /// Prompts the user to confirm the intent. This question should
  /// have a yes or no answer. You you must provide both the `rejectionStatement` and `confirmationPrompt`,
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
  /// user to order a drink. The `followUpPrompt` field and the `conclusionStatement` field are mutually
  /// exclusive. You can specify only one. Attributes are documented under follow_up_prompt.
  late final pulumi.Output<IntentFollowUpPrompt?> followUpPrompt;
  /// Describes how the intent is fulfilled. For example, after a
  /// user provides all of the information for a pizza order, `fulfillmentActivity` defines how the bot
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
  /// `confirmationPrompt`, Amazon Lex responds with this statement to acknowledge that the intent was
  /// canceled. You must provide both the `rejectionStatement` and the `confirmationPrompt`, or neither.
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
  Intent(
    String name, {
    IntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/intent:Intent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    checksum = registerOutput<String>('checksum');
    conclusionStatement = registerOutput<IntentConclusionStatement?>('conclusionStatement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentConclusionStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confirmationPrompt = registerOutput<IntentConfirmationPrompt?>('confirmationPrompt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentConfirmationPrompt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createVersion = registerOutput<bool?>('createVersion');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    dialogCodeHook = registerOutput<IntentDialogCodeHook?>('dialogCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    followUpPrompt = registerOutput<IntentFollowUpPrompt?>('followUpPrompt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentFollowUpPrompt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fulfillmentActivity = registerOutput<IntentFulfillmentActivity>('fulfillmentActivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentFulfillmentActivity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    parentIntentSignature = registerOutput<String?>('parentIntentSignature');
    region = registerOutput<String>('region');
    rejectionStatement = registerOutput<IntentRejectionStatement?>('rejectionStatement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentRejectionStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sampleUtterances = registerOutput<List<String>?>('sampleUtterances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    slots = registerOutput<List<IntentSlot>?>('slots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IntentSlot>(guardedValue, (value) => IntentSlot.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Intent] resource's state with the given [name] and [id].
  static Intent get(
    String name,
    pulumi.Input<String> id, {
    IntentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Intent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Intent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/intent:Intent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    checksum = registerOutput<String>('checksum');
    conclusionStatement = registerOutput<IntentConclusionStatement?>('conclusionStatement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentConclusionStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confirmationPrompt = registerOutput<IntentConfirmationPrompt?>('confirmationPrompt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentConfirmationPrompt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createVersion = registerOutput<bool?>('createVersion');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    dialogCodeHook = registerOutput<IntentDialogCodeHook?>('dialogCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    followUpPrompt = registerOutput<IntentFollowUpPrompt?>('followUpPrompt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentFollowUpPrompt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fulfillmentActivity = registerOutput<IntentFulfillmentActivity>('fulfillmentActivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentFulfillmentActivity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    parentIntentSignature = registerOutput<String?>('parentIntentSignature');
    region = registerOutput<String>('region');
    rejectionStatement = registerOutput<IntentRejectionStatement?>('rejectionStatement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentRejectionStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sampleUtterances = registerOutput<List<String>?>('sampleUtterances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    slots = registerOutput<List<IntentSlot>?>('slots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IntentSlot>(guardedValue, (value) => IntentSlot.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [Intent] resource.
  Intent.reference(String urn)
    : super(
        'aws:lex/intent:Intent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    checksum = registerOutput<String>('checksum');
    conclusionStatement = registerOutput<IntentConclusionStatement?>('conclusionStatement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentConclusionStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confirmationPrompt = registerOutput<IntentConfirmationPrompt?>('confirmationPrompt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentConfirmationPrompt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createVersion = registerOutput<bool?>('createVersion');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    dialogCodeHook = registerOutput<IntentDialogCodeHook?>('dialogCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    followUpPrompt = registerOutput<IntentFollowUpPrompt?>('followUpPrompt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentFollowUpPrompt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fulfillmentActivity = registerOutput<IntentFulfillmentActivity>('fulfillmentActivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentFulfillmentActivity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    parentIntentSignature = registerOutput<String?>('parentIntentSignature');
    region = registerOutput<String>('region');
    rejectionStatement = registerOutput<IntentRejectionStatement?>('rejectionStatement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntentRejectionStatement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sampleUtterances = registerOutput<List<String>?>('sampleUtterances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    slots = registerOutput<List<IntentSlot>?>('slots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IntentSlot>(guardedValue, (value) => IntentSlot.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<String>('version');
  }
}
