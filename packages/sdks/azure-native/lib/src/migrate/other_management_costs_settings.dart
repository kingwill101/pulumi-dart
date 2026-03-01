// ignore_for_file: unused_element, unnecessary_cast


/// Other Management Costs Settings.
class OtherManagementCostsSettings {
  /// Data Protection Cost Per Server Per Year.
  final double dataProtectionCostPerServerPerYear;
  /// Monitoring Cost Per Server Per Year.
  final double monitoringCostPerServerPerYear;
  /// Patching Cost Per Server Per Year.
  final double patchingCostPerServerPerYear;

  /// Creates a new [OtherManagementCostsSettings].
  /// [dataProtectionCostPerServerPerYear] Data Protection Cost Per Server Per Year.
  /// [monitoringCostPerServerPerYear] Monitoring Cost Per Server Per Year.
  /// [patchingCostPerServerPerYear] Patching Cost Per Server Per Year.
  OtherManagementCostsSettings({
    required this.dataProtectionCostPerServerPerYear,
    required this.monitoringCostPerServerPerYear,
    required this.patchingCostPerServerPerYear,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProtectionCostPerServerPerYear': dataProtectionCostPerServerPerYear,
      'monitoringCostPerServerPerYear': monitoringCostPerServerPerYear,
      'patchingCostPerServerPerYear': patchingCostPerServerPerYear,
    };
  }

  factory OtherManagementCostsSettings.fromMap(Map<String, dynamic> map) {
    return OtherManagementCostsSettings(
      dataProtectionCostPerServerPerYear: map['dataProtectionCostPerServerPerYear'] as double,
      monitoringCostPerServerPerYear: map['monitoringCostPerServerPerYear'] as double,
      patchingCostPerServerPerYear: map['patchingCostPerServerPerYear'] as double,
    );
  }
}

