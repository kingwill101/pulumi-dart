// ignore_for_file: unused_element, unnecessary_cast

import 'money_response_migrationcenter_v1.dart';
import 'report_summary_compute_engine_finding_response.dart';
import 'report_summary_sole_tenant_finding_response.dart';
import 'report_summary_vmware_engine_finding_response.dart';
import 'virtual_machine_preferences_response.dart';

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFindingResponse {
  /// A set of findings that applies to Compute Engine machines in the input.
  final ReportSummaryComputeEngineFindingResponse computeEngineFinding;

  /// Description for the Preference Set.
  final String description;

  /// Display Name of the Preference Set
  final String displayName;

  /// A set of preferences that applies to all machines in the context.
  final VirtualMachinePreferencesResponse machinePreferences;

  /// Compute monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1 monthlyCostCompute;

  /// Network Egress monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1 monthlyCostNetworkEgress;

  /// Licensing monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1 monthlyCostOsLicense;

  /// Miscellaneous monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1 monthlyCostOther;

  /// Storage monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1 monthlyCostStorage;

  /// Total monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1 monthlyCostTotal;

  /// A set of findings that applies to Sole-Tenant machines in the input.
  final ReportSummarySoleTenantFindingResponse soleTenantFinding;

  /// A set of findings that applies to VMWare machines in the input.
  final ReportSummaryVmwareEngineFindingResponse vmwareEngineFinding;

  ReportSummaryGroupPreferenceSetFindingResponse({
    required this.computeEngineFinding,
    required this.description,
    required this.displayName,
    required this.machinePreferences,
    required this.monthlyCostCompute,
    required this.monthlyCostNetworkEgress,
    required this.monthlyCostOsLicense,
    required this.monthlyCostOther,
    required this.monthlyCostStorage,
    required this.monthlyCostTotal,
    required this.soleTenantFinding,
    required this.vmwareEngineFinding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeEngineFinding'] = computeEngineFinding.toMap();
    map['description'] = description;
    map['displayName'] = displayName;
    map['machinePreferences'] = machinePreferences.toMap();
    map['monthlyCostCompute'] = monthlyCostCompute.toMap();
    map['monthlyCostNetworkEgress'] = monthlyCostNetworkEgress.toMap();
    map['monthlyCostOsLicense'] = monthlyCostOsLicense.toMap();
    map['monthlyCostOther'] = monthlyCostOther.toMap();
    map['monthlyCostStorage'] = monthlyCostStorage.toMap();
    map['monthlyCostTotal'] = monthlyCostTotal.toMap();
    map['soleTenantFinding'] = soleTenantFinding.toMap();
    map['vmwareEngineFinding'] = vmwareEngineFinding.toMap();
    return map;
  }

  factory ReportSummaryGroupPreferenceSetFindingResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryGroupPreferenceSetFindingResponse(
      computeEngineFinding: ReportSummaryComputeEngineFindingResponse.fromMap(
          (map['computeEngineFinding'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      machinePreferences: VirtualMachinePreferencesResponse.fromMap(
          (map['machinePreferences'] as Map).cast<String, dynamic>()),
      monthlyCostCompute: MoneyResponseMigrationcenterV1.fromMap(
          (map['monthlyCostCompute'] as Map).cast<String, dynamic>()),
      monthlyCostNetworkEgress: MoneyResponseMigrationcenterV1.fromMap(
          (map['monthlyCostNetworkEgress'] as Map).cast<String, dynamic>()),
      monthlyCostOsLicense: MoneyResponseMigrationcenterV1.fromMap(
          (map['monthlyCostOsLicense'] as Map).cast<String, dynamic>()),
      monthlyCostOther: MoneyResponseMigrationcenterV1.fromMap(
          (map['monthlyCostOther'] as Map).cast<String, dynamic>()),
      monthlyCostStorage: MoneyResponseMigrationcenterV1.fromMap(
          (map['monthlyCostStorage'] as Map).cast<String, dynamic>()),
      monthlyCostTotal: MoneyResponseMigrationcenterV1.fromMap(
          (map['monthlyCostTotal'] as Map).cast<String, dynamic>()),
      soleTenantFinding: ReportSummarySoleTenantFindingResponse.fromMap(
          (map['soleTenantFinding'] as Map).cast<String, dynamic>()),
      vmwareEngineFinding: ReportSummaryVmwareEngineFindingResponse.fromMap(
          (map['vmwareEngineFinding'] as Map).cast<String, dynamic>()),
    );
  }
}
