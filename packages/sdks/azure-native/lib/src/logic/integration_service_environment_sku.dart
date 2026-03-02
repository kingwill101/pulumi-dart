// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration service environment sku.
class IntegrationServiceEnvironmentSku {
  /// The sku capacity.
  final pulumi.Input<int>? capacity;
  /// The sku name.
  final pulumi.Input<String>? name;

  /// Creates a new [IntegrationServiceEnvironmentSku].
  /// [capacity] The sku capacity.
  /// [name] The sku name.
  IntegrationServiceEnvironmentSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory IntegrationServiceEnvironmentSku.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentSku(
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

