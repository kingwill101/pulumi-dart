// ignore_for_file: unused_element, unnecessary_cast


/// List of possible provisioning service SKUs.
class IotDpsSkuInfo {
  /// The number of units to provision
  final double? capacity;
  /// Sku name.
  final String? name;

  /// Creates a new [IotDpsSkuInfo].
  /// [capacity] The number of units to provision
  /// [name] Sku name.
  IotDpsSkuInfo({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory IotDpsSkuInfo.fromMap(Map<String, dynamic> map) {
    return IotDpsSkuInfo(
      capacity: map['capacity'] == null ? null : map['capacity'] as double,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

