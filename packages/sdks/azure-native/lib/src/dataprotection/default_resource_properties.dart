// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default source properties
class DefaultResourceProperties {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'DefaultResourceProperties'.
  final pulumi.Input<String> objectType;

  /// Creates a new [DefaultResourceProperties].
  /// [objectType] Type of the specific object - used for deserializing
  const DefaultResourceProperties({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory DefaultResourceProperties.fromMap(Map<String, dynamic> map) {
    return DefaultResourceProperties(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
