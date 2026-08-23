// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of JobComparatorEnumValue
class JobComparatorEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [JobComparatorEnumValue].
  /// [value] Property value
  const JobComparatorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobComparatorEnumValue.fromMap(Map<String, dynamic> map) {
    return JobComparatorEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
