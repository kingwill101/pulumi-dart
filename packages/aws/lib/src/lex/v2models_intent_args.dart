// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting.dart';
import 'v2models_intent_confirmation_setting.dart';
import 'v2models_intent_dialog_code_hook.dart';
import 'v2models_intent_fulfillment_code_hook.dart';
import 'v2models_intent_initial_response_setting.dart';
import 'v2models_intent_input_context.dart';
import 'v2models_intent_kendra_configuration.dart';
import 'v2models_intent_output_context.dart';
import 'v2models_intent_qna_intent_configuration.dart';
import 'v2models_intent_sample_utterance.dart';
import 'v2models_intent_slot_priority.dart';
import 'v2models_intent_timeouts.dart';

/// {@template pulumi_lex_v2models_intent_v2models_intent_args_doc}
/// The set of arguments for V2modelsIntent.
/// {@endtemplate}
/// {@macro pulumi_lex_v2models_intent_v2models_intent_args_doc}
class V2modelsIntentArgs {
  /// Identifier of the bot associated with this intent.
  final pulumi.Input<String> botId;

  /// Version of the bot associated with this intent.
  final pulumi.Input<String> botVersion;

  /// Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closing_setting`.
  final pulumi.Input<V2modelsIntentClosingSetting>? closingSetting;

  /// Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `prompt_attempts_specification`s. This will cause Terraform to report differences. Use the `confirmation_setting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmation_setting`.
  final pulumi.Input<V2modelsIntentConfirmationSetting>? confirmationSetting;

  /// Description of the intent. Use the description to help identify the intent in lists.
  final pulumi.Input<String>? description;

  /// Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialog_code_hook`.
  final pulumi.Input<V2modelsIntentDialogCodeHook>? dialogCodeHook;

  /// Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillment_code_hook`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHook>? fulfillmentCodeHook;

  /// Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initial_response_setting`.
  final pulumi.Input<V2modelsIntentInitialResponseSetting>?
  initialResponseSetting;

  /// Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `input_context`.
  final pulumi.Input<List<V2modelsIntentInputContext>>? inputContexts;

  /// Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qna_intent_configuration`. See `kendra_configuration`.
  final pulumi.Input<V2modelsIntentKendraConfiguration>? kendraConfiguration;

  /// Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  final pulumi.Input<String> localeId;

  /// Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `output_context`.
  final pulumi.Input<List<V2modelsIntentOutputContext>>? outputContexts;

  /// Identifier for the built-in intent to base this intent on.
  final pulumi.Input<String>? parentIntentSignature;

  /// Configuration block for QnA intent settings. This is used when `parent_intent_signature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendra_configuration`. See `qna_intent_configuration`.
  final pulumi.Input<V2modelsIntentQnaIntentConfiguration>?
  qnaIntentConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for strings that a user might say to signal the intent. See `sample_utterance`.
  final pulumi.Input<List<V2modelsIntentSampleUtterance>>? sampleUtterances;

  /// Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slot_priority`.
  final pulumi.Input<List<V2modelsIntentSlotPriority>>? slotPriorities;
  final pulumi.Input<V2modelsIntentTimeouts>? timeouts;

