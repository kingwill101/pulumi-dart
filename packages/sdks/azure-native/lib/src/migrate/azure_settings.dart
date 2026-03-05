// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure settings for a business case.
class AzureSettings {
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

  /// Creates a new [AzureSettings].
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
  AzureSettings({
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

  factory AzureSettings.fromMap(Map<String, dynamic> map) {
    return AzureSettings(
      avsLaborCostPercentage: (() { final guardedValue = map['avsLaborCostPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      businessCaseType: (() { final guardedValue = map['businessCaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comfortFactor: (() { final guardedValue = map['comfortFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      currency: pulumi.Input.fromValue(map['currency'] as String),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      iaasLaborCostPercentage: (() { final guardedValue = map['iaasLaborCostPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      infrastructureGrowthRate: (() { final guardedValue = map['infrastructureGrowthRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      networkCostPercentage: (() { final guardedValue = map['networkCostPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      paasLaborCostPercentage: (() { final guardedValue = map['paasLaborCostPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      perYearMigrationCompletionPercentage: (() { final guardedValue = map['perYearMigrationCompletionPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      performanceDataEndTime: (() { final guardedValue = map['performanceDataEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceDataStartTime: (() { final guardedValue = map['performanceDataStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceUtilizationPercentile: (() { final guardedValue = map['performanceUtilizationPercentile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      savingsOption: (() { final guardedValue = map['savingsOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLocation: pulumi.Input.fromValue(map['targetLocation'] as String),
      wacc: (() { final guardedValue = map['wacc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      workloadDiscoverySource: (() { final guardedValue = map['workloadDiscoverySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

