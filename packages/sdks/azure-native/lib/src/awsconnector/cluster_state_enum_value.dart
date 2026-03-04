// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterStateEnumValue
class ClusterStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterStateEnumValue].
  /// [value] Property value
  ClusterStateEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ClusterStateEnumValue.fromMap(Map<String, dynamic> map) {
    return ClusterStateEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
