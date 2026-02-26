// ignore_for_file: unused_element, unnecessary_cast

import 'money_response5.dart';
import 'report_summary_machine_finding_response.dart';
import 'report_summary_sole_tenant_finding_response2.dart';
import 'report_summary_vmware_engine_finding_response.dart';
import 'virtual_machine_preferences_response2.dart';

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFindingResponse2 {
  /// Description for the Preference Set.
  final String description;

  /// Display Name of the Preference Set
  final String displayName;

  /// A set of findings that applies to all machines in the input.
  final ReportSummaryMachineFindingResponse machineFinding;

  /// A set of preferences that applies to all machines in the context.
  final VirtualMachinePreferencesResponse2 machinePreferences;

  /// Compute monthly cost for this preference set.
  final MoneyResponse5 monthlyCostCompute;

  /// Network Egress monthly cost for this preference set.
  final MoneyResponse5 monthlyCostNetworkEgress;

  /// Licensing monthly cost for this preference set.
  final MoneyResponse5 monthlyCostOsLicense;

  /// Miscellaneous monthly cost for this preference set.
  final MoneyResponse5 monthlyCostOther;

  /// Storage monthly cost for this preference set.
  final MoneyResponse5 monthlyCostStorage;

  /// Total monthly cost for this preference set.
  final MoneyResponse5 monthlyCostTotal;

  /// Target region for this Preference Set
  final String preferredRegion;

  /// Text describing the pricing track specified for this Preference Set
  final String pricingTrack;

  /// A set of findings that applies to Stole-Tenant machines in the input.
  final ReportSummarySoleTenantFindingResponse2 soleTenantFinding;

  /// Text describing the business priority specified for this Preference Set
  final String topPriority;

  /// A set of findings that applies to VMWare machines in the input.
  final ReportSummaryVMWareEngineFindingResponse vmwareEngineFinding;

  ReportSummaryGroupPreferenceSetFindingResponse2({
    required this.description,
    required this.displayName,
    required this.machineFinding,
    required this.machinePreferences,
    required this.monthlyCostCompute,
    required this.monthlyCostNetworkEgress,
    required this.monthlyCostOsLicense,
    required this.monthlyCostOther,
    required this.monthlyCostStorage,
    required this.monthlyCostTotal,
    required this.preferredRegion,
    required this.pricingTrack,
    required this.soleTenantFinding,
    required this.topPriority,
    required this.vmwareEngineFinding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['machineFinding'] = machineFinding.toMap();
    map['machinePreferences'] = machinePreferences.toMap();
    map['monthlyCostCompute'] = monthlyCostCompute.toMap();
    map['monthlyCostNetworkEgress'] = monthlyCostNetworkEgress.toMap();
    map['monthlyCostOsLicense'] = monthlyCostOsLicense.toMap();
    map['monthlyCostOther'] = monthlyCostOther.toMap();
    map['monthlyCostStorage'] = monthlyCostStorage.toMap();
    map['monthlyCostTotal'] = monthlyCostTotal.toMap();
    map['preferredRegion'] = preferredRegion;
    map['pricingTrack'] = pricingTrack;
    map['soleTenantFinding'] = soleTenantFinding.toMap();
    map['topPriority'] = topPriority;
    map['vmwareEngineFinding'] = vmwareEngineFinding.toMap();
    return map;
  }

  factory ReportSummaryGroupPreferenceSetFindingResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryGroupPreferenceSetFindingResponse2(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      machineFinding: ReportSummaryMachineFindingResponse.fromMap(
          (map['machineFinding'] as Map).cast<String, dynamic>()),
      machinePreferences: VirtualMachinePreferencesResponse2.fromMap(
          (map['machinePreferences'] as Map).cast<String, dynamic>()),
      monthlyCostCompute: MoneyResponse5.fromMap(
          (map['monthlyCostCompute'] as Map).cast<String, dynamic>()),
      monthlyCostNetworkEgress: MoneyResponse5.fromMap(
          (map['monthlyCostNetworkEgress'] as Map).cast<String, dynamic>()),
      monthlyCostOsLicense: MoneyResponse5.fromMap(
          (map['monthlyCostOsLicense'] as Map).cast<String, dynamic>()),
      monthlyCostOther: MoneyResponse5.fromMap(
          (map['monthlyCostOther'] as Map).cast<String, dynamic>()),
      monthlyCostStorage: MoneyResponse5.fromMap(
          (map['monthlyCostStorage'] as Map).cast<String, dynamic>()),
      monthlyCostTotal: MoneyResponse5.fromMap(
          (map['monthlyCostTotal'] as Map).cast<String, dynamic>()),
      preferredRegion: map['preferredRegion'] as String,
      pricingTrack: map['pricingTrack'] as String,
      soleTenantFinding: ReportSummarySoleTenantFindingResponse2.fromMap(
          (map['soleTenantFinding'] as Map).cast<String, dynamic>()),
      topPriority: map['topPriority'] as String,
      vmwareEngineFinding: ReportSummaryVMWareEngineFindingResponse.fromMap(
          (map['vmwareEngineFinding'] as Map).cast<String, dynamic>()),
    );
  }
}
