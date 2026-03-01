// ignore_for_file: unused_element, unnecessary_cast

import 'hyper_vto_az_stack_hcipolicy_model_custom_properties.dart';

/// Policy model properties.
class PolicyModelProperties {
  /// Policy model custom properties.
  final HyperVToAzStackHCIPolicyModelCustomProperties customProperties;

  /// Creates a new [PolicyModelProperties].
  /// [customProperties] Policy model custom properties.
  PolicyModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties.toMap(),
    };
  }

  factory PolicyModelProperties.fromMap(Map<String, dynamic> map) {
    return PolicyModelProperties(
      customProperties: HyperVToAzStackHCIPolicyModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

