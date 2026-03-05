// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapshotStateEnumValue
class SnapshotStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SnapshotStateEnumValueResponse].
  /// [value] Property value
  SnapshotStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SnapshotStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotStateEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

