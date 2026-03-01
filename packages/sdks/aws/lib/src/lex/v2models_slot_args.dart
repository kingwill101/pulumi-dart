// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_multiple_values_setting.dart';
import 'v2models_slot_obfuscation_setting.dart';
import 'v2models_slot_sub_slot_setting.dart';
import 'v2models_slot_timeouts.dart';
import 'v2models_slot_value_elicitation_setting.dart';

/// {@template pulumi_lex_v2models_slot_v2models_slot_args_doc}
/// The set of arguments for V2modelsSlot.
/// {@endtemplate}
/// {@macro pulumi_lex_v2models_slot_v2models_slot_args_doc}
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
  final pulumi.Input<List<V2modelsSlotMultipleValuesSetting>>? multipleValuesSettings;
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
  final pulumi.Input<V2modelsSlotValueElicitationSetting> valueElicitationSetting;

  /// Creates a new [V2modelsSlotArgs].
  /// [botId] Identifier of the bot associated with the slot.
  /// [botVersion] Version of the bot associated with the slot.
  /// [description] Description of the slot.
  /// [intentId] Identifier of the intent that contains the slot.
  /// [localeId] Identifier of the language and locale that the slot will be used in.
  /// [multipleValuesSettings] Whether the slot returns multiple values in one response.
  /// [name] Name of the slot.
  /// [obfuscationSettings] Determines how slot values are used in Amazon CloudWatch logs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slotTypeId] Unique identifier for the slot type associated with this slot.
  /// [subSlotSettings] Specifications for the constituent sub slots and the expression for the composite slot.
  /// [timeouts] Optional.
  /// [valueElicitationSetting] Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  V2modelsSlotArgs({
    required pulumi.Output<String> botId,
    required pulumi.Output<String> botVersion,
    pulumi.Output<String>? description,
    required pulumi.Output<String> intentId,
    required pulumi.Output<String> localeId,
    pulumi.Output<List<V2modelsSlotMultipleValuesSetting>>? multipleValuesSettings,
    pulumi.Output<String>? name,
    pulumi.Output<List<V2modelsSlotObfuscationSetting>>? obfuscationSettings,
    pulumi.Output<String>? region,
    pulumi.Output<String>? slotTypeId,
    pulumi.Output<List<V2modelsSlotSubSlotSetting>>? subSlotSettings,
    pulumi.Output<V2modelsSlotTimeouts>? timeouts,
    required pulumi.Output<V2modelsSlotValueElicitationSetting> valueElicitationSetting,
  }) :
      botId = pulumi.Input.asInput<String>(botId),
      botVersion = pulumi.Input.asInput<String>(botVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      intentId = pulumi.Input.asInput<String>(intentId),
      localeId = pulumi.Input.asInput<String>(localeId),
      multipleValuesSettings = pulumi.Input.asOptionalInput<List<V2modelsSlotMultipleValuesSetting>>(multipleValuesSettings),
      name = pulumi.Input.asOptionalInput<String>(name),
      obfuscationSettings = pulumi.Input.asOptionalInput<List<V2modelsSlotObfuscationSetting>>(obfuscationSettings),
      region = pulumi.Input.asOptionalInput<String>(region),
      slotTypeId = pulumi.Input.asOptionalInput<String>(slotTypeId),
      subSlotSettings = pulumi.Input.asOptionalInput<List<V2modelsSlotSubSlotSetting>>(subSlotSettings),
      timeouts = pulumi.Input.asOptionalInput<V2modelsSlotTimeouts>(timeouts),
      valueElicitationSetting = pulumi.Input.asInput<V2modelsSlotValueElicitationSetting>(valueElicitationSetting);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': botId,
      'botVersion': botVersion,
      'description': ?description,
      'intentId': intentId,
      'localeId': localeId,
      'multipleValuesSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotMultipleValuesSetting>, List<Map<String, dynamic>>>(multipleValuesSettings, (value) => pulumi.Input.encodeList<V2modelsSlotMultipleValuesSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'obfuscationSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotObfuscationSetting>, List<Map<String, dynamic>>>(obfuscationSettings, (value) => pulumi.Input.encodeList<V2modelsSlotObfuscationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'slotTypeId': ?slotTypeId,
      'subSlotSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSetting>, List<Map<String, dynamic>>>(subSlotSettings, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'valueElicitationSetting': pulumi.Input.mapInputValue<V2modelsSlotValueElicitationSetting, Map<String, dynamic>>(valueElicitationSetting, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotArgs(
      botId: pulumi.Output.create<String>(map['botId'] as String),
      botVersion: pulumi.Output.create<String>(map['botVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      intentId: pulumi.Output.create<String>(map['intentId'] as String),
      localeId: pulumi.Output.create<String>(map['localeId'] as String),
      multipleValuesSettings: map['multipleValuesSettings'] == null ? null : pulumi.Output.create<List<V2modelsSlotMultipleValuesSetting>>(pulumi.Input.decodeList<V2modelsSlotMultipleValuesSetting>(map['multipleValuesSettings'], (value) => V2modelsSlotMultipleValuesSetting.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      obfuscationSettings: map['obfuscationSettings'] == null ? null : pulumi.Output.create<List<V2modelsSlotObfuscationSetting>>(pulumi.Input.decodeList<V2modelsSlotObfuscationSetting>(map['obfuscationSettings'], (value) => V2modelsSlotObfuscationSetting.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      slotTypeId: map['slotTypeId'] == null ? null : pulumi.Output.create<String>(map['slotTypeId'] as String),
      subSlotSettings: map['subSlotSettings'] == null ? null : pulumi.Output.create<List<V2modelsSlotSubSlotSetting>>(pulumi.Input.decodeList<V2modelsSlotSubSlotSetting>(map['subSlotSettings'], (value) => V2modelsSlotSubSlotSetting.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<V2modelsSlotTimeouts>(V2modelsSlotTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      valueElicitationSetting: pulumi.Output.create<V2modelsSlotValueElicitationSetting>(V2modelsSlotValueElicitationSetting.fromMap((map['valueElicitationSetting'] as Map).cast<String, dynamic>())),
    );
  }
}

