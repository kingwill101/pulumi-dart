// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceMetadataEndpointStateEnumValue
class InstanceMetadataEndpointStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceMetadataEndpointStateEnumValueResponse].
  /// [value] Property value
  const InstanceMetadataEndpointStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceMetadataEndpointStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataEndpointStateEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

