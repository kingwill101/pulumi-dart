// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_slot_type_value_sample_value.dart';
import 'v2models_slot_type_slot_type_value_synonym.dart';

class V2modelsSlotTypeSlotTypeValue {
  /// Value of the slot type entry.
  /// See `sample_value` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeSlotTypeValueSampleValue>>? sampleValues;
  /// A list of additional values related to the slot type entry.
  /// See `synonyms` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeSlotTypeValueSynonym>>? synonyms;

  /// Creates a new [V2modelsSlotTypeSlotTypeValue].
  /// [sampleValues] Value of the slot type entry.
  /// [synonyms] A list of additional values related to the slot type entry.
  const V2modelsSlotTypeSlotTypeValue({
    this.sampleValues,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sampleValues': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeSlotTypeValueSampleValue>, List<Map<String, dynamic>>>(sampleValues, (value) => pulumi.Input.encodeList<V2modelsSlotTypeSlotTypeValueSampleValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'synonyms': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeSlotTypeValueSynonym>, List<Map<String, dynamic>>>(synonyms, (value) => pulumi.Input.encodeList<V2modelsSlotTypeSlotTypeValueSynonym, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotTypeSlotTypeValue.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeSlotTypeValue(
      sampleValues: (() { final guardedValue = map['sampleValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValueSampleValue>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValueSampleValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValueSynonym>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValueSynonym.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

