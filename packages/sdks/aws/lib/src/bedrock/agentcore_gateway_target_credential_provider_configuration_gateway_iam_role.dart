// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole {
  /// AWS Region used for SigV4 signing of upstream requests. Defaults to the gateway's Region when omitted. Only meaningful when `service` is set.
  final pulumi.Input<String?>? region;
  /// The target AWS service name used for SigV4 signing of upstream requests. Required when calling SigV4-protected endpoints such as another Bedrock AgentCore Runtime (use `bedrock-agentcore`). Omit for non-SigV4 IAM-role-based authentication, in which case the block can be empty (`gatewayIamRole {}`).
  final pulumi.Input<String?>? service;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole].
  /// [region] AWS Region used for SigV4 signing of upstream requests. Defaults to the gateway's Region when omitted. Only meaningful when `service` is set.
  /// [service] The target AWS service name used for SigV4 signing of upstream requests. Required when calling SigV4-protected endpoints such as another Bedrock AgentCore Runtime (use `bedrock-agentcore`). Omit for non-SigV4 IAM-role-based authentication, in which case the block can be empty (`gatewayIamRole {}`).
  const AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole({
    this.region,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'service': ?service,
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
