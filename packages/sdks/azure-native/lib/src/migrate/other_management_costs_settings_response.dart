// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Other Management Costs Settings.
class OtherManagementCostsSettingsResponse {
  /// Data Protection Cost Per Server Per Year.
  final pulumi.Input<double> dataProtectionCostPerServerPerYear;
  /// Monitoring Cost Per Server Per Year.
  final pulumi.Input<double> monitoringCostPerServerPerYear;
  /// Patching Cost Per Server Per Year.
  final pulumi.Input<double> patchingCostPerServerPerYear;

  /// Creates a new [OtherManagementCostsSettingsResponse].
  /// [dataProtectionCostPerServerPerYear] Data Protection Cost Per Server Per Year.
  /// [monitoringCostPerServerPerYear] Monitoring Cost Per Server Per Year.
  /// [patchingCostPerServerPerYear] Patching Cost Per Server Per Year.
  OtherManagementCostsSettingsResponse({
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

  factory OtherManagementCostsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OtherManagementCostsSettingsResponse(
      dataProtectionCostPerServerPerYear: (map['dataProtectionCostPerServerPerYear'] as double).input(),
      monitoringCostPerServerPerYear: (map['monitoringCostPerServerPerYear'] as double).input(),
      patchingCostPerServerPerYear: (map['patchingCostPerServerPerYear'] as double).input(),
    );
  }
}

