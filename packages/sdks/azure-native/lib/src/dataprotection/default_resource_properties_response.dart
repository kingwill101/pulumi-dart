// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default source properties
class DefaultResourcePropertiesResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'DefaultResourceProperties'.
  final pulumi.Input<String> objectType;

  /// Creates a new [DefaultResourcePropertiesResponse].
  /// [objectType] Type of the specific object - used for deserializing
  DefaultResourcePropertiesResponse({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory DefaultResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DefaultResourcePropertiesResponse(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}

