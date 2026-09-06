// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterStateChangeReasonCodeEnumValue
class ClusterStateChangeReasonCodeEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [ClusterStateChangeReasonCodeEnumValueResponse].
  /// [value] Property value
  const ClusterStateChangeReasonCodeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStateChangeReasonCodeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStateChangeReasonCodeEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
