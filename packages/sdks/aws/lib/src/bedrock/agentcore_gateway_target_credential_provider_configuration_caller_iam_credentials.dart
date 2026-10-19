// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials {
  /// AWS region for the credentials.
  final pulumi.Input<String?>? region;
  /// Service name for the credentials.
  final pulumi.Input<String> service;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials].
  /// [region] AWS region for the credentials.
  /// [service] Service name for the credentials.
  const AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials({
    this.region,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'service': service,
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
