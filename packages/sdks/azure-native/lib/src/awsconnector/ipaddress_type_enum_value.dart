// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IPAddressTypeEnumValue
class IPAddressTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [IPAddressTypeEnumValue].
  /// [value] Property value
  IPAddressTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IPAddressTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return IPAddressTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