  /// Creates a new [V2modelsIntentArgs].
  /// [botId] Identifier of the bot associated with this intent.
  /// [botVersion] Version of the bot associated with this intent.
  /// [closingSetting] Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closing_setting`.
  /// [confirmationSetting] Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `prompt_attempts_specification`s. This will cause Terraform to report differences. Use the `confirmation_setting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmation_setting`.
  /// [description] Description of the intent. Use the description to help identify the intent in lists.
  /// [dialogCodeHook] Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialog_code_hook`.
  /// [fulfillmentCodeHook] Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillment_code_hook`.
  /// [initialResponseSetting] Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initial_response_setting`.
  /// [inputContexts] Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `input_context`.
  /// [kendraConfiguration] Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qna_intent_configuration`. See `kendra_configuration`.
  /// [localeId] Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  /// [name] Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  /// [outputContexts] Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `output_context`.
  /// [parentIntentSignature] Identifier for the built-in intent to base this intent on.
  /// [qnaIntentConfiguration] Configuration block for QnA intent settings. This is used when `parent_intent_signature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendra_configuration`. See `qna_intent_configuration`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sampleUtterances] Configuration block for strings that a user might say to signal the intent. See `sample_utterance`.
  /// [slotPriorities] Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slot_priority`.
  /// [timeouts] Optional.
  V2modelsIntentArgs({
    required String botId,
    required String botVersion,
    V2modelsIntentClosingSetting? closingSetting,
    V2modelsIntentConfirmationSetting? confirmationSetting,
    String? description,
    V2modelsIntentDialogCodeHook? dialogCodeHook,
    V2modelsIntentFulfillmentCodeHook? fulfillmentCodeHook,
    V2modelsIntentInitialResponseSetting? initialResponseSetting,
    List<V2modelsIntentInputContext>? inputContexts,
    V2modelsIntentKendraConfiguration? kendraConfiguration,
    required String localeId,
    String? name,
    List<V2modelsIntentOutputContext>? outputContexts,
    String? parentIntentSignature,
    V2modelsIntentQnaIntentConfiguration? qnaIntentConfiguration,
    String? region,
    List<V2modelsIntentSampleUtterance>? sampleUtterances,
    List<V2modelsIntentSlotPriority>? slotPriorities,
    V2modelsIntentTimeouts? timeouts,
  }) : botId = pulumi.Input.asInput<String>(botId),
       botVersion = pulumi.Input.asInput<String>(botVersion),
       closingSetting = pulumi
           .Input.asOptionalInput<V2modelsIntentClosingSetting>(closingSetting),
       confirmationSetting =
           pulumi.Input.asOptionalInput<V2modelsIntentConfirmationSetting>(
             confirmationSetting,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       dialogCodeHook = pulumi
           .Input.asOptionalInput<V2modelsIntentDialogCodeHook>(dialogCodeHook),
       fulfillmentCodeHook =
           pulumi.Input.asOptionalInput<V2modelsIntentFulfillmentCodeHook>(
             fulfillmentCodeHook,
           ),
       initialResponseSetting =
           pulumi.Input.asOptionalInput<V2modelsIntentInitialResponseSetting>(
             initialResponseSetting,
           ),
       inputContexts =
           pulumi.Input.asOptionalInput<List<V2modelsIntentInputContext>>(
             inputContexts,
           ),
       kendraConfiguration =
           pulumi.Input.asOptionalInput<V2modelsIntentKendraConfiguration>(
             kendraConfiguration,
           ),
       localeId = pulumi.Input.asInput<String>(localeId),
       name = pulumi.Input.asOptionalInput<String>(name),
       outputContexts =
           pulumi.Input.asOptionalInput<List<V2modelsIntentOutputContext>>(
             outputContexts,
           ),
       parentIntentSignature = pulumi.Input.asOptionalInput<String>(
         parentIntentSignature,
       ),
       qnaIntentConfiguration =
           pulumi.Input.asOptionalInput<V2modelsIntentQnaIntentConfiguration>(
             qnaIntentConfiguration,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       sampleUtterances =
           pulumi.Input.asOptionalInput<List<V2modelsIntentSampleUtterance>>(
             sampleUtterances,
           ),
       slotPriorities =
           pulumi.Input.asOptionalInput<List<V2modelsIntentSlotPriority>>(
             slotPriorities,
           ),
       timeouts = pulumi.Input.asOptionalInput<V2modelsIntentTimeouts>(
         timeouts,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': botId,
      'botVersion': botVersion,
      'closingSetting':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentClosingSetting,
            Map<String, dynamic>
          >(closingSetting, (value) => value.toMap()),
      'confirmationSetting':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentConfirmationSetting,
            Map<String, dynamic>
          >(confirmationSetting, (value) => value.toMap()),
      'description': ?description,
      'dialogCodeHook':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentDialogCodeHook,
            Map<String, dynamic>
          >(dialogCodeHook, (value) => value.toMap()),
      'fulfillmentCodeHook':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentFulfillmentCodeHook,
            Map<String, dynamic>
          >(fulfillmentCodeHook, (value) => value.toMap()),
      'initialResponseSetting':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentInitialResponseSetting,
            Map<String, dynamic>
          >(initialResponseSetting, (value) => value.toMap()),
      'inputContexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<V2modelsIntentInputContext>,
            List<Map<String, dynamic>>
          >(
            inputContexts,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsIntentInputContext,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'kendraConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentKendraConfiguration,
            Map<String, dynamic>
          >(kendraConfiguration, (value) => value.toMap()),
      'localeId': localeId,
      'name': ?name,
      'outputContexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<V2modelsIntentOutputContext>,
            List<Map<String, dynamic>>
          >(
            outputContexts,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsIntentOutputContext,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parentIntentSignature': ?parentIntentSignature,
      'qnaIntentConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentQnaIntentConfiguration,
            Map<String, dynamic>
          >(qnaIntentConfiguration, (value) => value.toMap()),
      'region': ?region,
      'sampleUtterances':
          ?pulumi.Input.mapOptionalInputValue<
            List<V2modelsIntentSampleUtterance>,
            List<Map<String, dynamic>>
          >(
            sampleUtterances,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsIntentSampleUtterance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'slotPriorities':
          ?pulumi.Input.mapOptionalInputValue<
            List<V2modelsIntentSlotPriority>,
            List<Map<String, dynamic>>
          >(
            slotPriorities,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsIntentSlotPriority,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentArgs(
      botId: map['botId'] as String,
      botVersion: map['botVersion'] as String,
      closingSetting: map['closingSetting'] == null
          ? null
          : V2modelsIntentClosingSetting.fromMap(
              (map['closingSetting'] as Map).cast<String, dynamic>(),
            ),
      confirmationSetting: map['confirmationSetting'] == null
          ? null
          : V2modelsIntentConfirmationSetting.fromMap(
              (map['confirmationSetting'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      dialogCodeHook: map['dialogCodeHook'] == null
          ? null
          : V2modelsIntentDialogCodeHook.fromMap(
              (map['dialogCodeHook'] as Map).cast<String, dynamic>(),
            ),
      fulfillmentCodeHook: map['fulfillmentCodeHook'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHook.fromMap(
              (map['fulfillmentCodeHook'] as Map).cast<String, dynamic>(),
            ),
      initialResponseSetting: map['initialResponseSetting'] == null
          ? null
          : V2modelsIntentInitialResponseSetting.fromMap(
              (map['initialResponseSetting'] as Map).cast<String, dynamic>(),
            ),
      inputContexts: map['inputContexts'] == null
          ? null
          : pulumi.Input.decodeList<V2modelsIntentInputContext>(
              map['inputContexts'],
              (value) => V2modelsIntentInputContext.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      kendraConfiguration: map['kendraConfiguration'] == null
          ? null
          : V2modelsIntentKendraConfiguration.fromMap(
              (map['kendraConfiguration'] as Map).cast<String, dynamic>(),
            ),
      localeId: map['localeId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outputContexts: map['outputContexts'] == null
          ? null
          : pulumi.Input.decodeList<V2modelsIntentOutputContext>(
              map['outputContexts'],
              (value) => V2modelsIntentOutputContext.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      parentIntentSignature: map['parentIntentSignature'] == null
          ? null
          : map['parentIntentSignature'] as String,
      qnaIntentConfiguration: map['qnaIntentConfiguration'] == null
          ? null
          : V2modelsIntentQnaIntentConfiguration.fromMap(
              (map['qnaIntentConfiguration'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      sampleUtterances: map['sampleUtterances'] == null
          ? null
          : pulumi.Input.decodeList<V2modelsIntentSampleUtterance>(
              map['sampleUtterances'],
              (value) => V2modelsIntentSampleUtterance.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      slotPriorities: map['slotPriorities'] == null
          ? null
          : pulumi.Input.decodeList<V2modelsIntentSlotPriority>(
              map['slotPriorities'],
              (value) => V2modelsIntentSlotPriority.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      timeouts: map['timeouts'] == null
          ? null
          : V2modelsIntentTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
