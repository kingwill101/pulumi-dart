// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_conclusion_statement.dart';
import 'intent_confirmation_prompt.dart';
import 'intent_dialog_code_hook.dart';
import 'intent_follow_up_prompt.dart';
import 'intent_fulfillment_activity.dart';
import 'intent_rejection_statement.dart';
import 'intent_slot.dart';

/// {@template pulumi_lex_intent_intent_args_doc}
/// The set of arguments for Intent.
/// {@endtemplate}
/// {@macro pulumi_lex_intent_intent_args_doc}
class IntentArgs {
  /// The statement that you want Amazon Lex to convey to the user
  /// after the intent is successfully fulfilled by the Lambda function. This element is relevant only if
  /// you provide a Lambda function in the `fulfillment_activity`. If you return the intent to the client
  /// application, you can't specify this element. The `follow_up_prompt` and `conclusion_statement` are
  /// mutually exclusive. You can specify only one. Attributes are documented under statement.
  final pulumi.Input<IntentConclusionStatement>? conclusionStatement;
  /// Prompts the user to confirm the intent. This question should
  /// have a yes or no answer. You you must provide both the `rejection_statement` and `confirmation_prompt`,
  /// or neither. Attributes are documented under prompt.
  final pulumi.Input<IntentConfirmationPrompt>? confirmationPrompt;
  /// Determines if a new slot type version is created when the initial
  /// resource is created and on each update. Defaults to `false`.
  final pulumi.Input<bool>? createVersion;
  /// A description of the intent. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;
  /// Specifies a Lambda function to invoke for each user input. You can
  /// invoke this Lambda function to personalize user interaction. Attributes are documented under code_hook.
  final pulumi.Input<IntentDialogCodeHook>? dialogCodeHook;
  /// Amazon Lex uses this prompt to solicit additional activity after
  /// fulfilling an intent. For example, after the OrderPizza intent is fulfilled, you might prompt the
  /// user to order a drink. The `follow_up_prompt` field and the `conclusion_statement` field are mutually
  /// exclusive. You can specify only one. Attributes are documented under follow_up_prompt.
  final pulumi.Input<IntentFollowUpPrompt>? followUpPrompt;
  /// Describes how the intent is fulfilled. For example, after a
  /// user provides all of the information for a pizza order, `fulfillment_activity` defines how the bot
  /// places an order with a local pizza store. Attributes are documented under fulfillment_activity.
  final pulumi.Input<IntentFulfillmentActivity> fulfillmentActivity;
  /// The name of the intent, not case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String>? name;
  /// A unique identifier for the built-in intent to base this
  /// intent on. To find the signature for an intent, see
  /// [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
  /// in the Alexa Skills Kit.
  final pulumi.Input<String>? parentIntentSignature;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// When the user answers "no" to the question defined in
  /// `confirmation_prompt`, Amazon Lex responds with this statement to acknowledge that the intent was
  /// canceled. You must provide both the `rejection_statement` and the `confirmation_prompt`, or neither.
  /// Attributes are documented under statement.
  final pulumi.Input<IntentRejectionStatement>? rejectionStatement;
  /// An array of utterances (strings) that a user might say to signal
  /// the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".
  /// In each utterance, a slot name is enclosed in curly braces. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
  final pulumi.Input<List<String>>? sampleUtterances;
  /// An list of intent slots. At runtime, Amazon Lex elicits required slot values
  /// from the user using prompts defined in the slots. Attributes are documented under slot.
  final pulumi.Input<List<IntentSlot>>? slots;

