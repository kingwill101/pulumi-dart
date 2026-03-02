// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'perf_data_settings_response.dart';

/// Data model of AKS Assessment Settings.
class AKSAssessmentSettingsResponse {
  /// Gets or sets azure location.
  final pulumi.Input<String> azureLocation;
  /// Gets or sets azure VM category.
  final pulumi.Input<String> category;
  /// Gets or sets consolidation type.
  final pulumi.Input<String> consolidation;
  /// Gets or sets currency.
  final pulumi.Input<String> currency;
  /// Gets or sets discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets environment type.
  final pulumi.Input<String> environmentType;
  /// Gets or sets licensing program.
  final pulumi.Input<String> licensingProgram;
  /// Gets or sets performance data settings.
  final pulumi.Input<PerfDataSettingsResponse>? performanceData;
  /// Gets or sets pricing tier.
  final pulumi.Input<String> pricingTier;
  /// Gets or sets savings options.
  final pulumi.Input<String> savingsOptions;
  /// Gets or sets scaling factor.
  final pulumi.Input<double>? scalingFactor;
  /// Gets or sets sizing criteria.
  final pulumi.Input<String> sizingCriteria;

  /// Creates a new [AKSAssessmentSettingsResponse].
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
  AKSAssessmentSettingsResponse({
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
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerfDataSettingsResponse, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'pricingTier': pricingTier,
      'savingsOptions': savingsOptions,
      'scalingFactor': ?scalingFactor,
      'sizingCriteria': sizingCriteria,
    };
  }

  factory AKSAssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AKSAssessmentSettingsResponse(
      azureLocation: (map['azureLocation'] as String).input(),
      category: (map['category'] as String).input(),
      consolidation: (map['consolidation'] as String).input(),
      currency: (map['currency'] as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage']! as double).input(),
      environmentType: (map['environmentType'] as String).input(),
      licensingProgram: (map['licensingProgram'] as String).input(),
      performanceData: map['performanceData'] == null ? null : (PerfDataSettingsResponse.fromMap((map['performanceData']! as Map).cast<String, dynamic>())).input(),
      pricingTier: (map['pricingTier'] as String).input(),
      savingsOptions: (map['savingsOptions'] as String).input(),
      scalingFactor: map['scalingFactor'] == null ? null : (map['scalingFactor']! as double).input(),
      sizingCriteria: (map['sizingCriteria'] as String).input(),
    );
  }
}

