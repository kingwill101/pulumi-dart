// ignore_for_file: unused_element, unnecessary_cast


/// The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
class DiskSku {
  /// The sku name.
  final String? name;

  /// Creates a new [DiskSku].
  /// [name] The sku name.
  DiskSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DiskSku.fromMap(Map<String, dynamic> map) {
    return DiskSku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

