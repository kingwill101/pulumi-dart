// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterStatusEnumValue
class ClusterStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [ClusterStatusEnumValueResponse].
  /// [value] Property value
  const ClusterStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
