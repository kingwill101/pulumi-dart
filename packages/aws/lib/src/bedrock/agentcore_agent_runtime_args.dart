// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact.dart';
import 'agentcore_agent_runtime_authorizer_configuration.dart';
import 'agentcore_agent_runtime_lifecycle_configuration.dart';
import 'agentcore_agent_runtime_network_configuration.dart';
import 'agentcore_agent_runtime_protocol_configuration.dart';
import 'agentcore_agent_runtime_request_header_configuration.dart';
import 'agentcore_agent_runtime_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_agent_runtime_agentcore_agent_runtime_args_doc}
/// The set of arguments for AgentcoreAgentRuntime.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_agent_runtime_agentcore_agent_runtime_args_doc}
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

  /// Creates a new [AgentcoreAgentRuntimeArgs].
  /// [agentRuntimeArtifact] Container artifact configuration. See `agent_runtime_artifact` below.
  /// [agentRuntimeName] Name of the agent runtime.
  /// [authorizerConfiguration] Authorization configuration for authenticating incoming requests. See `authorizer_configuration` below.
  /// [description] Description of the agent runtime.
  /// [environmentVariables] Map of environment variables to pass to the container.
  /// [lifecycleConfigurations] Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycle_configuration` below.
  /// [networkConfiguration] Network configuration for the agent runtime. See `network_configuration` below.
  /// [protocolConfiguration] Protocol configuration for the agent runtime. See `protocol_configuration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestHeaderConfiguration] Configuration for HTTP request headers that will be passed through to the runtime. See `request_header_configuration` below.
  /// [roleArn] ARN of the IAM role that the agent runtime assumes to access AWS services.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentcoreAgentRuntimeArgs({
    required AgentcoreAgentRuntimeAgentRuntimeArtifact agentRuntimeArtifact,
    required String agentRuntimeName,
    AgentcoreAgentRuntimeAuthorizerConfiguration? authorizerConfiguration,
    String? description,
    Map<String, String>? environmentVariables,
    List<AgentcoreAgentRuntimeLifecycleConfiguration>? lifecycleConfigurations,
    required AgentcoreAgentRuntimeNetworkConfiguration networkConfiguration,
    AgentcoreAgentRuntimeProtocolConfiguration? protocolConfiguration,
    String? region,
    AgentcoreAgentRuntimeRequestHeaderConfiguration? requestHeaderConfiguration,
    required String roleArn,
    Map<String, String>? tags,
    AgentcoreAgentRuntimeTimeouts? timeouts,
  })  : agentRuntimeArtifact =
            pulumi.Input.asInput<AgentcoreAgentRuntimeAgentRuntimeArtifact>(
                agentRuntimeArtifact),
        agentRuntimeName = pulumi.Input.asInput<String>(agentRuntimeName),
        authorizerConfiguration = pulumi.Input.asOptionalInput<
                AgentcoreAgentRuntimeAuthorizerConfiguration>(
            authorizerConfiguration),
        description = pulumi.Input.asOptionalInput<String>(description),
        environmentVariables =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                environmentVariables),
        lifecycleConfigurations = pulumi.Input.asOptionalInput<
                List<AgentcoreAgentRuntimeLifecycleConfiguration>>(
            lifecycleConfigurations),
        networkConfiguration =
            pulumi.Input.asInput<AgentcoreAgentRuntimeNetworkConfiguration>(
                networkConfiguration),
        protocolConfiguration = pulumi.Input.asOptionalInput<
            AgentcoreAgentRuntimeProtocolConfiguration>(protocolConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        requestHeaderConfiguration = pulumi.Input.asOptionalInput<
                AgentcoreAgentRuntimeRequestHeaderConfiguration>(
            requestHeaderConfiguration),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeTimeouts>(
            timeouts);

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
      agentRuntimeArtifact: AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap(
          (map['agentRuntimeArtifact'] as Map).cast<String, dynamic>()),
      agentRuntimeName: map['agentRuntimeName'] as String,
      authorizerConfiguration: map['authorizerConfiguration'] == null
          ? null
          : AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap(
              (map['authorizerConfiguration'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      lifecycleConfigurations: map['lifecycleConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreAgentRuntimeLifecycleConfiguration>(
              map['lifecycleConfigurations'],
              (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkConfiguration: AgentcoreAgentRuntimeNetworkConfiguration.fromMap(
          (map['networkConfiguration'] as Map).cast<String, dynamic>()),
      protocolConfiguration: map['protocolConfiguration'] == null
          ? null
          : AgentcoreAgentRuntimeProtocolConfiguration.fromMap(
              (map['protocolConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      requestHeaderConfiguration: map['requestHeaderConfiguration'] == null
          ? null
          : AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap(
              (map['requestHeaderConfiguration'] as Map)
                  .cast<String, dynamic>()),
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : AgentcoreAgentRuntimeTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
