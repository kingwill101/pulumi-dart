// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotTypeSlotTypeValueSampleValue {
  /// Value that can be used for a slot type.
  final pulumi.Input<String> value;

  /// Creates a new [V2modelsSlotTypeSlotTypeValueSampleValue].
  /// [value] Value that can be used for a slot type.
  V2modelsSlotTypeSlotTypeValueSampleValue({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsSlotTypeSlotTypeValueSampleValue.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeSlotTypeValueSampleValue(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

