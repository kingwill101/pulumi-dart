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
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

