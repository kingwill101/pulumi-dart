// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_application_inputs_processing_configuration_lambda.dart';

class AnalyticsApplicationInputsProcessingConfiguration {
  /// The Lambda function configuration. See Lambda below for more details.
  final AnalyticsApplicationInputsProcessingConfigurationLambda lambda;

  /// Creates a new [AnalyticsApplicationInputsProcessingConfiguration].
  /// [lambda] The Lambda function configuration. See Lambda below for more details.
  AnalyticsApplicationInputsProcessingConfiguration({
    required this.lambda,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambda'] = lambda.toMap();
    return map;
  }

  factory AnalyticsApplicationInputsProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationInputsProcessingConfiguration(
      lambda: AnalyticsApplicationInputsProcessingConfigurationLambda.fromMap(
          (map['lambda'] as Map).cast<String, dynamic>()),
    );
  }
}
