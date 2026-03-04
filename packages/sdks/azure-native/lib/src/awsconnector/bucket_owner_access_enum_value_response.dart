// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BucketOwnerAccessEnumValue
class BucketOwnerAccessEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [BucketOwnerAccessEnumValueResponse].
  /// [value] Property value
  BucketOwnerAccessEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory BucketOwnerAccessEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return BucketOwnerAccessEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
