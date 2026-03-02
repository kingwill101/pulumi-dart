// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HypervisorTypeEnumValue
class HypervisorTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [HypervisorTypeEnumValue].
  /// [value] Property value
  HypervisorTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HypervisorTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return HypervisorTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

