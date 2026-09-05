// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_composite_slot_type_setting.dart';
import 'v2models_slot_type_external_source_setting.dart';
import 'v2models_slot_type_slot_type_value.dart';
import 'v2models_slot_type_timeouts.dart';
import 'v2models_slot_type_value_selection_setting.dart';

/// Input properties used for looking up and filtering V2modelsSlotType resources.
class V2modelsSlotTypeState {
  /// Identifier of the bot associated with this slot type.
  final pulumi.Input<String?>? botId;
  /// Version of the bot associated with this slot type.
  final pulumi.Input<String?>? botVersion;
  /// Specifications for a composite slot type.
  /// See `compositeSlotTypeSetting` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeCompositeSlotTypeSetting>?>? compositeSlotTypeSettings;
  /// Description of the slot type.
  final pulumi.Input<String?>? description;
  /// Type of external information used to create the slot type.
  /// See `externalSourceSetting` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeExternalSourceSetting>?>? externalSourceSettings;
  /// Identifier of the language and locale where this slot type is used.
  /// All of the bots, slot types, and slots used by the intent must have the same locale.
  final pulumi.Input<String?>? localeId;
  /// Name of the slot type.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Built-in slot type used as a parent of this slot type.
  /// When you define a parent slot type, the new slot type has the configuration of the parent slot type.
  /// Only `AMAZON.AlphaNumeric` is supported.
  final pulumi.Input<String?>? parentSlotTypeSignature;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Unique identifier for the slot type.
  final pulumi.Input<String?>? slotTypeId;
  /// List of SlotTypeValue objects that defines the values that the slot type can take.
  /// Each value can have a list of synonyms, additional values that help train the machine learning model about the values that it resolves for a slot.
  /// See `slotTypeValues` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeSlotTypeValue>?>? slotTypeValues;
  final pulumi.Input<V2modelsSlotTypeTimeouts?>? timeouts;
  /// Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  /// See `valueSelectionSetting` argument reference below.
  final pulumi.Input<V2modelsSlotTypeValueSelectionSetting?>? valueSelectionSetting;

  /// Creates a new [V2modelsSlotTypeState].
  /// [botId] Identifier of the bot associated with this slot type.
  /// [botVersion] Version of the bot associated with this slot type.
  /// [compositeSlotTypeSettings] Specifications for a composite slot type.
  /// [description] Description of the slot type.
  /// [externalSourceSettings] Type of external information used to create the slot type.
  /// [localeId] Identifier of the language and locale where this slot type is used.
  /// [name] Name of the slot type.
  /// [parentSlotTypeSignature] Built-in slot type used as a parent of this slot type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slotTypeId] Unique identifier for the slot type.
  /// [slotTypeValues] List of SlotTypeValue objects that defines the values that the slot type can take.
  /// [timeouts] Optional.
  /// [valueSelectionSetting] Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  const V2modelsSlotTypeState({
    this.botId,
    this.botVersion,
    this.compositeSlotTypeSettings,
    this.description,
    this.externalSourceSettings,
    this.localeId,
    this.name,
    this.parentSlotTypeSignature,
    this.region,
    this.slotTypeId,
    this.slotTypeValues,
    this.timeouts,
    this.valueSelectionSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': ?botId,
      'botVersion': ?botVersion,
      'compositeSlotTypeSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeCompositeSlotTypeSetting>, List<Map<String, dynamic>>>(compositeSlotTypeSettings, (value) => pulumi.Input.encodeList<V2modelsSlotTypeCompositeSlotTypeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'externalSourceSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeExternalSourceSetting>, List<Map<String, dynamic>>>(externalSourceSettings, (value) => pulumi.Input.encodeList<V2modelsSlotTypeExternalSourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localeId': ?localeId,
      'name': ?name,
      'parentSlotTypeSignature': ?parentSlotTypeSignature,
      'region': ?region,
      'slotTypeId': ?slotTypeId,
      'slotTypeValues': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeSlotTypeValue>, List<Map<String, dynamic>>>(slotTypeValues, (value) => pulumi.Input.encodeList<V2modelsSlotTypeSlotTypeValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotTypeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'valueSelectionSetting': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotTypeValueSelectionSetting, Map<String, dynamic>>(valueSelectionSetting, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotTypeState.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeState(
      botId: (() { final guardedValue = map['botId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      botVersion: (() { final guardedValue = map['botVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compositeSlotTypeSettings: (() { final guardedValue = map['compositeSlotTypeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeCompositeSlotTypeSetting>(guardedValue, (value) => V2modelsSlotTypeCompositeSlotTypeSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalSourceSettings: (() { final guardedValue = map['externalSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSetting>(guardedValue, (value) => V2modelsSlotTypeExternalSourceSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localeId: (() { final guardedValue = map['localeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentSlotTypeSignature: (() { final guardedValue = map['parentSlotTypeSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotTypeId: (() { final guardedValue = map['slotTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotTypeValues: (() { final guardedValue = map['slotTypeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValue>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueSelectionSetting: (() { final guardedValue = map['valueSelectionSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
