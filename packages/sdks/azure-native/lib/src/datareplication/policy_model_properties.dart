// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vto_az_stack_hcipolicy_model_custom_properties.dart';

/// Policy model properties.
class PolicyModelProperties {
  /// Policy model custom properties.
  final pulumi.Input<HyperVToAzStackHCIPolicyModelCustomProperties> customProperties;

  /// Creates a new [PolicyModelProperties].
  /// [customProperties] Policy model custom properties.
  PolicyModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': pulumi.Input.mapInputValue<HyperVToAzStackHCIPolicyModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
    };
  }

  factory PolicyModelProperties.fromMap(Map<String, dynamic> map) {
    return PolicyModelProperties(
      customProperties: pulumi.Input.fromValue(HyperVToAzStackHCIPolicyModelCustomProperties.fromMap((map['customProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

