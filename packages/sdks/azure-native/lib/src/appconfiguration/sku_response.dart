// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a configuration store SKU.
class SkuResponse {
  /// The SKU name of the configuration store.
  final pulumi.Input<String> name;

  /// Creates a new [SkuResponse].
  /// [name] The SKU name of the configuration store.
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
