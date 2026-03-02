// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_default_value_specification_default_value_list.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification {
  /// List of default values.
  /// Amazon Lex chooses the default value to use in the order that they are presented in the list.
  /// See the `default_value_list` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList>> defaultValueLists;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification].
  /// [defaultValueLists] List of default values.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification({
    required this.defaultValueLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValueLists': pulumi.Input.mapInputValue<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList>, List<Map<String, dynamic>>>(defaultValueLists, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification(
      defaultValueLists: (pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList>(map['defaultValueLists']!, (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

