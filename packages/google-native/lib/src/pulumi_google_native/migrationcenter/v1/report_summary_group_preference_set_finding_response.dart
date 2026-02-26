// ignore_for_file: unused_element, unnecessary_cast

import 'money_response4.dart';
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
  final MoneyResponse4 monthlyCostCompute;

  /// Network Egress monthly cost for this preference set.
  final MoneyResponse4 monthlyCostNetworkEgress;

  /// Licensing monthly cost for this preference set.
  final MoneyResponse4 monthlyCostOsLicense;

  /// Miscellaneous monthly cost for this preference set.
  final MoneyResponse4 monthlyCostOther;

  /// Storage monthly cost for this preference set.
  final MoneyResponse4 monthlyCostStorage;

  /// Total monthly cost for this preference set.
  final MoneyResponse4 monthlyCostTotal;

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
      monthlyCostCompute: MoneyResponse4.fromMap(
          (map['monthlyCostCompute'] as Map).cast<String, dynamic>()),
      monthlyCostNetworkEgress: MoneyResponse4.fromMap(
          (map['monthlyCostNetworkEgress'] as Map).cast<String, dynamic>()),
      monthlyCostOsLicense: MoneyResponse4.fromMap(
          (map['monthlyCostOsLicense'] as Map).cast<String, dynamic>()),
      monthlyCostOther: MoneyResponse4.fromMap(
          (map['monthlyCostOther'] as Map).cast<String, dynamic>()),
      monthlyCostStorage: MoneyResponse4.fromMap(
          (map['monthlyCostStorage'] as Map).cast<String, dynamic>()),
      monthlyCostTotal: MoneyResponse4.fromMap(
          (map['monthlyCostTotal'] as Map).cast<String, dynamic>()),
      soleTenantFinding: ReportSummarySoleTenantFindingResponse.fromMap(
          (map['soleTenantFinding'] as Map).cast<String, dynamic>()),
      vmwareEngineFinding: ReportSummaryVmwareEngineFindingResponse.fromMap(
          (map['vmwareEngineFinding'] as Map).cast<String, dynamic>()),
    );
  }
}
