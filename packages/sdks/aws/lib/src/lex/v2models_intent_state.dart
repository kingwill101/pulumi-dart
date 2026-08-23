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
  /// Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closingSetting`.
  final pulumi.Input<V2modelsIntentClosingSetting>? closingSetting;
  /// Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `promptAttemptsSpecification`s. This will cause Terraform to report differences. Use the `confirmationSetting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmationSetting`.
  final pulumi.Input<V2modelsIntentConfirmationSetting>? confirmationSetting;
  /// Timestamp of the date and time that the intent was created.
  final pulumi.Input<String>? creationDateTime;
  /// Description of the intent. Use the description to help identify the intent in lists.
  final pulumi.Input<String>? description;
  /// Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialogCodeHook`.
  final pulumi.Input<V2modelsIntentDialogCodeHook>? dialogCodeHook;
  /// Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillmentCodeHook`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHook>? fulfillmentCodeHook;
  /// Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initialResponseSetting`.
  final pulumi.Input<V2modelsIntentInitialResponseSetting>? initialResponseSetting;
  /// Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `inputContext`.
  final pulumi.Input<List<V2modelsIntentInputContext>>? inputContexts;
  /// Unique identifier for the intent.
  final pulumi.Input<String>? intentId;
  /// Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qnaIntentConfiguration`. See `kendraConfiguration`.
  final pulumi.Input<V2modelsIntentKendraConfiguration>? kendraConfiguration;
  /// Timestamp of the last time that the intent was modified.
  final pulumi.Input<String>? lastUpdatedDateTime;
  /// Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  final pulumi.Input<String>? localeId;
  /// Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `outputContext`.
  final pulumi.Input<List<V2modelsIntentOutputContext>>? outputContexts;
  /// Identifier for the built-in intent to base this intent on.
  final pulumi.Input<String>? parentIntentSignature;
  /// Configuration block for QnA intent settings. This is used when `parentIntentSignature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendraConfiguration`. See `qnaIntentConfiguration`.
  final pulumi.Input<V2modelsIntentQnaIntentConfiguration>? qnaIntentConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for strings that a user might say to signal the intent. See `sampleUtterance`.
  final pulumi.Input<List<V2modelsIntentSampleUtterance>>? sampleUtterances;
  /// Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slotPriority`.
  final pulumi.Input<List<V2modelsIntentSlotPriority>>? slotPriorities;
  final pulumi.Input<V2modelsIntentTimeouts>? timeouts;

  /// Creates a new [V2modelsIntentState].
  /// [botId] Identifier of the bot associated with this intent.
  /// [botVersion] Version of the bot associated with this intent.
  /// [closingSetting] Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closingSetting`.
  /// [confirmationSetting] Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `promptAttemptsSpecification`s. This will cause Terraform to report differences. Use the `confirmationSetting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmationSetting`.
  /// [creationDateTime] Timestamp of the date and time that the intent was created.
  /// [description] Description of the intent. Use the description to help identify the intent in lists.
  /// [dialogCodeHook] Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialogCodeHook`.
  /// [fulfillmentCodeHook] Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillmentCodeHook`.
  /// [initialResponseSetting] Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initialResponseSetting`.
  /// [inputContexts] Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `inputContext`.
  /// [intentId] Unique identifier for the intent.
  /// [kendraConfiguration] Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qnaIntentConfiguration`. See `kendraConfiguration`.
  /// [lastUpdatedDateTime] Timestamp of the last time that the intent was modified.
  /// [localeId] Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  /// [name] Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  /// [outputContexts] Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `outputContext`.
  /// [parentIntentSignature] Identifier for the built-in intent to base this intent on.
  /// [qnaIntentConfiguration] Configuration block for QnA intent settings. This is used when `parentIntentSignature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendraConfiguration`. See `qnaIntentConfiguration`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sampleUtterances] Configuration block for strings that a user might say to signal the intent. See `sampleUtterance`.
  /// [slotPriorities] Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slotPriority`.
  /// [timeouts] Optional.
  const V2modelsIntentState({
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
      botId: (() { final guardedValue = map['botId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      botVersion: (() { final guardedValue = map['botVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      closingSetting: (() { final guardedValue = map['closingSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentClosingSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      confirmationSetting: (() { final guardedValue = map['confirmationSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationDateTime: (() { final guardedValue = map['creationDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dialogCodeHook: (() { final guardedValue = map['dialogCodeHook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fulfillmentCodeHook: (() { final guardedValue = map['fulfillmentCodeHook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialResponseSetting: (() { final guardedValue = map['initialResponseSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentInitialResponseSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputContexts: (() { final guardedValue = map['inputContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentInputContext>(guardedValue, (value) => V2modelsIntentInputContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      intentId: (() { final guardedValue = map['intentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kendraConfiguration: (() { final guardedValue = map['kendraConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentKendraConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastUpdatedDateTime: (() { final guardedValue = map['lastUpdatedDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localeId: (() { final guardedValue = map['localeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputContexts: (() { final guardedValue = map['outputContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentOutputContext>(guardedValue, (value) => V2modelsIntentOutputContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parentIntentSignature: (() { final guardedValue = map['parentIntentSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qnaIntentConfiguration: (() { final guardedValue = map['qnaIntentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentQnaIntentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleUtterances: (() { final guardedValue = map['sampleUtterances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentSampleUtterance>(guardedValue, (value) => V2modelsIntentSampleUtterance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slotPriorities: (() { final guardedValue = map['slotPriorities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentSlotPriority>(guardedValue, (value) => V2modelsIntentSlotPriority.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
