// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'perf_data_settings.dart';

/// Data model of AKS Assessment Settings.
class AKSAssessmentSettings {
  /// Gets or sets azure location.
  final pulumi.Input<String> azureLocation;
  /// Gets or sets azure VM category.
  final pulumi.Input<dynamic> category;
  /// Gets or sets consolidation type.
  final pulumi.Input<dynamic> consolidation;
  /// Gets or sets currency.
  final pulumi.Input<dynamic> currency;
  /// Gets or sets discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// Gets or sets environment type.
  final pulumi.Input<dynamic> environmentType;
  /// Gets or sets licensing program.
  final pulumi.Input<dynamic> licensingProgram;
  /// Gets or sets performance data settings.
  final pulumi.Input<PerfDataSettings?>? performanceData;
  /// Gets or sets pricing tier.
  final pulumi.Input<dynamic> pricingTier;
  /// Gets or sets savings options.
  final pulumi.Input<dynamic> savingsOptions;
  /// Gets or sets scaling factor.
  final pulumi.Input<double?>? scalingFactor;
  /// Gets or sets sizing criteria.
  final pulumi.Input<dynamic> sizingCriteria;

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
  const AKSAssessmentSettings({
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
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerfDataSettings, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'pricingTier': pricingTier,
      'savingsOptions': savingsOptions,
      'scalingFactor': ?scalingFactor,
      'sizingCriteria': sizingCriteria,
    };
  }

  factory AKSAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return AKSAssessmentSettings(
      azureLocation: pulumi.Input.fromValue(map['azureLocation'] as String),
      category: pulumi.Input.fromValue(map['category']),
      consolidation: pulumi.Input.fromValue(map['consolidation']),
      currency: pulumi.Input.fromValue(map['currency']),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      environmentType: pulumi.Input.fromValue(map['environmentType']),
      licensingProgram: pulumi.Input.fromValue(map['licensingProgram']),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerfDataSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pricingTier: pulumi.Input.fromValue(map['pricingTier']),
      savingsOptions: pulumi.Input.fromValue(map['savingsOptions']),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizingCriteria: pulumi.Input.fromValue(map['sizingCriteria']),
    );
  }
}
