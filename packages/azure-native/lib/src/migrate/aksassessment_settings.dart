// ignore_for_file: unused_element, unnecessary_cast

import 'perf_data_settings.dart';

/// Data model of AKS Assessment Settings.
class AKSAssessmentSettings {
  /// Gets or sets azure location.
  final String azureLocation;
  /// Gets or sets azure VM category.
  final String category;
  /// Gets or sets consolidation type.
  final String consolidation;
  /// Gets or sets currency.
  final String currency;
  /// Gets or sets discount percentage.
  final double? discountPercentage;
  /// Gets or sets environment type.
  final String environmentType;
  /// Gets or sets licensing program.
  final String licensingProgram;
  /// Gets or sets performance data settings.
  final PerfDataSettings? performanceData;
  /// Gets or sets pricing tier.
  final String pricingTier;
  /// Gets or sets savings options.
  final String savingsOptions;
  /// Gets or sets scaling factor.
  final double? scalingFactor;
  /// Gets or sets sizing criteria.
  final String sizingCriteria;

  /// Creates a new [AKSAssessmentSettings].
  /// [azureLocation] Gets or sets azure location.
  /// [category] Gets or sets azure VM category.
  /// [consolidation] Gets or sets consolidation type.
  /// [currency] Gets or sets currency.
  /// [discountPercentage] Gets or sets discount percentage.
  /// [environmentType] Gets or sets environment type.
  /// [licensingProgram] Gets or sets licensing program.
  /// [performanceData] Gets or sets performance data settings.
  /// [pricingTier] Gets or sets pricing tier.
  /// [savingsOptions] Gets or sets savings options.
  /// [scalingFactor] Gets or sets scaling factor.
  /// [sizingCriteria] Gets or sets sizing criteria.
  AKSAssessmentSettings({
    required this.azureLocation,
    required this.category,
    required this.consolidation,
    required this.currency,
    this.discountPercentage,
    required this.environmentType,
    required this.licensingProgram,
    this.performanceData,
    required this.pricingTier,
    required this.savingsOptions,
    this.scalingFactor,
    required this.sizingCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLocation': azureLocation,
      'category': category,
      'consolidation': consolidation,
      'currency': currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': environmentType,
      'licensingProgram': licensingProgram,
      'performanceData': ?performanceData == null ? null : performanceData!.toMap(),
      'pricingTier': pricingTier,
      'savingsOptions': savingsOptions,
      'scalingFactor': ?scalingFactor,
      'sizingCriteria': sizingCriteria,
    };
  }

  factory AKSAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return AKSAssessmentSettings(
      azureLocation: map['azureLocation'] as String,
      category: map['category'] as String,
      consolidation: map['consolidation'] as String,
      currency: map['currency'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      environmentType: map['environmentType'] as String,
      licensingProgram: map['licensingProgram'] as String,
      performanceData: map['performanceData'] == null ? null : PerfDataSettings.fromMap((map['performanceData'] as Map).cast<String, dynamic>()),
      pricingTier: map['pricingTier'] as String,
      savingsOptions: map['savingsOptions'] as String,
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriteria: map['sizingCriteria'] as String,
    );
  }
}

