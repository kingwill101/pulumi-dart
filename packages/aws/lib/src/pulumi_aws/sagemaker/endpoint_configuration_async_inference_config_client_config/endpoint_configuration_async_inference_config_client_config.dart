// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationAsyncInferenceConfigClientConfig {
  /// Maximum number of concurrent requests sent by the SageMaker AI client to the model container. If no value is provided, SageMaker AI will choose an optimal value for you.
  final int? maxConcurrentInvocationsPerInstance;

  EndpointConfigurationAsyncInferenceConfigClientConfig({
    this.maxConcurrentInvocationsPerInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxConcurrentInvocationsPerInstanceValue =
        maxConcurrentInvocationsPerInstance;
    if (maxConcurrentInvocationsPerInstanceValue != null) {
      map['maxConcurrentInvocationsPerInstance'] =
          maxConcurrentInvocationsPerInstanceValue;
    }
    return map;
  }

  factory EndpointConfigurationAsyncInferenceConfigClientConfig.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationAsyncInferenceConfigClientConfig(
      maxConcurrentInvocationsPerInstance:
          map['maxConcurrentInvocationsPerInstance'] == null
              ? null
              : map['maxConcurrentInvocationsPerInstance'] as int,
    );
  }
}
