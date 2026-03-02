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

/// Input properties used for looking up and filtering V2modelsIntent resources.
class V2modelsIntentState {
  /// Identifier of the bot associated with this intent.
  final pulumi.Input<String>? botId;
  /// Version of the bot associated with this intent.
  final pulumi.Input<String>? botVersion;
  /// Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closing_setting`.
  final pulumi.Input<V2modelsIntentClosingSetting>? closingSetting;
  /// Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `prompt_attempts_specification`s. This will cause Terraform to report differences. Use the `confirmation_setting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmation_setting`.
  final pulumi.Input<V2modelsIntentConfirmationSetting>? confirmationSetting;
  /// Timestamp of the date and time that the intent was created.
  final pulumi.Input<String>? creationDateTime;
  /// Description of the intent. Use the description to help identify the intent in lists.
  final pulumi.Input<String>? description;
  /// Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialog_code_hook`.
  final pulumi.Input<V2modelsIntentDialogCodeHook>? dialogCodeHook;
  /// Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillment_code_hook`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHook>? fulfillmentCodeHook;
  /// Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initial_response_setting`.
  final pulumi.Input<V2modelsIntentInitialResponseSetting>? initialResponseSetting;
  /// Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `input_context`.
  final pulumi.Input<List<V2modelsIntentInputContext>>? inputContexts;
  /// Unique identifier for the intent.
  final pulumi.Input<String>? intentId;
  /// Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qna_intent_configuration`. See `kendra_configuration`.
  final pulumi.Input<V2modelsIntentKendraConfiguration>? kendraConfiguration;
  /// Timestamp of the last time that the intent was modified.
  final pulumi.Input<String>? lastUpdatedDateTime;
  /// Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  final pulumi.Input<String>? localeId;
  /// Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `output_context`.
  final pulumi.Input<List<V2modelsIntentOutputContext>>? outputContexts;
  /// Identifier for the built-in intent to base this intent on.
  final pulumi.Input<String>? parentIntentSignature;
  /// Configuration block for QnA intent settings. This is used when `parent_intent_signature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendra_configuration`. See `qna_intent_configuration`.
  final pulumi.Input<V2modelsIntentQnaIntentConfiguration>? qnaIntentConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for strings that a user might say to signal the intent. See `sample_utterance`.
  final pulumi.Input<List<V2modelsIntentSampleUtterance>>? sampleUtterances;
  /// Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slot_priority`.
  final pulumi.Input<List<V2modelsIntentSlotPriority>>? slotPriorities;
  final pulumi.Input<V2modelsIntentTimeouts>? timeouts;

