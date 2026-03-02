// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure settings for a business case.
class AzureSettingsResponse {
  /// Gets Avs labour cost percentage.
  final pulumi.Input<double>? avsLaborCostPercentage;
  /// Migration Strategy.
  final pulumi.Input<String>? businessCaseType;
  /// Gets comfort factor.
  final pulumi.Input<double>? comfortFactor;
  /// Business case Currency.
  final pulumi.Input<String> currency;
  /// Gets azure Discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets IaaS labour cost percentage.
  final pulumi.Input<double>? iaasLaborCostPercentage;
  /// Gets infrastructure growth rate.
  final pulumi.Input<double>? infrastructureGrowthRate;
  /// Gets network cost percentage.
  final pulumi.Input<double>? networkCostPercentage;
  /// Gets PaaS labour cost percentage.
  final pulumi.Input<double>? paasLaborCostPercentage;
  /// Gets migration completion percentage per year.
  final pulumi.Input<Map<String, double>>? perYearMigrationCompletionPercentage;
  /// Gets end time to use for performance.
  final pulumi.Input<String>? performanceDataEndTime;
  /// Gets start time to use for performance.
  final pulumi.Input<String>? performanceDataStartTime;
  /// Gets utilization percentile for performance.
  final pulumi.Input<double>? performanceUtilizationPercentile;
  /// Gets the business case savings option type.
  final pulumi.Input<String>? savingsOption;
  /// Gets or sets azure location.
  final pulumi.Input<String> targetLocation;
  /// Gets wACC percentage.
  final pulumi.Input<double>? wacc;
  /// Workload discovery source.
  final pulumi.Input<String>? workloadDiscoverySource;

  /// Creates a new [AzureSettingsResponse].
  /// [avsLaborCostPercentage] Gets Avs labour cost percentage.
  /// [businessCaseType] Migration Strategy.
  /// [comfortFactor] Gets comfort factor.
  /// [currency] Business case Currency.
  /// [discountPercentage] Gets azure Discount percentage.
  /// [iaasLaborCostPercentage] Gets IaaS labour cost percentage.
  /// [infrastructureGrowthRate] Gets infrastructure growth rate.
  /// [networkCostPercentage] Gets network cost percentage.
  /// [paasLaborCostPercentage] Gets PaaS labour cost percentage.
  /// [perYearMigrationCompletionPercentage] Gets migration completion percentage per year.
  /// [performanceDataEndTime] Gets end time to use for performance.
  /// [performanceDataStartTime] Gets start time to use for performance.
  /// [performanceUtilizationPercentile] Gets utilization percentile for performance.
  /// [savingsOption] Gets the business case savings option type.
  /// [targetLocation] Gets or sets azure location.
  /// [wacc] Gets wACC percentage.
  /// [workloadDiscoverySource] Workload discovery source.
  AzureSettingsResponse({
    this.avsLaborCostPercentage,
    this.businessCaseType,
    this.comfortFactor,
    required this.currency,
    this.discountPercentage,
    this.iaasLaborCostPercentage,
    this.infrastructureGrowthRate,
    this.networkCostPercentage,
    this.paasLaborCostPercentage,
    this.perYearMigrationCompletionPercentage,
    this.performanceDataEndTime,
    this.performanceDataStartTime,
    this.performanceUtilizationPercentile,
    this.savingsOption,
    required this.targetLocation,
    this.wacc,
    this.workloadDiscoverySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avsLaborCostPercentage': ?avsLaborCostPercentage,
      'businessCaseType': ?businessCaseType,
      'comfortFactor': ?comfortFactor,
      'currency': currency,
      'discountPercentage': ?discountPercentage,
      'iaasLaborCostPercentage': ?iaasLaborCostPercentage,
      'infrastructureGrowthRate': ?infrastructureGrowthRate,
      'networkCostPercentage': ?networkCostPercentage,
      'paasLaborCostPercentage': ?paasLaborCostPercentage,
      'perYearMigrationCompletionPercentage': ?perYearMigrationCompletionPercentage,
      'performanceDataEndTime': ?performanceDataEndTime,
      'performanceDataStartTime': ?performanceDataStartTime,
      'performanceUtilizationPercentile': ?performanceUtilizationPercentile,
      'savingsOption': ?savingsOption,
      'targetLocation': targetLocation,
      'wacc': ?wacc,
      'workloadDiscoverySource': ?workloadDiscoverySource,
    };
  }

  factory AzureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureSettingsResponse(
      avsLaborCostPercentage: map['avsLaborCostPercentage'] == null ? null : (map['avsLaborCostPercentage'] as double).input(),
      businessCaseType: map['businessCaseType'] == null ? null : (map['businessCaseType'] as String).input(),
      comfortFactor: map['comfortFactor'] == null ? null : (map['comfortFactor'] as double).input(),
      currency: (map['currency'] as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage'] as double).input(),
      iaasLaborCostPercentage: map['iaasLaborCostPercentage'] == null ? null : (map['iaasLaborCostPercentage'] as double).input(),
      infrastructureGrowthRate: map['infrastructureGrowthRate'] == null ? null : (map['infrastructureGrowthRate'] as double).input(),
      networkCostPercentage: map['networkCostPercentage'] == null ? null : (map['networkCostPercentage'] as double).input(),
      paasLaborCostPercentage: map['paasLaborCostPercentage'] == null ? null : (map['paasLaborCostPercentage'] as double).input(),
      perYearMigrationCompletionPercentage: map['perYearMigrationCompletionPercentage'] == null ? null : ((map['perYearMigrationCompletionPercentage'] as Map).cast<String, double>()).input(),
      performanceDataEndTime: map['performanceDataEndTime'] == null ? null : (map['performanceDataEndTime'] as String).input(),
      performanceDataStartTime: map['performanceDataStartTime'] == null ? null : (map['performanceDataStartTime'] as String).input(),
      performanceUtilizationPercentile: map['performanceUtilizationPercentile'] == null ? null : (map['performanceUtilizationPercentile'] as double).input(),
      savingsOption: map['savingsOption'] == null ? null : (map['savingsOption'] as String).input(),
      targetLocation: (map['targetLocation'] as String).input(),
      wacc: map['wacc'] == null ? null : (map['wacc'] as double).input(),
      workloadDiscoverySource: map['workloadDiscoverySource'] == null ? null : (map['workloadDiscoverySource'] as String).input(),
    );
  }
}

