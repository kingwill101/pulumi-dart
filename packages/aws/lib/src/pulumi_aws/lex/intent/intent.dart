import 'package:pulumi/pulumi.dart' as pulumi;
import '../intent_conclusion_statement/intent_conclusion_statement.dart';
import '../intent_confirmation_prompt/intent_confirmation_prompt.dart';
import '../intent_dialog_code_hook/intent_dialog_code_hook.dart';
import '../intent_follow_up_prompt/intent_follow_up_prompt.dart';
import '../intent_fulfillment_activity/intent_fulfillment_activity.dart';
import '../intent_rejection_statement/intent_rejection_statement.dart';
import '../intent_slot/intent_slot.dart';
import 'intent_args.dart';

/// Provides an Amazon Lex Intent resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
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

  Intent(
    String name, {
    IntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/intent:Intent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.checksum = registerOutput<String>('checksum');
    this.conclusionStatement =
        registerOutput<IntentConclusionStatement?>('conclusionStatement');
    this.confirmationPrompt =
        registerOutput<IntentConfirmationPrompt?>('confirmationPrompt');
    this.createVersion = registerOutput<bool?>('createVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.dialogCodeHook =
        registerOutput<IntentDialogCodeHook?>('dialogCodeHook');
    this.followUpPrompt =
        registerOutput<IntentFollowUpPrompt?>('followUpPrompt');
    this.fulfillmentActivity =
        registerOutput<IntentFulfillmentActivity>('fulfillmentActivity');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    this.parentIntentSignature =
        registerOutput<String?>('parentIntentSignature');
    this.region = registerOutput<String>('region');
    this.rejectionStatement =
        registerOutput<IntentRejectionStatement?>('rejectionStatement');
    this.sampleUtterances = registerOutput<List<String>?>('sampleUtterances');
    this.slots = registerOutput<List<IntentSlot>?>('slots');
    this.version = registerOutput<String>('version');
  }
}
