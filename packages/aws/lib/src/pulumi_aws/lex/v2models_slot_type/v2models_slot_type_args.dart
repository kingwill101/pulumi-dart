// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_type_composite_slot_type_setting/v2models_slot_type_composite_slot_type_setting.dart';
import '../v2models_slot_type_external_source_setting/v2models_slot_type_external_source_setting.dart';
import '../v2models_slot_type_slot_type_value/v2models_slot_type_slot_type_value.dart';
import '../v2models_slot_type_timeouts/v2models_slot_type_timeouts.dart';
import '../v2models_slot_type_value_selection_setting/v2models_slot_type_value_selection_setting.dart';

/// The set of arguments for V2modelsSlotType.
class V2modelsSlotTypeArgs {
  /// Identifier of the bot associated with this slot type.
  final Input<String> botId;

  /// Version of the bot associated with this slot type.
  final Input<String> botVersion;

  /// Specifications for a composite slot type.
  /// See `composite_slot_type_setting` argument reference below.
  final Input<List<V2modelsSlotTypeCompositeSlotTypeSetting>>?
      compositeSlotTypeSettings;

  /// Description of the slot type.
  final Input<String>? description;

  /// Type of external information used to create the slot type.
  /// See `external_source_setting` argument reference below.
  final Input<List<V2modelsSlotTypeExternalSourceSetting>>?
      externalSourceSettings;

  /// Identifier of the language and locale where this slot type is used.
  /// All of the bots, slot types, and slots used by the intent must have the same locale.
  final Input<String> localeId;

  /// Name of the slot type.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Built-in slot type used as a parent of this slot type.
  /// When you define a parent slot type, the new slot type has the configuration of the parent slot type.
  /// Only `AMAZON.AlphaNumeric` is supported.
  final Input<String>? parentSlotTypeSignature;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of SlotTypeValue objects that defines the values that the slot type can take.
  /// Each value can have a list of synonyms, additional values that help train the machine learning model about the values that it resolves for a slot.
  /// See `slot_type_values` argument reference below.
  final Input<List<V2modelsSlotTypeSlotTypeValue>>? slotTypeValues;
  final Input<V2modelsSlotTypeTimeouts>? timeouts;

  /// Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  /// See `value_selection_setting` argument reference below.
  final Input<V2modelsSlotTypeValueSelectionSetting>? valueSelectionSetting;

  V2modelsSlotTypeArgs({
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
    final map = <String, dynamic>{};
    map['botId'] = botId;
    map['botVersion'] = botVersion;
    final compositeSlotTypeSettingsValue = compositeSlotTypeSettings;
    if (compositeSlotTypeSettingsValue != null) {
      map['compositeSlotTypeSettings'] = Input.mapOptionalInputValue<
              List<V2modelsSlotTypeCompositeSlotTypeSetting>,
              List<Map<String, dynamic>>>(
          compositeSlotTypeSettingsValue,
          (value) => Input.encodeList<V2modelsSlotTypeCompositeSlotTypeSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final externalSourceSettingsValue = externalSourceSettings;
    if (externalSourceSettingsValue != null) {
      map['externalSourceSettings'] = Input.mapOptionalInputValue<
              List<V2modelsSlotTypeExternalSourceSetting>,
              List<Map<String, dynamic>>>(
          externalSourceSettingsValue,
          (value) => Input.encodeList<V2modelsSlotTypeExternalSourceSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['localeId'] = localeId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentSlotTypeSignatureValue = parentSlotTypeSignature;
    if (parentSlotTypeSignatureValue != null) {
      map['parentSlotTypeSignature'] = parentSlotTypeSignatureValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final slotTypeValuesValue = slotTypeValues;
    if (slotTypeValuesValue != null) {
      map['slotTypeValues'] = Input.mapOptionalInputValue<
              List<V2modelsSlotTypeSlotTypeValue>, List<Map<String, dynamic>>>(
          slotTypeValuesValue,
          (value) => Input.encodeList<V2modelsSlotTypeSlotTypeValue,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<V2modelsSlotTypeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final valueSelectionSettingValue = valueSelectionSetting;
    if (valueSelectionSettingValue != null) {
      map['valueSelectionSetting'] = Input.mapOptionalInputValue<
              V2modelsSlotTypeValueSelectionSetting, Map<String, dynamic>>(
          valueSelectionSettingValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotTypeArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeArgs(
      botId: Input.asInput<String>(map['botId']),
      botVersion: Input.asInput<String>(map['botVersion']),
      compositeSlotTypeSettings:
          Input.asOptionalInput<List<V2modelsSlotTypeCompositeSlotTypeSetting>>(
              map['compositeSlotTypeSettings']),
      description: Input.asOptionalInput<String>(map['description']),
      externalSourceSettings:
          Input.asOptionalInput<List<V2modelsSlotTypeExternalSourceSetting>>(
              map['externalSourceSettings']),
      localeId: Input.asInput<String>(map['localeId']),
      name: Input.asOptionalInput<String>(map['name']),
      parentSlotTypeSignature:
          Input.asOptionalInput<String>(map['parentSlotTypeSignature']),
      region: Input.asOptionalInput<String>(map['region']),
      slotTypeValues:
          Input.asOptionalInput<List<V2modelsSlotTypeSlotTypeValue>>(
              map['slotTypeValues']),
      timeouts:
          Input.asOptionalInput<V2modelsSlotTypeTimeouts>(map['timeouts']),
      valueSelectionSetting:
          Input.asOptionalInput<V2modelsSlotTypeValueSelectionSetting>(
              map['valueSelectionSetting']),
    );
  }
}
