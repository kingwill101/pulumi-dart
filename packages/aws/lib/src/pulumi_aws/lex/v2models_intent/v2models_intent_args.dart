// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for V2modelsIntent.
class V2modelsIntentArgs {
  /// Identifier of the bot associated with this intent.
  final Input<String> botId;

  /// Version of the bot associated with this intent.
  final Input<String> botVersion;

  /// Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See <span pulumi-lang-nodejs="`closingSetting`" pulumi-lang-dotnet="`ClosingSetting`" pulumi-lang-go="`closingSetting`" pulumi-lang-python="`closing_setting`" pulumi-lang-yaml="`closingSetting`" pulumi-lang-java="`closingSetting`">`closing_setting`</span>.
  final Input<V2modelsIntentClosingSetting>? closingSetting;

  /// Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` <span pulumi-lang-nodejs="`promptAttemptsSpecification`" pulumi-lang-dotnet="`PromptAttemptsSpecification`" pulumi-lang-go="`promptAttemptsSpecification`" pulumi-lang-python="`prompt_attempts_specification`" pulumi-lang-yaml="`promptAttemptsSpecification`" pulumi-lang-java="`promptAttemptsSpecification`">`prompt_attempts_specification`</span>s. This will cause Terraform to report differences. Use the <span pulumi-lang-nodejs="`confirmationSetting`" pulumi-lang-dotnet="`ConfirmationSetting`" pulumi-lang-go="`confirmationSetting`" pulumi-lang-python="`confirmation_setting`" pulumi-lang-yaml="`confirmationSetting`" pulumi-lang-java="`confirmationSetting`">`confirmation_setting`</span> configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See <span pulumi-lang-nodejs="`confirmationSetting`" pulumi-lang-dotnet="`ConfirmationSetting`" pulumi-lang-go="`confirmationSetting`" pulumi-lang-python="`confirmation_setting`" pulumi-lang-yaml="`confirmationSetting`" pulumi-lang-java="`confirmationSetting`">`confirmation_setting`</span>.
  final Input<V2modelsIntentConfirmationSetting>? confirmationSetting;

  /// Description of the intent. Use the description to help identify the intent in lists.
  final Input<String>? description;

  /// Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See <span pulumi-lang-nodejs="`dialogCodeHook`" pulumi-lang-dotnet="`DialogCodeHook`" pulumi-lang-go="`dialogCodeHook`" pulumi-lang-python="`dialog_code_hook`" pulumi-lang-yaml="`dialogCodeHook`" pulumi-lang-java="`dialogCodeHook`">`dialog_code_hook`</span>.
  final Input<V2modelsIntentDialogCodeHook>? dialogCodeHook;

  /// Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See <span pulumi-lang-nodejs="`fulfillmentCodeHook`" pulumi-lang-dotnet="`FulfillmentCodeHook`" pulumi-lang-go="`fulfillmentCodeHook`" pulumi-lang-python="`fulfillment_code_hook`" pulumi-lang-yaml="`fulfillmentCodeHook`" pulumi-lang-java="`fulfillmentCodeHook`">`fulfillment_code_hook`</span>.
  final Input<V2modelsIntentFulfillmentCodeHook>? fulfillmentCodeHook;

  /// Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See <span pulumi-lang-nodejs="`initialResponseSetting`" pulumi-lang-dotnet="`InitialResponseSetting`" pulumi-lang-go="`initialResponseSetting`" pulumi-lang-python="`initial_response_setting`" pulumi-lang-yaml="`initialResponseSetting`" pulumi-lang-java="`initialResponseSetting`">`initial_response_setting`</span>.
  final Input<V2modelsIntentInitialResponseSetting>? initialResponseSetting;

  /// Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See <span pulumi-lang-nodejs="`inputContext`" pulumi-lang-dotnet="`InputContext`" pulumi-lang-go="`inputContext`" pulumi-lang-python="`input_context`" pulumi-lang-yaml="`inputContext`" pulumi-lang-java="`inputContext`">`input_context`</span>.
  final Input<List<V2modelsIntentInputContext>>? inputContexts;

  /// Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with <span pulumi-lang-nodejs="`qnaIntentConfiguration`" pulumi-lang-dotnet="`QnaIntentConfiguration`" pulumi-lang-go="`qnaIntentConfiguration`" pulumi-lang-python="`qna_intent_configuration`" pulumi-lang-yaml="`qnaIntentConfiguration`" pulumi-lang-java="`qnaIntentConfiguration`">`qna_intent_configuration`</span>. See <span pulumi-lang-nodejs="`kendraConfiguration`" pulumi-lang-dotnet="`KendraConfiguration`" pulumi-lang-go="`kendraConfiguration`" pulumi-lang-python="`kendra_configuration`" pulumi-lang-yaml="`kendraConfiguration`" pulumi-lang-java="`kendraConfiguration`">`kendra_configuration`</span>.
  final Input<V2modelsIntentKendraConfiguration>? kendraConfiguration;

