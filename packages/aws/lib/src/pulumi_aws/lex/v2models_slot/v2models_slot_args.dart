// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_multiple_values_setting/v2models_slot_multiple_values_setting.dart';
import '../v2models_slot_obfuscation_setting/v2models_slot_obfuscation_setting.dart';
import '../v2models_slot_sub_slot_setting/v2models_slot_sub_slot_setting.dart';
import '../v2models_slot_timeouts/v2models_slot_timeouts.dart';
import '../v2models_slot_value_elicitation_setting/v2models_slot_value_elicitation_setting.dart';

/// The set of arguments for V2modelsSlot.
class V2modelsSlotArgs {
  /// Identifier of the bot associated with the slot.
  final pulumi.Input<String> botId;

  /// Version of the bot associated with the slot.
  final pulumi.Input<String> botVersion;

  /// Description of the slot.
  final pulumi.Input<String>? description;

  /// Identifier of the intent that contains the slot.
  final pulumi.Input<String> intentId;

  /// Identifier of the language and locale that the slot will be used in.
  final pulumi.Input<String> localeId;

  /// Whether the slot returns multiple values in one response.
  /// See the `multiple_values_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotMultipleValuesSetting>>?
      multipleValuesSettings;

  /// Name of the slot.
  final pulumi.Input<String>? name;

  /// Determines how slot values are used in Amazon CloudWatch logs.
  /// See the `obfuscation_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotObfuscationSetting>>? obfuscationSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Unique identifier for the slot type associated with this slot.
  final pulumi.Input<String>? slotTypeId;

  /// Specifications for the constituent sub slots and the expression for the composite slot.
  /// See the `sub_slot_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSetting>>? subSlotSettings;
  final pulumi.Input<V2modelsSlotTimeouts>? timeouts;

  /// Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  /// If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default `prompt_attempts_specification` blocks for the initial prompt (map key `Initial`) and each retry attempt (map keys `Retry1`, `Retry2`, etc.).
  /// This will cause Terraform to report differences.
  /// Use the `value_elicitation_setting` configuration above in the `value_elicitation_setting` example to avoid differences resulting from AWS default configurations.
  /// See the `value_elicitation_setting` argument reference below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<V2modelsSlotValueElicitationSetting>
      valueElicitationSetting;

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
      map['multipleValuesSettings'] = pulumi.Input.mapOptionalInputValue<
              List<V2modelsSlotMultipleValuesSetting>,
              List<Map<String, dynamic>>>(
          multipleValuesSettingsValue,
          (value) => pulumi.Input.encodeList<V2modelsSlotMultipleValuesSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final obfuscationSettingsValue = obfuscationSettings;
    if (obfuscationSettingsValue != null) {
      map['obfuscationSettings'] = pulumi.Input.mapOptionalInputValue<
              List<V2modelsSlotObfuscationSetting>, List<Map<String, dynamic>>>(
          obfuscationSettingsValue,
          (value) => pulumi.Input.encodeList<V2modelsSlotObfuscationSetting,
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
      map['subSlotSettings'] = pulumi.Input.mapOptionalInputValue<
              List<V2modelsSlotSubSlotSetting>, List<Map<String, dynamic>>>(
          subSlotSettingsValue,
          (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<V2modelsSlotTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['valueElicitationSetting'] = pulumi.Input.mapInputValue<
            V2modelsSlotValueElicitationSetting, Map<String, dynamic>>(
        valueElicitationSetting, (value) => value.toMap());
    return map;
  }

  factory V2modelsSlotArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotArgs(
      botId: pulumi.Input.asInput<String>(map['botId']),
      botVersion: pulumi.Input.asInput<String>(map['botVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      intentId: pulumi.Input.asInput<String>(map['intentId']),
      localeId: pulumi.Input.asInput<String>(map['localeId']),
      multipleValuesSettings:
          pulumi.Input.asOptionalInput<List<V2modelsSlotMultipleValuesSetting>>(
              map['multipleValuesSettings']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      obfuscationSettings:
          pulumi.Input.asOptionalInput<List<V2modelsSlotObfuscationSetting>>(
              map['obfuscationSettings']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      slotTypeId: pulumi.Input.asOptionalInput<String>(map['slotTypeId']),
      subSlotSettings:
          pulumi.Input.asOptionalInput<List<V2modelsSlotSubSlotSetting>>(
              map['subSlotSettings']),
      timeouts:
          pulumi.Input.asOptionalInput<V2modelsSlotTimeouts>(map['timeouts']),
      valueElicitationSetting:
          pulumi.Input.asInput<V2modelsSlotValueElicitationSetting>(
              map['valueElicitationSetting']),
    );
  }
}
