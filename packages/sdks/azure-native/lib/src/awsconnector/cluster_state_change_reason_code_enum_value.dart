// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterStateChangeReasonCodeEnumValue
class ClusterStateChangeReasonCodeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterStateChangeReasonCodeEnumValue].
  /// [value] Property value
  ClusterStateChangeReasonCodeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ClusterStateChangeReasonCodeEnumValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterStateChangeReasonCodeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
