// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../intent_conclusion_statement/intent_conclusion_statement.dart';
import '../intent_confirmation_prompt/intent_confirmation_prompt.dart';
import '../intent_dialog_code_hook/intent_dialog_code_hook.dart';
import '../intent_follow_up_prompt/intent_follow_up_prompt.dart';
import '../intent_fulfillment_activity/intent_fulfillment_activity.dart';
import '../intent_rejection_statement/intent_rejection_statement.dart';
import '../intent_slot/intent_slot.dart';

/// The set of arguments for Intent.
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

  IntentArgs({
    this.conclusionStatement,
    this.confirmationPrompt,
    this.createVersion,
    this.description,
    this.dialogCodeHook,
    this.followUpPrompt,
    required this.fulfillmentActivity,
    this.name,
    this.parentIntentSignature,
    this.region,
    this.rejectionStatement,
    this.sampleUtterances,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conclusionStatementValue = conclusionStatement;
    if (conclusionStatementValue != null) {
      map['conclusionStatement'] = pulumi.Input.mapOptionalInputValue<
              IntentConclusionStatement, Map<String, dynamic>>(
          conclusionStatementValue, (value) => value.toMap());
    }
    final confirmationPromptValue = confirmationPrompt;
    if (confirmationPromptValue != null) {
      map['confirmationPrompt'] = pulumi.Input.mapOptionalInputValue<
              IntentConfirmationPrompt, Map<String, dynamic>>(
          confirmationPromptValue, (value) => value.toMap());
    }
    final createVersionValue = createVersion;
    if (createVersionValue != null) {
      map['createVersion'] = createVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dialogCodeHookValue = dialogCodeHook;
    if (dialogCodeHookValue != null) {
      map['dialogCodeHook'] = pulumi.Input.mapOptionalInputValue<
          IntentDialogCodeHook,
          Map<String, dynamic>>(dialogCodeHookValue, (value) => value.toMap());
    }
    final followUpPromptValue = followUpPrompt;
    if (followUpPromptValue != null) {
      map['followUpPrompt'] = pulumi.Input.mapOptionalInputValue<
          IntentFollowUpPrompt,
          Map<String, dynamic>>(followUpPromptValue, (value) => value.toMap());
    }
    map['fulfillmentActivity'] = pulumi.Input.mapInputValue<
        IntentFulfillmentActivity,
        Map<String, dynamic>>(fulfillmentActivity, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentIntentSignatureValue = parentIntentSignature;
    if (parentIntentSignatureValue != null) {
      map['parentIntentSignature'] = parentIntentSignatureValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rejectionStatementValue = rejectionStatement;
    if (rejectionStatementValue != null) {
      map['rejectionStatement'] = pulumi.Input.mapOptionalInputValue<
              IntentRejectionStatement, Map<String, dynamic>>(
          rejectionStatementValue, (value) => value.toMap());
    }
    final sampleUtterancesValue = sampleUtterances;
    if (sampleUtterancesValue != null) {
      map['sampleUtterances'] = sampleUtterancesValue;
    }
    final slotsValue = slots;
    if (slotsValue != null) {
      map['slots'] = pulumi.Input.mapOptionalInputValue<List<IntentSlot>,
              List<Map<String, dynamic>>>(
          slotsValue,
          (value) => pulumi.Input.encodeList<IntentSlot, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory IntentArgs.fromMap(Map<String, dynamic> map) {
    return IntentArgs(
      conclusionStatement:
          pulumi.Input.asOptionalInput<IntentConclusionStatement>(
              map['conclusionStatement']),
      confirmationPrompt:
          pulumi.Input.asOptionalInput<IntentConfirmationPrompt>(
              map['confirmationPrompt']),
      createVersion: pulumi.Input.asOptionalInput<bool>(map['createVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dialogCodeHook: pulumi.Input.asOptionalInput<IntentDialogCodeHook>(
          map['dialogCodeHook']),
      followUpPrompt: pulumi.Input.asOptionalInput<IntentFollowUpPrompt>(
          map['followUpPrompt']),
      fulfillmentActivity: pulumi.Input.asInput<IntentFulfillmentActivity>(
          map['fulfillmentActivity']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentIntentSignature:
          pulumi.Input.asOptionalInput<String>(map['parentIntentSignature']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rejectionStatement:
          pulumi.Input.asOptionalInput<IntentRejectionStatement>(
              map['rejectionStatement']),
      sampleUtterances:
          pulumi.Input.asOptionalInput<List<String>>(map['sampleUtterances']),
      slots: pulumi.Input.asOptionalInput<List<IntentSlot>>(map['slots']),
    );
  }
}
