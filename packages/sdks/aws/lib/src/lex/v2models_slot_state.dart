// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_multiple_values_setting.dart';
import 'v2models_slot_obfuscation_setting.dart';
import 'v2models_slot_sub_slot_setting.dart';
import 'v2models_slot_timeouts.dart';
import 'v2models_slot_value_elicitation_setting.dart';

/// Input properties used for looking up and filtering V2modelsSlot resources.
class V2modelsSlotState {
  /// Identifier of the bot associated with the slot.
  final pulumi.Input<String>? botId;
  /// Version of the bot associated with the slot.
  final pulumi.Input<String>? botVersion;
  /// Description of the slot.
  final pulumi.Input<String>? description;
  /// Identifier of the intent that contains the slot.
  final pulumi.Input<String>? intentId;
  /// Identifier of the language and locale that the slot will be used in.
  final pulumi.Input<String>? localeId;
  /// Whether the slot returns multiple values in one response.
  /// See the `multiple_values_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotMultipleValuesSetting>>? multipleValuesSettings;
  /// Name of the slot.
  final pulumi.Input<String>? name;
  /// Determines how slot values are used in Amazon CloudWatch logs.
  /// See the `obfuscation_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotObfuscationSetting>>? obfuscationSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Unique identifier associated with the slot.
  final pulumi.Input<String>? slotId;
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
  final pulumi.Input<V2modelsSlotValueElicitationSetting>? valueElicitationSetting;

  /// Creates a new [V2modelsSlotState].
  /// [botId] Identifier of the bot associated with the slot.
  /// [botVersion] Version of the bot associated with the slot.
  /// [description] Description of the slot.
  /// [intentId] Identifier of the intent that contains the slot.
  /// [localeId] Identifier of the language and locale that the slot will be used in.
  /// [multipleValuesSettings] Whether the slot returns multiple values in one response.
  /// [name] Name of the slot.
  /// [obfuscationSettings] Determines how slot values are used in Amazon CloudWatch logs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slotId] Unique identifier associated with the slot.
  /// [slotTypeId] Unique identifier for the slot type associated with this slot.
  /// [subSlotSettings] Specifications for the constituent sub slots and the expression for the composite slot.
  /// [timeouts] Optional.
  /// [valueElicitationSetting] Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  V2modelsSlotState({
    this.botId,
    this.botVersion,
    this.description,
    this.intentId,
    this.localeId,
    this.multipleValuesSettings,
    this.name,
    this.obfuscationSettings,
    this.region,
    this.slotId,
    this.slotTypeId,
    this.subSlotSettings,
    this.timeouts,
    this.valueElicitationSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': ?botId,
      'botVersion': ?botVersion,
      'description': ?description,
      'intentId': ?intentId,
      'localeId': ?localeId,
      'multipleValuesSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotMultipleValuesSetting>, List<Map<String, dynamic>>>(multipleValuesSettings, (value) => pulumi.Input.encodeList<V2modelsSlotMultipleValuesSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'obfuscationSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotObfuscationSetting>, List<Map<String, dynamic>>>(obfuscationSettings, (value) => pulumi.Input.encodeList<V2modelsSlotObfuscationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'slotId': ?slotId,
      'slotTypeId': ?slotTypeId,
      'subSlotSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSetting>, List<Map<String, dynamic>>>(subSlotSettings, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'valueElicitationSetting': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSetting, Map<String, dynamic>>(valueElicitationSetting, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotState.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotState(
      botId: (() { final guardedValue = map['botId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      botVersion: (() { final guardedValue = map['botVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intentId: (() { final guardedValue = map['intentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localeId: (() { final guardedValue = map['localeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multipleValuesSettings: (() { final guardedValue = map['multipleValuesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotMultipleValuesSetting>(guardedValue, (value) => V2modelsSlotMultipleValuesSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      obfuscationSettings: (() { final guardedValue = map['obfuscationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotObfuscationSetting>(guardedValue, (value) => V2modelsSlotObfuscationSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotId: (() { final guardedValue = map['slotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotTypeId: (() { final guardedValue = map['slotTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subSlotSettings: (() { final guardedValue = map['subSlotSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotSubSlotSetting>(guardedValue, (value) => V2modelsSlotSubSlotSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueElicitationSetting: (() { final guardedValue = map['valueElicitationSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotValueElicitationSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

