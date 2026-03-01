// ignore_for_file: unused_element, unnecessary_cast

import 'money_response_migrationcenter_v1alpha1.dart';
import 'report_summary_machine_finding_response.dart';
import 'report_summary_sole_tenant_finding_response_migrationcenter_v1alpha1.dart';
import 'report_summary_vmware_engine_finding_response.dart';
import 'virtual_machine_preferences_response_migrationcenter_v1alpha1.dart';

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1 {
  /// Description for the Preference Set.
  final String description;

  /// Display Name of the Preference Set
  final String displayName;

  /// A set of findings that applies to all machines in the input.
  final ReportSummaryMachineFindingResponse machineFinding;

  /// A set of preferences that applies to all machines in the context.
  final VirtualMachinePreferencesResponseMigrationcenterV1alpha1
  machinePreferences;

  /// Compute monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1alpha1 monthlyCostCompute;

  /// Network Egress monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1alpha1 monthlyCostNetworkEgress;

  /// Licensing monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1alpha1 monthlyCostOsLicense;

  /// Miscellaneous monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1alpha1 monthlyCostOther;

  /// Storage monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1alpha1 monthlyCostStorage;

  /// Total monthly cost for this preference set.
  final MoneyResponseMigrationcenterV1alpha1 monthlyCostTotal;

  /// Target region for this Preference Set
  final String preferredRegion;

  /// Text describing the pricing track specified for this Preference Set
  final String pricingTrack;

  /// A set of findings that applies to Stole-Tenant machines in the input.
  final ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1
  soleTenantFinding;

  /// Text describing the business priority specified for this Preference Set
  final String topPriority;

  /// A set of findings that applies to VMWare machines in the input.
  final ReportSummaryVMWareEngineFindingResponse vmwareEngineFinding;

  /// Creates a new [ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1].
  /// [description] Description for the Preference Set.
  /// [displayName] Display Name of the Preference Set
  /// [machineFinding] A set of findings that applies to all machines in the input.
  /// [machinePreferences] A set of preferences that applies to all machines in the context.
  /// [monthlyCostCompute] Compute monthly cost for this preference set.
  /// [monthlyCostNetworkEgress] Network Egress monthly cost for this preference set.
  /// [monthlyCostOsLicense] Licensing monthly cost for this preference set.
  /// [monthlyCostOther] Miscellaneous monthly cost for this preference set.
  /// [monthlyCostStorage] Storage monthly cost for this preference set.
  /// [monthlyCostTotal] Total monthly cost for this preference set.
  /// [preferredRegion] Target region for this Preference Set
  /// [pricingTrack] Text describing the pricing track specified for this Preference Set
  /// [soleTenantFinding] A set of findings that applies to Stole-Tenant machines in the input.
  /// [topPriority] Text describing the business priority specified for this Preference Set
  /// [vmwareEngineFinding] A set of findings that applies to VMWare machines in the input.
  ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1({
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
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'machineFinding': machineFinding.toMap(),
      'machinePreferences': machinePreferences.toMap(),
      'monthlyCostCompute': monthlyCostCompute.toMap(),
      'monthlyCostNetworkEgress': monthlyCostNetworkEgress.toMap(),
      'monthlyCostOsLicense': monthlyCostOsLicense.toMap(),
      'monthlyCostOther': monthlyCostOther.toMap(),
      'monthlyCostStorage': monthlyCostStorage.toMap(),
      'monthlyCostTotal': monthlyCostTotal.toMap(),
      'preferredRegion': preferredRegion,
      'pricingTrack': pricingTrack,
      'soleTenantFinding': soleTenantFinding.toMap(),
      'topPriority': topPriority,
      'vmwareEngineFinding': vmwareEngineFinding.toMap(),
    };
  }

  factory ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      machineFinding: ReportSummaryMachineFindingResponse.fromMap(
        (map['machineFinding'] as Map).cast<String, dynamic>(),
      ),
      machinePreferences:
          VirtualMachinePreferencesResponseMigrationcenterV1alpha1.fromMap(
            (map['machinePreferences'] as Map).cast<String, dynamic>(),
          ),
      monthlyCostCompute: MoneyResponseMigrationcenterV1alpha1.fromMap(
        (map['monthlyCostCompute'] as Map).cast<String, dynamic>(),
      ),
      monthlyCostNetworkEgress: MoneyResponseMigrationcenterV1alpha1.fromMap(
        (map['monthlyCostNetworkEgress'] as Map).cast<String, dynamic>(),
      ),
      monthlyCostOsLicense: MoneyResponseMigrationcenterV1alpha1.fromMap(
        (map['monthlyCostOsLicense'] as Map).cast<String, dynamic>(),
      ),
      monthlyCostOther: MoneyResponseMigrationcenterV1alpha1.fromMap(
        (map['monthlyCostOther'] as Map).cast<String, dynamic>(),
      ),
      monthlyCostStorage: MoneyResponseMigrationcenterV1alpha1.fromMap(
        (map['monthlyCostStorage'] as Map).cast<String, dynamic>(),
      ),
      monthlyCostTotal: MoneyResponseMigrationcenterV1alpha1.fromMap(
        (map['monthlyCostTotal'] as Map).cast<String, dynamic>(),
      ),
      preferredRegion: map['preferredRegion'] as String,
      pricingTrack: map['pricingTrack'] as String,
      soleTenantFinding:
          ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1.fromMap(
            (map['soleTenantFinding'] as Map).cast<String, dynamic>(),
          ),
      topPriority: map['topPriority'] as String,
      vmwareEngineFinding: ReportSummaryVMWareEngineFindingResponse.fromMap(
        (map['vmwareEngineFinding'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
