// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataProtocolStateEnumValue
class InstanceMetadataProtocolStateEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [InstanceMetadataProtocolStateEnumValue].
  /// [value] Property value
  InstanceMetadataProtocolStateEnumValue({
    pulumi.Input<dynamic>? value,
  }) : value = value ?? pulumi.Input.fromValue('disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataProtocolStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataProtocolStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
