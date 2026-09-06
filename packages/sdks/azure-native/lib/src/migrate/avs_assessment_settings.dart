// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_settings.dart';
import 'performance_data.dart';
import 'savings_settings.dart';

/// Properties of the AVS assessment.
class AvsAssessmentSettings {
  /// AVS Assessment Scenario.
  final pulumi.Input<dynamic>? avsAssessmentScenario;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String?>? azureLocation;
  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettings?>? billingSettings;
  /// Gets or sets the CPU headroom.
  final pulumi.Input<double?>? cpuHeadroom;
  /// Currency in which prices should be reported.
  final pulumi.Input<dynamic>? currency;
  /// De-duplication compression.
  final pulumi.Input<double?>? dedupeCompression;
  /// Custom discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<dynamic>? environmentType;
  /// List of AVS external storage types.
  final pulumi.Input<List<dynamic>?>? externalStorageTypes;
  /// List of Failures to tolerate and RAID levels in a common property.
  final pulumi.Input<List<dynamic>?>? failuresToTolerateAndRaidLevelList;
  /// Is Stretch Cluster Enabled.
  final pulumi.Input<bool?>? isStretchClusterEnabled;
  /// Is VCF license applied
  final pulumi.Input<bool?>? isVcfByolEnabled;
  /// Memory overcommit.
  final pulumi.Input<double?>? memOvercommit;
  /// AVS node types.
  final pulumi.Input<List<dynamic>?>? nodeTypes;
  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceData?>? performanceData;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettings?>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double?>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<dynamic>? sizingCriterion;
  /// VCPU over subscription.
  final pulumi.Input<double?>? vcpuOversubscription;

  /// Creates a new [AvsAssessmentSettings].
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
  const AvsAssessmentSettings({
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
      'billingSettings': ?pulumi.Input.mapOptionalInputValue<BillingSettings, Map<String, dynamic>>(billingSettings, (value) => value.toMap()),
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
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerformanceData, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'savingsSettings': ?pulumi.Input.mapOptionalInputValue<SavingsSettings, Map<String, dynamic>>(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'vcpuOversubscription': ?vcpuOversubscription,
    };
  }

  factory AvsAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentSettings(
      avsAssessmentScenario: (() { final guardedValue = map['avsAssessmentScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      billingSettings: (() { final guardedValue = map['billingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuHeadroom: (() { final guardedValue = map['cpuHeadroom']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dedupeCompression: (() { final guardedValue = map['dedupeCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      externalStorageTypes: (() { final guardedValue = map['externalStorageTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      failuresToTolerateAndRaidLevelList: (() { final guardedValue = map['failuresToTolerateAndRaidLevelList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      isStretchClusterEnabled: (() { final guardedValue = map['isStretchClusterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isVcfByolEnabled: (() { final guardedValue = map['isVcfByolEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      memOvercommit: (() { final guardedValue = map['memOvercommit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      savingsSettings: (() { final guardedValue = map['savingsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SavingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vcpuOversubscription: (() { final guardedValue = map['vcpuOversubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
