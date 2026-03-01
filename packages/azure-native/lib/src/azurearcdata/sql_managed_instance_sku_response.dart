// ignore_for_file: unused_element, unnecessary_cast


/// The resource model definition representing SKU for Azure Managed Instance - Azure Arc
class SqlManagedInstanceSkuResponse {
  /// The SKU capacity
  final int? capacity;
  /// Whether dev/test is enabled. When the dev field is set to true, the resource is used for dev/test purpose.
  final bool? dev;
  /// The SKU family
  final String? family;
  /// The name of the SKU.
  final String name;
  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  final String? size;
  /// The pricing tier for the instance.
  final String? tier;

  /// Creates a new [SqlManagedInstanceSkuResponse].
  /// [capacity] The SKU capacity
  /// [dev] Whether dev/test is enabled. When the dev field is set to true, the resource is used for dev/test purpose.
  /// [family] The SKU family
  /// [name] The name of the SKU.
  /// [size] The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  /// [tier] The pricing tier for the instance.
  SqlManagedInstanceSkuResponse({
    this.capacity,
    this.dev,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'dev': ?dev,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SqlManagedInstanceSkuResponse.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceSkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      dev: map['dev'] == null ? null : map['dev'] as bool,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

