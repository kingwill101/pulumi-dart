// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy model properties.
class PolicyModelProperties {
  /// Policy model custom properties.
  final pulumi.Input<dynamic> customProperties;

  /// Creates a new [PolicyModelProperties].
  /// [customProperties] Policy model custom properties.
  const PolicyModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
    };
  }

  factory PolicyModelProperties.fromMap(Map<String, dynamic> map) {
    return PolicyModelProperties(
      customProperties: pulumi.Input.fromValue(map['customProperties']),
    );
  }
}
