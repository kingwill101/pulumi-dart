// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft.Elastic SKU.
class ResourceSkuResponse {
  /// Name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceSkuResponse].
  /// [name] Name of the SKU.
  const ResourceSkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ResourceSkuResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