  /// Creates a new [V2modelsIntentState].
  /// [botId] Identifier of the bot associated with this intent.
  /// [botVersion] Version of the bot associated with this intent.
  /// [closingSetting] Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closing_setting`.
  /// [confirmationSetting] Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `prompt_attempts_specification`s. This will cause Terraform to report differences. Use the `confirmation_setting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmation_setting`.
  /// [creationDateTime] Timestamp of the date and time that the intent was created.
  /// [description] Description of the intent. Use the description to help identify the intent in lists.
  /// [dialogCodeHook] Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialog_code_hook`.
  /// [fulfillmentCodeHook] Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillment_code_hook`.
  /// [initialResponseSetting] Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initial_response_setting`.
  /// [inputContexts] Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `input_context`.
  /// [intentId] Unique identifier for the intent.
  /// [kendraConfiguration] Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qna_intent_configuration`. See `kendra_configuration`.
  /// [lastUpdatedDateTime] Timestamp of the last time that the intent was modified.
  /// [localeId] Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  /// [name] Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  /// [outputContexts] Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `output_context`.
  /// [parentIntentSignature] Identifier for the built-in intent to base this intent on.
  /// [qnaIntentConfiguration] Configuration block for QnA intent settings. This is used when `parent_intent_signature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendra_configuration`. See `qna_intent_configuration`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sampleUtterances] Configuration block for strings that a user might say to signal the intent. See `sample_utterance`.
  /// [slotPriorities] Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slot_priority`.
  /// [timeouts] Optional.
  V2modelsIntentState({
    this.botId,
    this.botVersion,
    this.closingSetting,
    this.confirmationSetting,
    this.creationDateTime,
    this.description,
    this.dialogCodeHook,
    this.fulfillmentCodeHook,
    this.initialResponseSetting,
    this.inputContexts,
    this.intentId,
    this.kendraConfiguration,
    this.lastUpdatedDateTime,
    this.localeId,
    this.name,
    this.outputContexts,
    this.parentIntentSignature,
    this.qnaIntentConfiguration,
    this.region,
    this.sampleUtterances,
    this.slotPriorities,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': ?botId,
      'botVersion': ?botVersion,
      'closingSetting': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSetting, Map<String, dynamic>>(closingSetting, (value) => value.toMap()),
      'confirmationSetting': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSetting, Map<String, dynamic>>(confirmationSetting, (value) => value.toMap()),
      'creationDateTime': ?creationDateTime,
      'description': ?description,
      'dialogCodeHook': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentDialogCodeHook, Map<String, dynamic>>(dialogCodeHook, (value) => value.toMap()),
      'fulfillmentCodeHook': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHook, Map<String, dynamic>>(fulfillmentCodeHook, (value) => value.toMap()),
      'initialResponseSetting': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSetting, Map<String, dynamic>>(initialResponseSetting, (value) => value.toMap()),
      'inputContexts': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentInputContext>, List<Map<String, dynamic>>>(inputContexts, (value) => pulumi.Input.encodeList<V2modelsIntentInputContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'intentId': ?intentId,
      'kendraConfiguration': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentKendraConfiguration, Map<String, dynamic>>(kendraConfiguration, (value) => value.toMap()),
      'lastUpdatedDateTime': ?lastUpdatedDateTime,
      'localeId': ?localeId,
      'name': ?name,
      'outputContexts': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentOutputContext>, List<Map<String, dynamic>>>(outputContexts, (value) => pulumi.Input.encodeList<V2modelsIntentOutputContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentIntentSignature': ?parentIntentSignature,
      'qnaIntentConfiguration': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfiguration, Map<String, dynamic>>(qnaIntentConfiguration, (value) => value.toMap()),
      'region': ?region,
      'sampleUtterances': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentSampleUtterance>, List<Map<String, dynamic>>>(sampleUtterances, (value) => pulumi.Input.encodeList<V2modelsIntentSampleUtterance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slotPriorities': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentSlotPriority>, List<Map<String, dynamic>>>(slotPriorities, (value) => pulumi.Input.encodeList<V2modelsIntentSlotPriority, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentState.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentState(
      botId: map['botId'] == null ? null : ((map['botId'] as String).input()).input(),
      botVersion: map['botVersion'] == null ? null : ((map['botVersion'] as String).input()).input(),
      closingSetting: map['closingSetting'] == null ? null : ((V2modelsIntentClosingSetting.fromMap((map['closingSetting']! as Map).cast<String, dynamic>())).input()).input(),
      confirmationSetting: map['confirmationSetting'] == null ? null : ((V2modelsIntentConfirmationSetting.fromMap((map['confirmationSetting']! as Map).cast<String, dynamic>())).input()).input(),
      creationDateTime: map['creationDateTime'] == null ? null : ((map['creationDateTime'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      dialogCodeHook: map['dialogCodeHook'] == null ? null : ((V2modelsIntentDialogCodeHook.fromMap((map['dialogCodeHook']! as Map).cast<String, dynamic>())).input()).input(),
      fulfillmentCodeHook: map['fulfillmentCodeHook'] == null ? null : ((V2modelsIntentFulfillmentCodeHook.fromMap((map['fulfillmentCodeHook']! as Map).cast<String, dynamic>())).input()).input(),
      initialResponseSetting: map['initialResponseSetting'] == null ? null : ((V2modelsIntentInitialResponseSetting.fromMap((map['initialResponseSetting']! as Map).cast<String, dynamic>())).input()).input(),
      inputContexts: map['inputContexts'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentInputContext>(map['inputContexts']!, (value) => V2modelsIntentInputContext.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      intentId: map['intentId'] == null ? null : ((map['intentId'] as String).input()).input(),
      kendraConfiguration: map['kendraConfiguration'] == null ? null : ((V2modelsIntentKendraConfiguration.fromMap((map['kendraConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      lastUpdatedDateTime: map['lastUpdatedDateTime'] == null ? null : ((map['lastUpdatedDateTime'] as String).input()).input(),
      localeId: map['localeId'] == null ? null : ((map['localeId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      outputContexts: map['outputContexts'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentOutputContext>(map['outputContexts']!, (value) => V2modelsIntentOutputContext.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      parentIntentSignature: map['parentIntentSignature'] == null ? null : ((map['parentIntentSignature'] as String).input()).input(),
      qnaIntentConfiguration: map['qnaIntentConfiguration'] == null ? null : ((V2modelsIntentQnaIntentConfiguration.fromMap((map['qnaIntentConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sampleUtterances: map['sampleUtterances'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentSampleUtterance>(map['sampleUtterances']!, (value) => V2modelsIntentSampleUtterance.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      slotPriorities: map['slotPriorities'] == null ? null : ((pulumi.Input.decodeList<V2modelsIntentSlotPriority>(map['slotPriorities']!, (value) => V2modelsIntentSlotPriority.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((V2modelsIntentTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

