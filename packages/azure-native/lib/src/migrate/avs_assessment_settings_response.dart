// ignore_for_file: unused_element, unnecessary_cast

import 'billing_settings_response.dart';
import 'performance_data_response.dart';
import 'savings_settings_response.dart';

/// Properties of the AVS assessment.
class AvsAssessmentSettingsResponse {
  /// AVS Assessment Scenario.
  final String? avsAssessmentScenario;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;
  /// Gets or sets the billing settings.
  final BillingSettingsResponse? billingSettings;
  /// Gets or sets the CPU headroom.
  final double? cpuHeadroom;
  /// Currency in which prices should be reported.
  final String? currency;
  /// De-duplication compression.
  final double? dedupeCompression;
  /// Custom discount percentage.
  final double? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final String? environmentType;
  /// List of AVS external storage types.
  final List<String>? externalStorageTypes;
  /// List of Failures to tolerate and RAID levels in a common property.
  final List<String>? failuresToTolerateAndRaidLevelList;
  /// Is Stretch Cluster Enabled.
  final bool? isStretchClusterEnabled;
  /// Is VCF license applied
  final bool? isVcfByolEnabled;
  /// Memory overcommit.
  final double? memOvercommit;
  /// AVS node types.
  final List<String>? nodeTypes;
  /// Gets or sets the performance data.
  final PerformanceDataResponse? performanceData;
  /// Gets or sets the savings settings.
  final SavingsSettingsResponse? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;
  /// Assessment sizing criterion.
  final String? sizingCriterion;
  /// VCPU over subscription.
  final double? vcpuOversubscription;

  /// Creates a new [AvsAssessmentSettingsResponse].
  /// [avsAssessmentScenario] AVS Assessment Scenario.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [billingSettings] Gets or sets the billing settings.
  /// [cpuHeadroom] Gets or sets the CPU headroom.
  /// [currency] Currency in which prices should be reported.
  /// [dedupeCompression] De-duplication compression.
  /// [discountPercentage] Custom discount percentage.
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [externalStorageTypes] List of AVS external storage types.
  /// [failuresToTolerateAndRaidLevelList] List of Failures to tolerate and RAID levels in a common property.
  /// [isStretchClusterEnabled] Is Stretch Cluster Enabled.
  /// [isVcfByolEnabled] Is VCF license applied
  /// [memOvercommit] Memory overcommit.
  /// [nodeTypes] AVS node types.
  /// [performanceData] Gets or sets the performance data.
  /// [savingsSettings] Gets or sets the savings settings.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [vcpuOversubscription] VCPU over subscription.
  AvsAssessmentSettingsResponse({
    this.avsAssessmentScenario,
    this.azureLocation,
    this.billingSettings,
    this.cpuHeadroom,
    this.currency,
    this.dedupeCompression,
    this.discountPercentage,
    this.environmentType,
    this.externalStorageTypes,
    this.failuresToTolerateAndRaidLevelList,
    this.isStretchClusterEnabled,
    this.isVcfByolEnabled,
    this.memOvercommit,
    this.nodeTypes,
    this.performanceData,
    this.savingsSettings,
    this.scalingFactor,
    this.sizingCriterion,
    this.vcpuOversubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avsAssessmentScenario': ?avsAssessmentScenario,
      'azureLocation': ?azureLocation,
      'billingSettings': ?billingSettings == null ? null : billingSettings!.toMap(),
      'cpuHeadroom': ?cpuHeadroom,
      'currency': ?currency,
      'dedupeCompression': ?dedupeCompression,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'externalStorageTypes': ?externalStorageTypes,
      'failuresToTolerateAndRaidLevelList': ?failuresToTolerateAndRaidLevelList,
      'isStretchClusterEnabled': ?isStretchClusterEnabled,
      'isVcfByolEnabled': ?isVcfByolEnabled,
      'memOvercommit': ?memOvercommit,
      'nodeTypes': ?nodeTypes,
      'performanceData': ?performanceData == null ? null : performanceData!.toMap(),
      'savingsSettings': ?savingsSettings == null ? null : savingsSettings!.toMap(),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'vcpuOversubscription': ?vcpuOversubscription,
    };
  }

  factory AvsAssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentSettingsResponse(
      avsAssessmentScenario: map['avsAssessmentScenario'] == null ? null : map['avsAssessmentScenario'] as String,
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation'] as String,
      billingSettings: map['billingSettings'] == null ? null : BillingSettingsResponse.fromMap((map['billingSettings'] as Map).cast<String, dynamic>()),
      cpuHeadroom: map['cpuHeadroom'] == null ? null : map['cpuHeadroom'] as double,
      currency: map['currency'] == null ? null : map['currency'] as String,
      dedupeCompression: map['dedupeCompression'] == null ? null : map['dedupeCompression'] as double,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      externalStorageTypes: map['externalStorageTypes'] == null ? null : (map['externalStorageTypes'] as List).cast<String>(),
      failuresToTolerateAndRaidLevelList: map['failuresToTolerateAndRaidLevelList'] == null ? null : (map['failuresToTolerateAndRaidLevelList'] as List).cast<String>(),
      isStretchClusterEnabled: map['isStretchClusterEnabled'] == null ? null : map['isStretchClusterEnabled'] as bool,
      isVcfByolEnabled: map['isVcfByolEnabled'] == null ? null : map['isVcfByolEnabled'] as bool,
      memOvercommit: map['memOvercommit'] == null ? null : map['memOvercommit'] as double,
      nodeTypes: map['nodeTypes'] == null ? null : (map['nodeTypes'] as List).cast<String>(),
      performanceData: map['performanceData'] == null ? null : PerformanceDataResponse.fromMap((map['performanceData'] as Map).cast<String, dynamic>()),
      savingsSettings: map['savingsSettings'] == null ? null : SavingsSettingsResponse.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>()),
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion'] as String,
      vcpuOversubscription: map['vcpuOversubscription'] == null ? null : map['vcpuOversubscription'] as double,
    );
  }
}

