// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostnameTypeEnumValue
class HostnameTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [HostnameTypeEnumValue].
  /// [value] Property value
  HostnameTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory HostnameTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return HostnameTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