  /// Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  final Input<String> localeId;

  /// Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See <span pulumi-lang-nodejs="`outputContext`" pulumi-lang-dotnet="`OutputContext`" pulumi-lang-go="`outputContext`" pulumi-lang-python="`output_context`" pulumi-lang-yaml="`outputContext`" pulumi-lang-java="`outputContext`">`output_context`</span>.
  final Input<List<V2modelsIntentOutputContext>>? outputContexts;

  /// Identifier for the built-in intent to base this intent on.
  final Input<String>? parentIntentSignature;

  /// Configuration block for QnA intent settings. This is used when <span pulumi-lang-nodejs="`parentIntentSignature`" pulumi-lang-dotnet="`ParentIntentSignature`" pulumi-lang-go="`parentIntentSignature`" pulumi-lang-python="`parent_intent_signature`" pulumi-lang-yaml="`parentIntentSignature`" pulumi-lang-java="`parentIntentSignature`">`parent_intent_signature`</span> is set to `AMAZON.QnAIntent`. Cannot be used with <span pulumi-lang-nodejs="`kendraConfiguration`" pulumi-lang-dotnet="`KendraConfiguration`" pulumi-lang-go="`kendraConfiguration`" pulumi-lang-python="`kendra_configuration`" pulumi-lang-yaml="`kendraConfiguration`" pulumi-lang-java="`kendraConfiguration`">`kendra_configuration`</span>. See <span pulumi-lang-nodejs="`qnaIntentConfiguration`" pulumi-lang-dotnet="`QnaIntentConfiguration`" pulumi-lang-go="`qnaIntentConfiguration`" pulumi-lang-python="`qna_intent_configuration`" pulumi-lang-yaml="`qnaIntentConfiguration`" pulumi-lang-java="`qnaIntentConfiguration`">`qna_intent_configuration`</span>.
  final Input<V2modelsIntentQnaIntentConfiguration>? qnaIntentConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for strings that a user might say to signal the intent. See <span pulumi-lang-nodejs="`sampleUtterance`" pulumi-lang-dotnet="`SampleUtterance`" pulumi-lang-go="`sampleUtterance`" pulumi-lang-python="`sample_utterance`" pulumi-lang-yaml="`sampleUtterance`" pulumi-lang-java="`sampleUtterance`">`sample_utterance`</span>.
  final Input<List<V2modelsIntentSampleUtterance>>? sampleUtterances;

  /// Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See <span pulumi-lang-nodejs="`slotPriority`" pulumi-lang-dotnet="`SlotPriority`" pulumi-lang-go="`slotPriority`" pulumi-lang-python="`slot_priority`" pulumi-lang-yaml="`slotPriority`" pulumi-lang-java="`slotPriority`">`slot_priority`</span>.
  final Input<List<V2modelsIntentSlotPriority>>? slotPriorities;
  final Input<V2modelsIntentTimeouts>? timeouts;

