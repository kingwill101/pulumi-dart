// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hcipolicy_model_custom_properties_response.dart';

/// Policy model properties.
class PolicyModelPropertiesResponse {
  /// Policy model custom properties.
  final pulumi.Input<HyperVToAzStackHCIPolicyModelCustomPropertiesResponse> customProperties;
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
      'customProperties': pulumi.Input.mapInputValue<HyperVToAzStackHCIPolicyModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PolicyModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyModelPropertiesResponse(
      customProperties: pulumi.Input.fromValue(HyperVToAzStackHCIPolicyModelCustomPropertiesResponse.fromMap((map['customProperties']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

