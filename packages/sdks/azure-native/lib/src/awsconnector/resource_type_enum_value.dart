// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceTypeEnumValue
class ResourceTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceTypeEnumValue].
  /// [value] Property value
  ResourceTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ResourceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
