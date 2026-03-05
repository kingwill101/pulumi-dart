// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of a container registry.
class Sku {
  /// The SKU name of the container registry. Required for registry creation.
  final pulumi.Input<String> name;

  /// Creates a new [Sku].
  /// [name] The SKU name of the container registry. Required for registry creation.
  Sku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

