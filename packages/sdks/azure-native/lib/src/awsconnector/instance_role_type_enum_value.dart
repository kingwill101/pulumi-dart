// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceRoleTypeEnumValue
class InstanceRoleTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceRoleTypeEnumValue].
  /// [value] Property value
  InstanceRoleTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory InstanceRoleTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceRoleTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
