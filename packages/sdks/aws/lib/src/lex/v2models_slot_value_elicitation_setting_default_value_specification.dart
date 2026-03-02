// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_default_value_specification_default_value_list.dart';

class V2modelsSlotValueElicitationSettingDefaultValueSpecification {
  /// List of default values.
  /// Amazon Lex chooses the default value to use in the order that they are presented in the list.
  /// See the `default_value_list` argument reference below.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList>> defaultValueLists;

  /// Creates a new [V2modelsSlotValueElicitationSettingDefaultValueSpecification].
  /// [defaultValueLists] List of default values.
  V2modelsSlotValueElicitationSettingDefaultValueSpecification({
    required this.defaultValueLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValueLists': pulumi.Input.mapInputValue<List<V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList>, List<Map<String, dynamic>>>(defaultValueLists, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotValueElicitationSettingDefaultValueSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingDefaultValueSpecification(
      defaultValueLists: (pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList>(map['defaultValueLists'], (value) => V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

