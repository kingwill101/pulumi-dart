// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseEntitlement {
  /// Indicates whether check-ins are allowed.
  final pulumi.Input<bool> allowCheckIn;
  /// Maximum entitlement count. Use if the unit is not None.
  final pulumi.Input<int> maxCount;
  /// The key name.
  final pulumi.Input<String> name;
  /// Indicates whether overages are allowed.
  final pulumi.Input<bool> overage;
  /// Entitlement unit.
  final pulumi.Input<String> unit;
  /// The value.
  final pulumi.Input<String> value;

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
      allowCheckIn: (map['allowCheckIn'] as bool).input(),
      maxCount: (map['maxCount'] as int).input(),
      name: (map['name'] as String).input(),
      overage: (map['overage'] as bool).input(),
      unit: (map['unit'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

