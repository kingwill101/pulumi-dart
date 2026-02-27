// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_value_elicitation_setting_default_value_specification_default_value_list/v2models_slot_value_elicitation_setting_default_value_specification_default_value_list.dart';

class V2modelsSlotValueElicitationSettingDefaultValueSpecification {
  /// List of default values.
  /// Amazon Lex chooses the default value to use in the order that they are presented in the list.
  /// See the `default_value_list` argument reference below.
  final List<
          V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList>
      defaultValueLists;

  V2modelsSlotValueElicitationSettingDefaultValueSpecification({
    required this.defaultValueLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultValueLists'] = pulumi.Input.encodeList<
        V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList,
        Map<String, dynamic>>(defaultValueLists, (value) => value.toMap());
    return map;
  }

  factory V2modelsSlotValueElicitationSettingDefaultValueSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingDefaultValueSpecification(
      defaultValueLists: pulumi.Input.decodeList<
              V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList>(
          map['defaultValueLists'],
          (value) =>
              V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
