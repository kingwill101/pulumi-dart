// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterStatusEnumValue
class ClusterStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterStatusEnumValue].
  /// [value] Property value
  ClusterStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

