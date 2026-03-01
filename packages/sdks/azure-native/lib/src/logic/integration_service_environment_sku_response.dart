// ignore_for_file: unused_element, unnecessary_cast


/// The integration service environment sku.
class IntegrationServiceEnvironmentSkuResponse {
  /// The sku capacity.
  final int? capacity;
  /// The sku name.
  final String? name;

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
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