  V2modelsIntentArgs({
    required this.botId,
    required this.botVersion,
    this.closingSetting,
    this.confirmationSetting,
    this.description,
    this.dialogCodeHook,
    this.fulfillmentCodeHook,
    this.initialResponseSetting,
    this.inputContexts,
    this.kendraConfiguration,
    required this.localeId,
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
    final map = <String, dynamic>{};
    map['botId'] = botId;
    map['botVersion'] = botVersion;
    final closingSettingValue = closingSetting;
    if (closingSettingValue != null) {
      map['closingSetting'] = Input.mapOptionalInputValue<
          V2modelsIntentClosingSetting,
          Map<String, dynamic>>(closingSettingValue, (value) => value.toMap());
    }
    final confirmationSettingValue = confirmationSetting;
    if (confirmationSettingValue != null) {
      map['confirmationSetting'] = Input.mapOptionalInputValue<
              V2modelsIntentConfirmationSetting, Map<String, dynamic>>(
          confirmationSettingValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dialogCodeHookValue = dialogCodeHook;
    if (dialogCodeHookValue != null) {
      map['dialogCodeHook'] = Input.mapOptionalInputValue<
          V2modelsIntentDialogCodeHook,
          Map<String, dynamic>>(dialogCodeHookValue, (value) => value.toMap());
    }
    final fulfillmentCodeHookValue = fulfillmentCodeHook;
    if (fulfillmentCodeHookValue != null) {
      map['fulfillmentCodeHook'] = Input.mapOptionalInputValue<
              V2modelsIntentFulfillmentCodeHook, Map<String, dynamic>>(
          fulfillmentCodeHookValue, (value) => value.toMap());
    }
    final initialResponseSettingValue = initialResponseSetting;
    if (initialResponseSettingValue != null) {
      map['initialResponseSetting'] = Input.mapOptionalInputValue<
              V2modelsIntentInitialResponseSetting, Map<String, dynamic>>(
          initialResponseSettingValue, (value) => value.toMap());
    }
    final inputContextsValue = inputContexts;
    if (inputContextsValue != null) {
      map['inputContexts'] = Input.mapOptionalInputValue<
              List<V2modelsIntentInputContext>, List<Map<String, dynamic>>>(
          inputContextsValue,
          (value) => Input.encodeList<V2modelsIntentInputContext,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final kendraConfigurationValue = kendraConfiguration;
    if (kendraConfigurationValue != null) {
      map['kendraConfiguration'] = Input.mapOptionalInputValue<
              V2modelsIntentKendraConfiguration, Map<String, dynamic>>(
          kendraConfigurationValue, (value) => value.toMap());
    }
    map['localeId'] = localeId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputContextsValue = outputContexts;
    if (outputContextsValue != null) {
      map['outputContexts'] = Input.mapOptionalInputValue<
              List<V2modelsIntentOutputContext>, List<Map<String, dynamic>>>(
          outputContextsValue,
          (value) => Input.encodeList<V2modelsIntentOutputContext,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parentIntentSignatureValue = parentIntentSignature;
    if (parentIntentSignatureValue != null) {
      map['parentIntentSignature'] = parentIntentSignatureValue;
    }
    final qnaIntentConfigurationValue = qnaIntentConfiguration;
    if (qnaIntentConfigurationValue != null) {
      map['qnaIntentConfiguration'] = Input.mapOptionalInputValue<
              V2modelsIntentQnaIntentConfiguration, Map<String, dynamic>>(
          qnaIntentConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sampleUtterancesValue = sampleUtterances;
    if (sampleUtterancesValue != null) {
      map['sampleUtterances'] = Input.mapOptionalInputValue<
              List<V2modelsIntentSampleUtterance>, List<Map<String, dynamic>>>(
          sampleUtterancesValue,
          (value) => Input.encodeList<V2modelsIntentSampleUtterance,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final slotPrioritiesValue = slotPriorities;
    if (slotPrioritiesValue != null) {
      map['slotPriorities'] = Input.mapOptionalInputValue<
              List<V2modelsIntentSlotPriority>, List<Map<String, dynamic>>>(
          slotPrioritiesValue,
          (value) => Input.encodeList<V2modelsIntentSlotPriority,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<V2modelsIntentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentArgs(
      botId: Input.asInput<String>(map['botId']),
      botVersion: Input.asInput<String>(map['botVersion']),
      closingSetting: Input.asOptionalInput<V2modelsIntentClosingSetting>(
          map['closingSetting']),
      confirmationSetting:
          Input.asOptionalInput<V2modelsIntentConfirmationSetting>(
              map['confirmationSetting']),
      description: Input.asOptionalInput<String>(map['description']),
      dialogCodeHook: Input.asOptionalInput<V2modelsIntentDialogCodeHook>(
          map['dialogCodeHook']),
      fulfillmentCodeHook:
          Input.asOptionalInput<V2modelsIntentFulfillmentCodeHook>(
              map['fulfillmentCodeHook']),
      initialResponseSetting:
          Input.asOptionalInput<V2modelsIntentInitialResponseSetting>(
              map['initialResponseSetting']),
      inputContexts: Input.asOptionalInput<List<V2modelsIntentInputContext>>(
          map['inputContexts']),
      kendraConfiguration:
          Input.asOptionalInput<V2modelsIntentKendraConfiguration>(
              map['kendraConfiguration']),
      localeId: Input.asInput<String>(map['localeId']),
      name: Input.asOptionalInput<String>(map['name']),
      outputContexts: Input.asOptionalInput<List<V2modelsIntentOutputContext>>(
          map['outputContexts']),
      parentIntentSignature:
          Input.asOptionalInput<String>(map['parentIntentSignature']),
      qnaIntentConfiguration:
          Input.asOptionalInput<V2modelsIntentQnaIntentConfiguration>(
              map['qnaIntentConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      sampleUtterances:
          Input.asOptionalInput<List<V2modelsIntentSampleUtterance>>(
              map['sampleUtterances']),
      slotPriorities: Input.asOptionalInput<List<V2modelsIntentSlotPriority>>(
          map['slotPriorities']),
      timeouts: Input.asOptionalInput<V2modelsIntentTimeouts>(map['timeouts']),
    );
  }
}
