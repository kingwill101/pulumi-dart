// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_composite_slot_type_setting.dart';
import 'v2models_slot_type_external_source_setting.dart';
import 'v2models_slot_type_slot_type_value.dart';
import 'v2models_slot_type_timeouts.dart';
import 'v2models_slot_type_value_selection_setting.dart';

/// {@template pulumi_lex_v2models_slot_type_v2models_slot_type_args_doc}
/// The set of arguments for V2modelsSlotType.
/// {@endtemplate}
/// {@macro pulumi_lex_v2models_slot_type_v2models_slot_type_args_doc}
class V2modelsSlotTypeArgs {
  /// Identifier of the bot associated with this slot type.
  final pulumi.Input<String> botId;
  /// Version of the bot associated with this slot type.
  final pulumi.Input<String> botVersion;
  /// Specifications for a composite slot type.
  /// See `composite_slot_type_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeCompositeSlotTypeSetting>>? compositeSlotTypeSettings;
  /// Description of the slot type.
  final pulumi.Input<String>? description;
  /// Type of external information used to create the slot type.
  /// See `external_source_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeExternalSourceSetting>>? externalSourceSettings;
  /// Identifier of the language and locale where this slot type is used.
  /// All of the bots, slot types, and slots used by the intent must have the same locale.
  final pulumi.Input<String> localeId;
  /// Name of the slot type.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Built-in slot type used as a parent of this slot type.
  /// When you define a parent slot type, the new slot type has the configuration of the parent slot type.
  /// Only `AMAZON.AlphaNumeric` is supported.
  final pulumi.Input<String>? parentSlotTypeSignature;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of SlotTypeValue objects that defines the values that the slot type can take.
  /// Each value can have a list of synonyms, additional values that help train the machine learning model about the values that it resolves for a slot.
  /// See `slot_type_values` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeSlotTypeValue>>? slotTypeValues;
  final pulumi.Input<V2modelsSlotTypeTimeouts>? timeouts;
  /// Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  /// See `value_selection_setting` argument reference below.
  final pulumi.Input<V2modelsSlotTypeValueSelectionSetting>? valueSelectionSetting;

  /// Creates a new [V2modelsSlotTypeArgs].
  /// [botId] Identifier of the bot associated with this slot type.
  /// [botVersion] Version of the bot associated with this slot type.
  /// [compositeSlotTypeSettings] Specifications for a composite slot type.
  /// [description] Description of the slot type.
  /// [externalSourceSettings] Type of external information used to create the slot type.
  /// [localeId] Identifier of the language and locale where this slot type is used.
  /// [name] Name of the slot type.
  /// [parentSlotTypeSignature] Built-in slot type used as a parent of this slot type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slotTypeValues] List of SlotTypeValue objects that defines the values that the slot type can take.
  /// [timeouts] Optional.
  /// [valueSelectionSetting] Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  const V2modelsSlotTypeArgs({
    required this.botId,
    required this.botVersion,
    this.compositeSlotTypeSettings,
    this.description,
    this.externalSourceSettings,
    required this.localeId,
    this.name,
    this.parentSlotTypeSignature,
    this.region,
    this.slotTypeValues,
    this.timeouts,
    this.valueSelectionSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': botId,
      'botVersion': botVersion,
      'compositeSlotTypeSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeCompositeSlotTypeSetting>, List<Map<String, dynamic>>>(compositeSlotTypeSettings, (value) => pulumi.Input.encodeList<V2modelsSlotTypeCompositeSlotTypeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'externalSourceSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeExternalSourceSetting>, List<Map<String, dynamic>>>(externalSourceSettings, (value) => pulumi.Input.encodeList<V2modelsSlotTypeExternalSourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localeId': localeId,
      'name': ?name,
      'parentSlotTypeSignature': ?parentSlotTypeSignature,
      'region': ?region,
      'slotTypeValues': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeSlotTypeValue>, List<Map<String, dynamic>>>(slotTypeValues, (value) => pulumi.Input.encodeList<V2modelsSlotTypeSlotTypeValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotTypeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'valueSelectionSetting': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotTypeValueSelectionSetting, Map<String, dynamic>>(valueSelectionSetting, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotTypeArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeArgs(
      botId: pulumi.Input.fromValue(map['botId'] as String),
      botVersion: pulumi.Input.fromValue(map['botVersion'] as String),
      compositeSlotTypeSettings: (() { final guardedValue = map['compositeSlotTypeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeCompositeSlotTypeSetting>(guardedValue, (value) => V2modelsSlotTypeCompositeSlotTypeSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalSourceSettings: (() { final guardedValue = map['externalSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSetting>(guardedValue, (value) => V2modelsSlotTypeExternalSourceSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localeId: pulumi.Input.fromValue(map['localeId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentSlotTypeSignature: (() { final guardedValue = map['parentSlotTypeSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotTypeValues: (() { final guardedValue = map['slotTypeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValue>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueSelectionSetting: (() { final guardedValue = map['valueSelectionSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

