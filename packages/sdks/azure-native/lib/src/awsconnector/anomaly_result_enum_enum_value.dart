// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AnomalyResultEnumEnumValue
class AnomalyResultEnumEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AnomalyResultEnumEnumValue].
  /// [value] Property value
  AnomalyResultEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AnomalyResultEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return AnomalyResultEnumEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

