// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_settings_response.dart';
import 'performance_data_response.dart';
import 'savings_settings_response.dart';

/// Properties of the AVS assessment.
class AvsAssessmentSettingsResponse {
  /// AVS Assessment Scenario.
  final pulumi.Input<String>? avsAssessmentScenario;

  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;

  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettingsResponse>? billingSettings;

  /// Gets or sets the CPU headroom.
  final pulumi.Input<double>? cpuHeadroom;

  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;

  /// De-duplication compression.
  final pulumi.Input<double>? dedupeCompression;

  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;

  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<String>? environmentType;

  /// List of AVS external storage types.
  final pulumi.Input<List<String>>? externalStorageTypes;

  /// List of Failures to tolerate and RAID levels in a common property.
  final pulumi.Input<List<String>>? failuresToTolerateAndRaidLevelList;

  /// Is Stretch Cluster Enabled.
  final pulumi.Input<bool>? isStretchClusterEnabled;

  /// Is VCF license applied
  final pulumi.Input<bool>? isVcfByolEnabled;

  /// Memory overcommit.
  final pulumi.Input<double>? memOvercommit;

  /// AVS node types.
  final pulumi.Input<List<String>>? nodeTypes;

  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceDataResponse>? performanceData;

  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettingsResponse>? savingsSettings;

  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;

  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;

  /// VCPU over subscription.
  final pulumi.Input<double>? vcpuOversubscription;

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
      'billingSettings':
          ?pulumi.Input.mapOptionalInputValue<
            BillingSettingsResponse,
            Map<String, dynamic>
          >(billingSettings, (value) => value.toMap()),
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
      'performanceData':
          ?pulumi.Input.mapOptionalInputValue<
            PerformanceDataResponse,
            Map<String, dynamic>
          >(performanceData, (value) => value.toMap()),
      'savingsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SavingsSettingsResponse,
            Map<String, dynamic>
          >(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'vcpuOversubscription': ?vcpuOversubscription,
    };
  }

  factory AvsAssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentSettingsResponse(
      avsAssessmentScenario: (() {
        final guardedValue = map['avsAssessmentScenario'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureLocation: (() {
        final guardedValue = map['azureLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingSettings: (() {
        final guardedValue = map['billingSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BillingSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cpuHeadroom: (() {
        final guardedValue = map['cpuHeadroom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      currency: (() {
        final guardedValue = map['currency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dedupeCompression: (() {
        final guardedValue = map['dedupeCompression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      discountPercentage: (() {
        final guardedValue = map['discountPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      environmentType: (() {
        final guardedValue = map['environmentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalStorageTypes: (() {
        final guardedValue = map['externalStorageTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      failuresToTolerateAndRaidLevelList: (() {
        final guardedValue = map['failuresToTolerateAndRaidLevelList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      isStretchClusterEnabled: (() {
        final guardedValue = map['isStretchClusterEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isVcfByolEnabled: (() {
        final guardedValue = map['isVcfByolEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      memOvercommit: (() {
        final guardedValue = map['memOvercommit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      nodeTypes: (() {
        final guardedValue = map['nodeTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      performanceData: (() {
        final guardedValue = map['performanceData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PerformanceDataResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      savingsSettings: (() {
        final guardedValue = map['savingsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SavingsSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scalingFactor: (() {
        final guardedValue = map['scalingFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      sizingCriterion: (() {
        final guardedValue = map['sizingCriterion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vcpuOversubscription: (() {
        final guardedValue = map['vcpuOversubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
