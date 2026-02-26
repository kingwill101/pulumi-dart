// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayInterceptorConfigurationInputConfiguration {
  /// Whether to pass request headers to the interceptor.
  final bool passRequestHeaders;

  AgentcoreGatewayInterceptorConfigurationInputConfiguration({
    required this.passRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passRequestHeaders'] = passRequestHeaders;
    return map;
  }

  factory AgentcoreGatewayInterceptorConfigurationInputConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfigurationInputConfiguration(
      passRequestHeaders: map['passRequestHeaders'] as bool,
    );
  }
}
