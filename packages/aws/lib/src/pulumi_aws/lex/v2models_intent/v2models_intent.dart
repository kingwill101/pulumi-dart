import 'package:pulumi/pulumi.dart';
import '../v2models_intent_closing_setting/v2models_intent_closing_setting.dart';
import '../v2models_intent_confirmation_setting/v2models_intent_confirmation_setting.dart';
import '../v2models_intent_dialog_code_hook/v2models_intent_dialog_code_hook.dart';
import '../v2models_intent_fulfillment_code_hook/v2models_intent_fulfillment_code_hook.dart';
import '../v2models_intent_initial_response_setting/v2models_intent_initial_response_setting.dart';
import '../v2models_intent_input_context/v2models_intent_input_context.dart';
import '../v2models_intent_kendra_configuration/v2models_intent_kendra_configuration.dart';
import '../v2models_intent_output_context/v2models_intent_output_context.dart';
import '../v2models_intent_qna_intent_configuration/v2models_intent_qna_intent_configuration.dart';
import '../v2models_intent_sample_utterance/v2models_intent_sample_utterance.dart';
import '../v2models_intent_slot_priority/v2models_intent_slot_priority.dart';
import '../v2models_intent_timeouts/v2models_intent_timeouts.dart';
import 'v2models_intent_args.dart';

/// Resource for managing an AWS Lex V2 Models Intent.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### `confirmation_setting` Example
///
/// When using `confirmation_setting`, if you do not provide a `prompt_attempts_specification`, AWS Lex will provide default `prompt_attempts_specification`s. As a result, Terraform will report a difference in the configuration. To avoid this behavior, include the default `prompt_attempts_specification` configuration shown below.
///
///
///
/// ### QnA Intent Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Intent using the `intent_id:bot_id:bot_version:locale_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsIntent:V2modelsIntent example intent-42874:bot-11376:DRAFT:en_US
/// ```
class V2modelsIntent extends CustomResource {
  /// Identifier of the bot associated with this intent.
  late final Output<String> botId;

  /// Version of the bot associated with this intent.
  late final Output<String> botVersion;

  /// Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closing_setting`.
  late final Output<V2modelsIntentClosingSetting?> closingSetting;

  /// Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `prompt_attempts_specification`s. This will cause Terraform to report differences. Use the `confirmation_setting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmation_setting`.
  late final Output<V2modelsIntentConfirmationSetting?> confirmationSetting;

  /// Timestamp of the date and time that the intent was created.
  late final Output<String> creationDateTime;

  /// Description of the intent. Use the description to help identify the intent in lists.
  late final Output<String?> description;

  /// Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialog_code_hook`.
  late final Output<V2modelsIntentDialogCodeHook?> dialogCodeHook;

  /// Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillment_code_hook`.
  late final Output<V2modelsIntentFulfillmentCodeHook?> fulfillmentCodeHook;

  /// Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initial_response_setting`.
  late final Output<V2modelsIntentInitialResponseSetting?>
      initialResponseSetting;

  /// Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `input_context`.
  late final Output<List<V2modelsIntentInputContext>?> inputContexts;

  /// Unique identifier for the intent.
  late final Output<String> intentId;

  /// Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qna_intent_configuration`. See `kendra_configuration`.
  late final Output<V2modelsIntentKendraConfiguration?> kendraConfiguration;

  /// Timestamp of the last time that the intent was modified.
  late final Output<String> lastUpdatedDateTime;

  /// Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  late final Output<String> localeId;

  /// Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `output_context`.
  late final Output<List<V2modelsIntentOutputContext>?> outputContexts;

  /// Identifier for the built-in intent to base this intent on.
  late final Output<String?> parentIntentSignature;

  /// Configuration block for QnA intent settings. This is used when `parent_intent_signature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendra_configuration`. See `qna_intent_configuration`.
  late final Output<V2modelsIntentQnaIntentConfiguration?>
      qnaIntentConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for strings that a user might say to signal the intent. See `sample_utterance`.
  late final Output<List<V2modelsIntentSampleUtterance>?> sampleUtterances;

  /// Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slot_priority`.
  late final Output<List<V2modelsIntentSlotPriority>?> slotPriorities;
  late final Output<V2modelsIntentTimeouts?> timeouts;

  V2modelsIntent(
    String name, {
    V2modelsIntentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsIntent:V2modelsIntent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.botId = registerOutput<String>('botId');
    this.botVersion = registerOutput<String>('botVersion');
    this.closingSetting =
        registerOutput<V2modelsIntentClosingSetting?>('closingSetting');
    this.confirmationSetting =
        registerOutput<V2modelsIntentConfirmationSetting?>(
            'confirmationSetting');
    this.creationDateTime = registerOutput<String>('creationDateTime');
    this.description = registerOutput<String?>('description');
    this.dialogCodeHook =
        registerOutput<V2modelsIntentDialogCodeHook?>('dialogCodeHook');
    this.fulfillmentCodeHook =
        registerOutput<V2modelsIntentFulfillmentCodeHook?>(
            'fulfillmentCodeHook');
    this.initialResponseSetting =
        registerOutput<V2modelsIntentInitialResponseSetting?>(
            'initialResponseSetting');
    this.inputContexts =
        registerOutput<List<V2modelsIntentInputContext>?>('inputContexts');
    this.intentId = registerOutput<String>('intentId');
    this.kendraConfiguration =
        registerOutput<V2modelsIntentKendraConfiguration?>(
            'kendraConfiguration');
    this.lastUpdatedDateTime = registerOutput<String>('lastUpdatedDateTime');
    this.localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    this.outputContexts =
        registerOutput<List<V2modelsIntentOutputContext>?>('outputContexts');
    this.parentIntentSignature =
        registerOutput<String?>('parentIntentSignature');
    this.qnaIntentConfiguration =
        registerOutput<V2modelsIntentQnaIntentConfiguration?>(
            'qnaIntentConfiguration');
    this.region = registerOutput<String>('region');
    this.sampleUtterances =
        registerOutput<List<V2modelsIntentSampleUtterance>?>(
            'sampleUtterances');
    this.slotPriorities =
        registerOutput<List<V2modelsIntentSlotPriority>?>('slotPriorities');
    this.timeouts = registerOutput<V2modelsIntentTimeouts?>('timeouts');
  }
}
