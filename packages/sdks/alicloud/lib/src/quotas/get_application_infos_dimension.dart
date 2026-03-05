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
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

