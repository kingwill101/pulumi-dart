// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BucketOwnerAccessEnumValue
class BucketOwnerAccessEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [BucketOwnerAccessEnumValue].
  /// [value] Property value
  BucketOwnerAccessEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BucketOwnerAccessEnumValue.fromMap(Map<String, dynamic> map) {
    return BucketOwnerAccessEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

