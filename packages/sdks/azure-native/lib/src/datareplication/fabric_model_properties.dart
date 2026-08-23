// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_stack_hcifabric_model_custom_properties.dart';

/// Fabric model properties.
class FabricModelProperties {
  /// Fabric model custom properties.
  final pulumi.Input<AzStackHCIFabricModelCustomProperties> customProperties;

  /// Creates a new [FabricModelProperties].
  /// [customProperties] Fabric model custom properties.
  const FabricModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': pulumi.Input.mapInputValue<AzStackHCIFabricModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
    };
  }

  factory FabricModelProperties.fromMap(Map<String, dynamic> map) {
    return FabricModelProperties(
      customProperties: pulumi.Input.fromValue(AzStackHCIFabricModelCustomProperties.fromMap((map['customProperties']! as Map).cast<String, dynamic>())),
    );
  }
}
