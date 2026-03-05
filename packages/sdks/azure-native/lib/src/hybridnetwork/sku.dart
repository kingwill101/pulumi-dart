// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku, to be associated with a SiteNetworkService.
class Sku {
  /// Name of this Sku
  final pulumi.Input<String> name;

  /// Creates a new [Sku].
  /// [name] Name of this Sku
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

