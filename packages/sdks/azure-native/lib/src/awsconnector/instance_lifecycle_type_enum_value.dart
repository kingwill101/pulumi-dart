// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceLifecycleTypeEnumValue
class InstanceLifecycleTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceLifecycleTypeEnumValue].
  /// [value] Property value
  InstanceLifecycleTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceLifecycleTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceLifecycleTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

