// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataOptionsStateEnumValue
class InstanceMetadataOptionsStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceMetadataOptionsStateEnumValue].
  /// [value] Property value
  const InstanceMetadataOptionsStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataOptionsStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataOptionsStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
