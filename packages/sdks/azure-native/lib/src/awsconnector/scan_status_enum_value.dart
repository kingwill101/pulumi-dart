// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ScanStatusEnumValue
class ScanStatusEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ScanStatusEnumValue].
  /// [value] Property value
  const ScanStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ScanStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ScanStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
