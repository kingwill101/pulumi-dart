// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_async_inference_config_client_config.dart';
import 'endpoint_configuration_async_inference_config_output_config.dart';

class EndpointConfigurationAsyncInferenceConfig {
  /// Configures the behavior of the client used by SageMaker AI to interact with the model container during asynchronous inference.
  final pulumi.Input<EndpointConfigurationAsyncInferenceConfigClientConfig>? clientConfig;
  /// Configuration for asynchronous inference invocation outputs.
  final pulumi.Input<EndpointConfigurationAsyncInferenceConfigOutputConfig> outputConfig;

  /// Creates a new [EndpointConfigurationAsyncInferenceConfig].
  /// [clientConfig] Configures the behavior of the client used by SageMaker AI to interact with the model container during asynchronous inference.
  /// [outputConfig] Configuration for asynchronous inference invocation outputs.
  const EndpointConfigurationAsyncInferenceConfig({
    this.clientConfig,
    required this.outputConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfig': ?pulumi.Input.mapOptionalInputValue<EndpointConfigurationAsyncInferenceConfigClientConfig, Map<String, dynamic>>(clientConfig, (value) => value.toMap()),
      'outputConfig': pulumi.Input.mapInputValue<EndpointConfigurationAsyncInferenceConfigOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
    };
  }

  factory EndpointConfigurationAsyncInferenceConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationAsyncInferenceConfig(
      clientConfig: (() { final guardedValue = map['clientConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointConfigurationAsyncInferenceConfigClientConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputConfig: pulumi.Input.fromValue(EndpointConfigurationAsyncInferenceConfigOutputConfig.fromMap((map['outputConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

