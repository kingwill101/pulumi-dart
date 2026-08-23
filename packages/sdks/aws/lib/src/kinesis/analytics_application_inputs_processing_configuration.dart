// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_processing_configuration_lambda.dart';

class AnalyticsApplicationInputsProcessingConfiguration {
  /// The Lambda function configuration. See Lambda below for more details.
  final pulumi.Input<AnalyticsApplicationInputsProcessingConfigurationLambda> lambda;

  /// Creates a new [AnalyticsApplicationInputsProcessingConfiguration].
  /// [lambda] The Lambda function configuration. See Lambda below for more details.
  const AnalyticsApplicationInputsProcessingConfiguration({
    required this.lambda,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambda': pulumi.Input.mapInputValue<AnalyticsApplicationInputsProcessingConfigurationLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
    };
  }

  factory AnalyticsApplicationInputsProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsProcessingConfiguration(
      lambda: pulumi.Input.fromValue(AnalyticsApplicationInputsProcessingConfigurationLambda.fromMap((map['lambda']! as Map).cast<String, dynamic>())),
    );
  }
}
