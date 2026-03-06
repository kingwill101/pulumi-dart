// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList {
  /// Default value to use when a user doesn't provide a value for a slot.
  final pulumi.Input<String> defaultValue;

  /// Creates a new [V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList].
  /// [defaultValue] Default value to use when a user doesn't provide a value for a slot.
  const V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList({
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': defaultValue,
    };
  }

  factory V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList(
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
    );
  }
}

