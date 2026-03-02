// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VirtualizationTypeEnumValue
class VirtualizationTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [VirtualizationTypeEnumValue].
  /// [value] Property value
  VirtualizationTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory VirtualizationTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return VirtualizationTypeEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

