// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SummaryStatusEnumValue
class SummaryStatusEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [SummaryStatusEnumValue].
  /// [value] Property value
  const SummaryStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SummaryStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return SummaryStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
