// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fabric model properties.
class FabricModelProperties {
  /// Fabric model custom properties.
  final pulumi.Input<dynamic> customProperties;

  /// Creates a new [FabricModelProperties].
  /// [customProperties] Fabric model custom properties.
  const FabricModelProperties({
    required this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
    };
  }

  factory FabricModelProperties.fromMap(Map<String, dynamic> map) {
    return FabricModelProperties(
      customProperties: pulumi.Input.fromValue(map['customProperties']),
    );
  }
}
