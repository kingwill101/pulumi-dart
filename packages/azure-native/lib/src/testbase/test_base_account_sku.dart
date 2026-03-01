// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Test Base Account SKU.
class TestBaseAccountSKU {
  /// The locations that the SKU is available.
  final List<String>? locations;
  /// The name of the SKU. This is typically a letter + number code, such as B0 or S0.
  final String name;
  /// The type of resource the SKU applies to.
  final String? resourceType;
  /// The tier of this particular SKU.
  final String tier;

  /// Creates a new [TestBaseAccountSKU].
  /// [locations] The locations that the SKU is available.
  /// [name] The name of the SKU. This is typically a letter + number code, such as B0 or S0.
  /// [resourceType] The type of resource the SKU applies to.
  /// [tier] The tier of this particular SKU.
  TestBaseAccountSKU({
    this.locations,
    required this.name,
    this.resourceType,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'name': name,
      'resourceType': ?resourceType,
      'tier': tier,
    };
  }

  factory TestBaseAccountSKU.fromMap(Map<String, dynamic> map) {
    return TestBaseAccountSKU(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      name: map['name'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      tier: map['tier'] as String,
    );
  }
}

