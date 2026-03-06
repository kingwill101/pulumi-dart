// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuotaApplicationsDimension {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [GetQuotaApplicationsDimension].
  /// [key] Optional.
  /// [value] Optional.
  const GetQuotaApplicationsDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GetQuotaApplicationsDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotaApplicationsDimension(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

