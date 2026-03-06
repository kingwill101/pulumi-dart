// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource model definition representing SKU
class SkuResponse {
  /// The name of the Azure Health Bot SKU
  final pulumi.Input<String> name;

  /// Creates a new [SkuResponse].
  /// [name] The name of the Azure Health Bot SKU
  const SkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

