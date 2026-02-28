// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_sql_application_configuration_input_input_processing_configuration_input_lambda_processor.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration {
  /// Describes the Lambda function that is used to preprocess the records in the stream before being processed by your application code.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor
      inputLambdaProcessor;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration].
  /// [inputLambdaProcessor] Describes the Lambda function that is used to preprocess the records in the stream before being processed by your application code.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration({
    required this.inputLambdaProcessor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputLambdaProcessor'] = inputLambdaProcessor.toMap();
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration(
      inputLambdaProcessor:
          ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor
              .fromMap(
                  (map['inputLambdaProcessor'] as Map).cast<String, dynamic>()),
    );
  }
}
