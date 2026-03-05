// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapshotStateEnumValue
class SnapshotStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SnapshotStateEnumValue].
  /// [value] Property value
  SnapshotStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SnapshotStateEnumValue.fromMap(Map<String, dynamic> map) {
    return SnapshotStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

