// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration service environment sku.
class IntegrationServiceEnvironmentSkuResponse {
  /// The sku capacity.
  final pulumi.Input<int>? capacity;
  /// The sku name.
  final pulumi.Input<String>? name;

  /// Creates a new [IntegrationServiceEnvironmentSkuResponse].
  /// [capacity] The sku capacity.
  /// [name] The sku name.
  IntegrationServiceEnvironmentSkuResponse({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory IntegrationServiceEnvironmentSkuResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentSkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

