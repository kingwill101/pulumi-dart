// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotTypeSlotTypeValueSynonym {
  /// Value that can be used for a slot type.
  final pulumi.Input<String> value;

  /// Creates a new [V2modelsSlotTypeSlotTypeValueSynonym].
  /// [value] Value that can be used for a slot type.
  V2modelsSlotTypeSlotTypeValueSynonym({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsSlotTypeSlotTypeValueSynonym.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotTypeSlotTypeValueSynonym(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
