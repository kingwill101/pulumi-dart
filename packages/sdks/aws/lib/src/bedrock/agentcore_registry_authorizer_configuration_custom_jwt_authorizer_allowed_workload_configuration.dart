// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_allowed_workload_configuration_hosting_environment.dart';

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration {
  /// Hosting environments allowed to use the authorizer. Between 1 and 10 entries. See `hostingEnvironment` below.
  final pulumi.Input<List<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment>?>? hostingEnvironments;
  /// List of workload identity names allowed to use the authorizer. Between 1 and 10 entries.
  final pulumi.Input<List<String>?>? workloadIdentities;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration].
  /// [hostingEnvironments] Hosting environments allowed to use the authorizer. Between 1 and 10 entries. See `hostingEnvironment` below.
  /// [workloadIdentities] List of workload identity names allowed to use the authorizer. Between 1 and 10 entries.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration({
    this.hostingEnvironments,
    this.workloadIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostingEnvironments': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment>, List<Map<String, dynamic>>>(hostingEnvironments, (value) => pulumi.Input.encodeList<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadIdentities': ?workloadIdentities,
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration(
      hostingEnvironments: (() { final guardedValue = map['hostingEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment>(guardedValue, (value) => AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfigurationHostingEnvironment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workloadIdentities: (() { final guardedValue = map['workloadIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
