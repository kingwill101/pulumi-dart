// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy model properties.
class PolicyModelPropertiesResponse {
  /// Policy model custom properties.
  final pulumi.Input<dynamic> customProperties;
  /// Gets or sets the provisioning state of the policy.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PolicyModelPropertiesResponse].
  /// [customProperties] Policy model custom properties.
  /// [provisioningState] Gets or sets the provisioning state of the policy.
  const PolicyModelPropertiesResponse({
    required this.customProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
      'provisioningState': provisioningState,
    };
  }

  factory PolicyModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyModelPropertiesResponse(
      customProperties: pulumi.Input.fromValue(map['customProperties']),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
