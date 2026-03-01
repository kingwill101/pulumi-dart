// ignore_for_file: unused_element, unnecessary_cast


/// Describes a virtual machine scale set sku. NOTE: If the new VM SKU is not supported on the hardware the scale set is currently on, you need to deallocate the VMs in the scale set before you modify the SKU name.
class SkuResponse {
  /// Specifies the number of virtual machines in the scale set.
  final double? capacity;
  /// The sku name.
  final String? name;
  /// Specifies the tier of virtual machines in a scale set.<br /><br /> Possible Values:<br /><br /> **Standard**<br /><br /> **Basic**
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] Specifies the number of virtual machines in the scale set.
  /// [name] The sku name.
  /// [tier] Specifies the tier of virtual machines in a scale set.<br /><br /> Possible Values:<br /><br /> **Standard**<br /><br /> **Basic**
  SkuResponse({
    this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

