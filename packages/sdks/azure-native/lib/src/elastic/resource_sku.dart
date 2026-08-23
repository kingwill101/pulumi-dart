// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft.Elastic SKU.
class ResourceSku {
  /// Name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceSku].
  /// [name] Name of the SKU.
  const ResourceSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ResourceSku.fromMap(Map<String, dynamic> map) {
    return ResourceSku(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
