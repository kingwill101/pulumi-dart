// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataTagsStateEnumValue
class InstanceMetadataTagsStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceMetadataTagsStateEnumValueResponse].
  /// [value] Property value
  InstanceMetadataTagsStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataTagsStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataTagsStateEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

