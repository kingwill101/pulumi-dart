// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationInfosDimension {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [GetApplicationInfosDimension].
  /// [key] Optional.
  /// [value] Optional.
  GetApplicationInfosDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GetApplicationInfosDimension.fromMap(Map<String, dynamic> map) {
    return GetApplicationInfosDimension(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

