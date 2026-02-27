// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_multiple_values_setting/v2models_slot_multiple_values_setting.dart';
import '../v2models_slot_obfuscation_setting/v2models_slot_obfuscation_setting.dart';
import '../v2models_slot_sub_slot_setting/v2models_slot_sub_slot_setting.dart';
import '../v2models_slot_timeouts/v2models_slot_timeouts.dart';
import '../v2models_slot_value_elicitation_setting/v2models_slot_value_elicitation_setting.dart';

/// The set of arguments for V2modelsSlot.
class V2modelsSlotArgs {
  /// Identifier of the bot associated with the slot.
  final Input<String> botId;

  /// Version of the bot associated with the slot.
  final Input<String> botVersion;

  /// Description of the slot.
  final Input<String>? description;

  /// Identifier of the intent that contains the slot.
  final Input<String> intentId;

  /// Identifier of the language and locale that the slot will be used in.
  final Input<String> localeId;

  /// Whether the slot returns multiple values in one response.
  /// See the `multiple_values_setting` argument reference below.
  final Input<List<V2modelsSlotMultipleValuesSetting>>? multipleValuesSettings;

  /// Name of the slot.
  final Input<String>? name;

  /// Determines how slot values are used in Amazon CloudWatch logs.
  /// See the `obfuscation_setting` argument reference below.
  final Input<List<V2modelsSlotObfuscationSetting>>? obfuscationSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Unique identifier for the slot type associated with this slot.
  final Input<String>? slotTypeId;

  /// Specifications for the constituent sub slots and the expression for the composite slot.
  /// See the `sub_slot_setting` argument reference below.
  final Input<List<V2modelsSlotSubSlotSetting>>? subSlotSettings;
  final Input<V2modelsSlotTimeouts>? timeouts;

  /// Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  /// If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default `prompt_attempts_specification` blocks for the initial prompt (map key `Initial`) and each retry attempt (map keys `Retry1`, `Retry2`, etc.).
  /// This will cause Terraform to report differences.
  /// Use the `value_elicitation_setting` configuration above in the `value_elicitation_setting` example to avoid differences resulting from AWS default configurations.
  /// See the `value_elicitation_setting` argument reference below.
  ///
  /// The following arguments are optional:
  final Input<V2modelsSlotValueElicitationSetting> valueElicitationSetting;

  V2modelsSlotArgs({
    required this.botId,
    required this.botVersion,
    this.description,
    required this.intentId,
    required this.localeId,
    this.multipleValuesSettings,
    this.name,
    this.obfuscationSettings,
    this.region,
    this.slotTypeId,
    this.subSlotSettings,
    this.timeouts,
    required this.valueElicitationSetting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['botId'] = botId;
    map['botVersion'] = botVersion;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['intentId'] = intentId;
    map['localeId'] = localeId;
    final multipleValuesSettingsValue = multipleValuesSettings;
    if (multipleValuesSettingsValue != null) {
      map['multipleValuesSettings'] = Input.mapOptionalInputValue<
              List<V2modelsSlotMultipleValuesSetting>,
              List<Map<String, dynamic>>>(
          multipleValuesSettingsValue,
          (value) => Input.encodeList<V2modelsSlotMultipleValuesSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final obfuscationSettingsValue = obfuscationSettings;
    if (obfuscationSettingsValue != null) {
      map['obfuscationSettings'] = Input.mapOptionalInputValue<
              List<V2modelsSlotObfuscationSetting>, List<Map<String, dynamic>>>(
          obfuscationSettingsValue,
          (value) => Input.encodeList<V2modelsSlotObfuscationSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final slotTypeIdValue = slotTypeId;
    if (slotTypeIdValue != null) {
      map['slotTypeId'] = slotTypeIdValue;
    }
    final subSlotSettingsValue = subSlotSettings;
    if (subSlotSettingsValue != null) {
      map['subSlotSettings'] = Input.mapOptionalInputValue<
              List<V2modelsSlotSubSlotSetting>, List<Map<String, dynamic>>>(
          subSlotSettingsValue,
          (value) => Input.encodeList<V2modelsSlotSubSlotSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<V2modelsSlotTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['valueElicitationSetting'] = Input.mapInputValue<
            V2modelsSlotValueElicitationSetting, Map<String, dynamic>>(
        valueElicitationSetting, (value) => value.toMap());
    return map;
  }

  factory V2modelsSlotArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotArgs(
      botId: Input.asInput<String>(map['botId']),
      botVersion: Input.asInput<String>(map['botVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      intentId: Input.asInput<String>(map['intentId']),
      localeId: Input.asInput<String>(map['localeId']),
      multipleValuesSettings:
          Input.asOptionalInput<List<V2modelsSlotMultipleValuesSetting>>(
              map['multipleValuesSettings']),
      name: Input.asOptionalInput<String>(map['name']),
      obfuscationSettings:
          Input.asOptionalInput<List<V2modelsSlotObfuscationSetting>>(
              map['obfuscationSettings']),
      region: Input.asOptionalInput<String>(map['region']),
      slotTypeId: Input.asOptionalInput<String>(map['slotTypeId']),
      subSlotSettings: Input.asOptionalInput<List<V2modelsSlotSubSlotSetting>>(
          map['subSlotSettings']),
      timeouts: Input.asOptionalInput<V2modelsSlotTimeouts>(map['timeouts']),
      valueElicitationSetting:
          Input.asInput<V2modelsSlotValueElicitationSetting>(
              map['valueElicitationSetting']),
    );
  }
}
