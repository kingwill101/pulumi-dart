// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreGatewayInterceptorConfigurationInputConfiguration {
  /// Whether to pass request headers to the interceptor.
  final bool passRequestHeaders;

  /// Creates a new [AgentcoreGatewayInterceptorConfigurationInputConfiguration].
  /// [passRequestHeaders] Whether to pass request headers to the interceptor.
  AgentcoreGatewayInterceptorConfigurationInputConfiguration({
    required this.passRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passRequestHeaders': passRequestHeaders,
    };
  }

  factory AgentcoreGatewayInterceptorConfigurationInputConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfigurationInputConfiguration(
      passRequestHeaders: map['passRequestHeaders'] as bool,
    );
  }
}

