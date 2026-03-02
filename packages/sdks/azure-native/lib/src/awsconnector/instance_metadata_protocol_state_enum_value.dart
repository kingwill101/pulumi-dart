// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataProtocolStateEnumValue
class InstanceMetadataProtocolStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceMetadataProtocolStateEnumValue].
  /// [value] Property value
  InstanceMetadataProtocolStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataProtocolStateEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataProtocolStateEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