  /// Creates a new [IntentArgs].
  /// [conclusionStatement] The statement that you want Amazon Lex to convey to the user
  /// [confirmationPrompt] Prompts the user to confirm the intent. This question should
  /// [createVersion] Determines if a new slot type version is created when the initial
  /// [description] A description of the intent. Must be less than or equal to 200 characters in length.
  /// [dialogCodeHook] Specifies a Lambda function to invoke for each user input. You can
  /// [followUpPrompt] Amazon Lex uses this prompt to solicit additional activity after
  /// [fulfillmentActivity] Describes how the intent is fulfilled. For example, after a
  /// [name] The name of the intent, not case sensitive. Must be less than or equal to 100 characters in length.
  /// [parentIntentSignature] A unique identifier for the built-in intent to base this
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rejectionStatement] When the user answers "no" to the question defined in
  /// [sampleUtterances] An array of utterances (strings) that a user might say to signal
  /// [slots] An list of intent slots. At runtime, Amazon Lex elicits required slot values
  IntentArgs({
    pulumi.Output<IntentConclusionStatement>? conclusionStatement,
    pulumi.Output<IntentConfirmationPrompt>? confirmationPrompt,
    pulumi.Output<bool>? createVersion,
    pulumi.Output<String>? description,
    pulumi.Output<IntentDialogCodeHook>? dialogCodeHook,
    pulumi.Output<IntentFollowUpPrompt>? followUpPrompt,
    required pulumi.Output<IntentFulfillmentActivity> fulfillmentActivity,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentIntentSignature,
    pulumi.Output<String>? region,
    pulumi.Output<IntentRejectionStatement>? rejectionStatement,
    pulumi.Output<List<String>>? sampleUtterances,
    pulumi.Output<List<IntentSlot>>? slots,
  }) :
      conclusionStatement = pulumi.Input.asOptionalInput<IntentConclusionStatement>(conclusionStatement),
      confirmationPrompt = pulumi.Input.asOptionalInput<IntentConfirmationPrompt>(confirmationPrompt),
      createVersion = pulumi.Input.asOptionalInput<bool>(createVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      dialogCodeHook = pulumi.Input.asOptionalInput<IntentDialogCodeHook>(dialogCodeHook),
      followUpPrompt = pulumi.Input.asOptionalInput<IntentFollowUpPrompt>(followUpPrompt),
      fulfillmentActivity = pulumi.Input.asInput<IntentFulfillmentActivity>(fulfillmentActivity),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentIntentSignature = pulumi.Input.asOptionalInput<String>(parentIntentSignature),
      region = pulumi.Input.asOptionalInput<String>(region),
      rejectionStatement = pulumi.Input.asOptionalInput<IntentRejectionStatement>(rejectionStatement),
      sampleUtterances = pulumi.Input.asOptionalInput<List<String>>(sampleUtterances),
      slots = pulumi.Input.asOptionalInput<List<IntentSlot>>(slots);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conclusionStatement': ?pulumi.Input.mapOptionalInputValue<IntentConclusionStatement, Map<String, dynamic>>(conclusionStatement, (value) => value.toMap()),
      'confirmationPrompt': ?pulumi.Input.mapOptionalInputValue<IntentConfirmationPrompt, Map<String, dynamic>>(confirmationPrompt, (value) => value.toMap()),
      'createVersion': ?createVersion,
      'description': ?description,
      'dialogCodeHook': ?pulumi.Input.mapOptionalInputValue<IntentDialogCodeHook, Map<String, dynamic>>(dialogCodeHook, (value) => value.toMap()),
      'followUpPrompt': ?pulumi.Input.mapOptionalInputValue<IntentFollowUpPrompt, Map<String, dynamic>>(followUpPrompt, (value) => value.toMap()),
      'fulfillmentActivity': pulumi.Input.mapInputValue<IntentFulfillmentActivity, Map<String, dynamic>>(fulfillmentActivity, (value) => value.toMap()),
      'name': ?name,
      'parentIntentSignature': ?parentIntentSignature,
      'region': ?region,
      'rejectionStatement': ?pulumi.Input.mapOptionalInputValue<IntentRejectionStatement, Map<String, dynamic>>(rejectionStatement, (value) => value.toMap()),
      'sampleUtterances': ?sampleUtterances,
      'slots': ?pulumi.Input.mapOptionalInputValue<List<IntentSlot>, List<Map<String, dynamic>>>(slots, (value) => pulumi.Input.encodeList<IntentSlot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IntentArgs.fromMap(Map<String, dynamic> map) {
    return IntentArgs(
      conclusionStatement: map['conclusionStatement'] == null ? null : pulumi.Output.create<IntentConclusionStatement>(IntentConclusionStatement.fromMap((map['conclusionStatement'] as Map).cast<String, dynamic>())),
      confirmationPrompt: map['confirmationPrompt'] == null ? null : pulumi.Output.create<IntentConfirmationPrompt>(IntentConfirmationPrompt.fromMap((map['confirmationPrompt'] as Map).cast<String, dynamic>())),
      createVersion: map['createVersion'] == null ? null : pulumi.Output.create<bool>(map['createVersion'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dialogCodeHook: map['dialogCodeHook'] == null ? null : pulumi.Output.create<IntentDialogCodeHook>(IntentDialogCodeHook.fromMap((map['dialogCodeHook'] as Map).cast<String, dynamic>())),
      followUpPrompt: map['followUpPrompt'] == null ? null : pulumi.Output.create<IntentFollowUpPrompt>(IntentFollowUpPrompt.fromMap((map['followUpPrompt'] as Map).cast<String, dynamic>())),
      fulfillmentActivity: pulumi.Output.create<IntentFulfillmentActivity>(IntentFulfillmentActivity.fromMap((map['fulfillmentActivity'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentIntentSignature: map['parentIntentSignature'] == null ? null : pulumi.Output.create<String>(map['parentIntentSignature'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rejectionStatement: map['rejectionStatement'] == null ? null : pulumi.Output.create<IntentRejectionStatement>(IntentRejectionStatement.fromMap((map['rejectionStatement'] as Map).cast<String, dynamic>())),
      sampleUtterances: map['sampleUtterances'] == null ? null : pulumi.Output.create<List<String>>((map['sampleUtterances'] as List).cast<String>()),
      slots: map['slots'] == null ? null : pulumi.Output.create<List<IntentSlot>>(pulumi.Input.decodeList<IntentSlot>(map['slots'], (value) => IntentSlot.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

