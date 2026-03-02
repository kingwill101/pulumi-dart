// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataProtocolStateEnumValue
class InstanceMetadataProtocolStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceMetadataProtocolStateEnumValueResponse].
  /// [value] Property value
  InstanceMetadataProtocolStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataProtocolStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataProtocolStateEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

