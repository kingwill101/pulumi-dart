// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_configuration_async_inference_config_client_config.dart';
import 'endpoint_configuration_async_inference_config_output_config.dart';

class EndpointConfigurationAsyncInferenceConfig {
  /// Configures the behavior of the client used by SageMaker AI to interact with the model container during asynchronous inference.
  final EndpointConfigurationAsyncInferenceConfigClientConfig? clientConfig;

  /// Configuration for asynchronous inference invocation outputs.
  final EndpointConfigurationAsyncInferenceConfigOutputConfig outputConfig;

  /// Creates a new [EndpointConfigurationAsyncInferenceConfig].
  /// [clientConfig] Configures the behavior of the client used by SageMaker AI to interact with the model container during asynchronous inference.
  /// [outputConfig] Configuration for asynchronous inference invocation outputs.
  EndpointConfigurationAsyncInferenceConfig({
    this.clientConfig,
    required this.outputConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfig': ?clientConfig == null ? null : clientConfig!.toMap(),
      'outputConfig': outputConfig.toMap(),
    };
  }

  factory EndpointConfigurationAsyncInferenceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointConfigurationAsyncInferenceConfig(
      clientConfig: map['clientConfig'] == null
          ? null
          : EndpointConfigurationAsyncInferenceConfigClientConfig.fromMap(
              (map['clientConfig'] as Map).cast<String, dynamic>(),
            ),
      outputConfig:
          EndpointConfigurationAsyncInferenceConfigOutputConfig.fromMap(
            (map['outputConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
