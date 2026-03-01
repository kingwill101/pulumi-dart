// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseEntitlement {
  /// Indicates whether check-ins are allowed.
  final bool allowCheckIn;

  /// Maximum entitlement count. Use if the unit is not None.
  final int maxCount;

  /// The key name.
  final String name;

  /// Indicates whether overages are allowed.
  final bool overage;

  /// Entitlement unit.
  final String unit;

  /// The value.
  final String value;

  /// Creates a new [GetReceivedLicenseEntitlement].
  /// [allowCheckIn] Indicates whether check-ins are allowed.
  /// [maxCount] Maximum entitlement count. Use if the unit is not None.
  /// [name] The key name.
  /// [overage] Indicates whether overages are allowed.
  /// [unit] Entitlement unit.
  /// [value] The value.
  GetReceivedLicenseEntitlement({
    required this.allowCheckIn,
    required this.maxCount,
    required this.name,
    required this.overage,
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCheckIn': allowCheckIn,
      'maxCount': maxCount,
      'name': name,
      'overage': overage,
      'unit': unit,
      'value': value,
    };
  }

  factory GetReceivedLicenseEntitlement.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseEntitlement(
      allowCheckIn: map['allowCheckIn'] as bool,
      maxCount: map['maxCount'] as int,
      name: map['name'] as String,
      overage: map['overage'] as bool,
      unit: map['unit'] as String,
      value: map['value'] as String,
    );
  }
}
