// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StorageTierEnumValue
class StorageTierEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [StorageTierEnumValueResponse].
  /// [value] Property value
  StorageTierEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory StorageTierEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return StorageTierEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
