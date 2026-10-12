// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input_input_processing_configuration_input_lambda_processor.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration {
  /// Lambda function used to preprocess the records in the stream before being processed by your application code. See `inputLambdaProcessor` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor> inputLambdaProcessor;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration].
  /// [inputLambdaProcessor] Lambda function used to preprocess the records in the stream before being processed by your application code. See `inputLambdaProcessor` Block below.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration({
    required this.inputLambdaProcessor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputLambdaProcessor': pulumi.Input.mapInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor, Map<String, dynamic>>(inputLambdaProcessor, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration(
      inputLambdaProcessor: pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor.fromMap((map['inputLambdaProcessor']! as Map).cast<String, dynamic>())),
    );
  }
}
