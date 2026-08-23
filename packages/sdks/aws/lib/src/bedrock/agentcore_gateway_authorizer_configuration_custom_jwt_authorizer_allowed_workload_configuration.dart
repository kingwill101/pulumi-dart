// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration_custom_jwt_authorizer_allowed_workload_configuration_hosting_environment.dart';

class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration {
  /// Hosting environments allowed to use the authorizer. Between 1 and 10 entries. See `hostingEnvironment` below.
  final pulumi.Input<List<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment>>? hostingEnvironments;
  /// List of workload identity names allowed to use the authorizer. Between 1 and 10 entries.
  final pulumi.Input<List<String>>? workloadIdentities;

  /// Creates a new [AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration].
  /// [hostingEnvironments] Hosting environments allowed to use the authorizer. Between 1 and 10 entries. See `hostingEnvironment` below.
  /// [workloadIdentities] List of workload identity names allowed to use the authorizer. Between 1 and 10 entries.
  const AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration({
    this.hostingEnvironments,
    this.workloadIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostingEnvironments': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment>, List<Map<String, dynamic>>>(hostingEnvironments, (value) => pulumi.Input.encodeList<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadIdentities': ?workloadIdentities,
    };
  }

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration(
      hostingEnvironments: (() { final guardedValue = map['hostingEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment>(guardedValue, (value) => AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workloadIdentities: (() { final guardedValue = map['workloadIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
