// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_type_slot_type_value_sample_value/v2models_slot_type_slot_type_value_sample_value.dart';
import '../v2models_slot_type_slot_type_value_synonym/v2models_slot_type_slot_type_value_synonym.dart';

class V2modelsSlotTypeSlotTypeValue {
  /// Value of the slot type entry.
  /// See <span pulumi-lang-nodejs="`sampleValue`" pulumi-lang-dotnet="`SampleValue`" pulumi-lang-go="`sampleValue`" pulumi-lang-python="`sample_value`" pulumi-lang-yaml="`sampleValue`" pulumi-lang-java="`sampleValue`">`sample_value`</span> argument reference below.
  final List<V2modelsSlotTypeSlotTypeValueSampleValue>? sampleValues;

  /// A list of additional values related to the slot type entry.
  /// See <span pulumi-lang-nodejs="`synonyms`" pulumi-lang-dotnet="`Synonyms`" pulumi-lang-go="`synonyms`" pulumi-lang-python="`synonyms`" pulumi-lang-yaml="`synonyms`" pulumi-lang-java="`synonyms`">`synonyms`</span> argument reference below.
  final List<V2modelsSlotTypeSlotTypeValueSynonym>? synonyms;

  V2modelsSlotTypeSlotTypeValue({
    this.sampleValues,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sampleValuesValue = sampleValues;
    if (sampleValuesValue != null) {
      map['sampleValues'] = Input.encodeList<
          V2modelsSlotTypeSlotTypeValueSampleValue,
          Map<String, dynamic>>(sampleValuesValue, (value) => value.toMap());
    }
    final synonymsValue = synonyms;
    if (synonymsValue != null) {
      map['synonyms'] = Input.encodeList<V2modelsSlotTypeSlotTypeValueSynonym,
          Map<String, dynamic>>(synonymsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotTypeSlotTypeValue.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeSlotTypeValue(
      sampleValues: map['sampleValues'] == null
          ? null
          : Input.decodeList<V2modelsSlotTypeSlotTypeValueSampleValue>(
              map['sampleValues'],
              (value) => V2modelsSlotTypeSlotTypeValueSampleValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      synonyms: map['synonyms'] == null
          ? null
          : Input.decodeList<V2modelsSlotTypeSlotTypeValueSynonym>(
              map['synonyms'],
              (value) => V2modelsSlotTypeSlotTypeValueSynonym.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
