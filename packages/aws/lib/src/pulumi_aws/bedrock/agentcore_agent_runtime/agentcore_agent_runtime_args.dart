// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_agent_runtime_agent_runtime_artifact/agentcore_agent_runtime_agent_runtime_artifact.dart';
import '../agentcore_agent_runtime_authorizer_configuration/agentcore_agent_runtime_authorizer_configuration.dart';
import '../agentcore_agent_runtime_lifecycle_configuration/agentcore_agent_runtime_lifecycle_configuration.dart';
import '../agentcore_agent_runtime_network_configuration/agentcore_agent_runtime_network_configuration.dart';
import '../agentcore_agent_runtime_protocol_configuration/agentcore_agent_runtime_protocol_configuration.dart';
import '../agentcore_agent_runtime_request_header_configuration/agentcore_agent_runtime_request_header_configuration.dart';
import '../agentcore_agent_runtime_timeouts/agentcore_agent_runtime_timeouts.dart';

/// The set of arguments for AgentcoreAgentRuntime.
class AgentcoreAgentRuntimeArgs {
  /// Container artifact configuration. See `agent_runtime_artifact` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifact>
      agentRuntimeArtifact;

  /// Name of the agent runtime.
  final pulumi.Input<String> agentRuntimeName;

  /// Authorization configuration for authenticating incoming requests. See `authorizer_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfiguration>?
      authorizerConfiguration;

  /// Description of the agent runtime.
  final pulumi.Input<String>? description;

  /// Map of environment variables to pass to the container.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycle_configuration` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeLifecycleConfiguration>>?
      lifecycleConfigurations;

  /// Network configuration for the agent runtime. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreAgentRuntimeNetworkConfiguration>
      networkConfiguration;

  /// Protocol configuration for the agent runtime. See `protocol_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeProtocolConfiguration>?
      protocolConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration for HTTP request headers that will be passed through to the runtime. See `request_header_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeRequestHeaderConfiguration>?
      requestHeaderConfiguration;

  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  final pulumi.Input<String> roleArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreAgentRuntimeTimeouts>? timeouts;

  AgentcoreAgentRuntimeArgs({
    required this.agentRuntimeArtifact,
    required this.agentRuntimeName,
    this.authorizerConfiguration,
    this.description,
    this.environmentVariables,
    this.lifecycleConfigurations,
    required this.networkConfiguration,
    this.protocolConfiguration,
    this.region,
    this.requestHeaderConfiguration,
    required this.roleArn,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentRuntimeArtifact'] = pulumi.Input.mapInputValue<
        AgentcoreAgentRuntimeAgentRuntimeArtifact,
        Map<String, dynamic>>(agentRuntimeArtifact, (value) => value.toMap());
    map['agentRuntimeName'] = agentRuntimeName;
    final authorizerConfigurationValue = authorizerConfiguration;
    if (authorizerConfigurationValue != null) {
      map['authorizerConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentcoreAgentRuntimeAuthorizerConfiguration,
              Map<String, dynamic>>(
          authorizerConfigurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final lifecycleConfigurationsValue = lifecycleConfigurations;
    if (lifecycleConfigurationsValue != null) {
      map['lifecycleConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<AgentcoreAgentRuntimeLifecycleConfiguration>,
              List<Map<String, dynamic>>>(
          lifecycleConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              AgentcoreAgentRuntimeLifecycleConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['networkConfiguration'] = pulumi.Input.mapInputValue<
        AgentcoreAgentRuntimeNetworkConfiguration,
        Map<String, dynamic>>(networkConfiguration, (value) => value.toMap());
    final protocolConfigurationValue = protocolConfiguration;
    if (protocolConfigurationValue != null) {
      map['protocolConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentcoreAgentRuntimeProtocolConfiguration, Map<String, dynamic>>(
          protocolConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestHeaderConfigurationValue = requestHeaderConfiguration;
    if (requestHeaderConfigurationValue != null) {
      map['requestHeaderConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentcoreAgentRuntimeRequestHeaderConfiguration,
              Map<String, dynamic>>(
          requestHeaderConfigurationValue, (value) => value.toMap());
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreAgentRuntimeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreAgentRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeArgs(
      agentRuntimeArtifact:
          pulumi.Input.asInput<AgentcoreAgentRuntimeAgentRuntimeArtifact>(
              map['agentRuntimeArtifact']),
      agentRuntimeName: pulumi.Input.asInput<String>(map['agentRuntimeName']),
      authorizerConfiguration: pulumi.Input.asOptionalInput<
              AgentcoreAgentRuntimeAuthorizerConfiguration>(
          map['authorizerConfiguration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      lifecycleConfigurations: pulumi.Input.asOptionalInput<
              List<AgentcoreAgentRuntimeLifecycleConfiguration>>(
          map['lifecycleConfigurations']),
      networkConfiguration:
          pulumi.Input.asInput<AgentcoreAgentRuntimeNetworkConfiguration>(
              map['networkConfiguration']),
      protocolConfiguration: pulumi.Input.asOptionalInput<
              AgentcoreAgentRuntimeProtocolConfiguration>(
          map['protocolConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestHeaderConfiguration: pulumi.Input.asOptionalInput<
              AgentcoreAgentRuntimeRequestHeaderConfiguration>(
          map['requestHeaderConfiguration']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeTimeouts>(
          map['timeouts']),
    );
  }
}
