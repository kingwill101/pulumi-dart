// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayInterceptorConfigurationInputConfiguration {
  /// Whether to pass request headers to the interceptor.
  final pulumi.Input<bool> passRequestHeaders;

  /// Creates a new [AgentcoreGatewayInterceptorConfigurationInputConfiguration].
  /// [passRequestHeaders] Whether to pass request headers to the interceptor.
  const AgentcoreGatewayInterceptorConfigurationInputConfiguration({
    required this.passRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passRequestHeaders': passRequestHeaders,
    };
  }

  factory AgentcoreGatewayInterceptorConfigurationInputConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayInterceptorConfigurationInputConfiguration(
      passRequestHeaders: pulumi.Input.fromValue(map['passRequestHeaders'] as bool),
    );
  }
}

