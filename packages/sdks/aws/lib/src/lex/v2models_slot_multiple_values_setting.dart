// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotMultipleValuesSetting {
  /// Whether a slot can return multiple values. When `true`, the slot may return more than one value in a response. When `false`, the slot returns only a single value. Multi-value slots are only available in the `en-US` locale.
  final pulumi.Input<bool>? allowMultipleValues;

  /// Creates a new [V2modelsSlotMultipleValuesSetting].
  /// [allowMultipleValues] Whether a slot can return multiple values. When `true`, the slot may return more than one value in a response. When `false`, the slot returns only a single value. Multi-value slots are only available in the `en-US` locale.
  V2modelsSlotMultipleValuesSetting({this.allowMultipleValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowMultipleValues': ?allowMultipleValues};
  }

  factory V2modelsSlotMultipleValuesSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotMultipleValuesSetting(
      allowMultipleValues: (() {
        final guardedValue = map['allowMultipleValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
