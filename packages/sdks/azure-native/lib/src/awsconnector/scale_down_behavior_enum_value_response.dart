// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ScaleDownBehaviorEnumValue
class ScaleDownBehaviorEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ScaleDownBehaviorEnumValueResponse].
  /// [value] Property value
  ScaleDownBehaviorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ScaleDownBehaviorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ScaleDownBehaviorEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

