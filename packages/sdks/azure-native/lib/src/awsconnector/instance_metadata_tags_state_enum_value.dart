// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataTagsStateEnumValue
class InstanceMetadataTagsStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceMetadataTagsStateEnumValue].
  /// [value] Property value
  const InstanceMetadataTagsStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataTagsStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataTagsStateEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
