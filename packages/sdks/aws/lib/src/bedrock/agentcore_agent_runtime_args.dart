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
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifact> agentRuntimeArtifact;
  /// Name of the agent runtime.
  final pulumi.Input<String> agentRuntimeName;
  /// Authorization configuration for authenticating incoming requests. See `authorizer_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfiguration>? authorizerConfiguration;
  /// Description of the agent runtime.
  final pulumi.Input<String>? description;
  /// Map of environment variables to pass to the container.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycle_configuration` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeLifecycleConfiguration>>? lifecycleConfigurations;
  /// Network configuration for the agent runtime. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreAgentRuntimeNetworkConfiguration> networkConfiguration;
  /// Protocol configuration for the agent runtime. See `protocol_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeProtocolConfiguration>? protocolConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for HTTP request headers that will be passed through to the runtime. See `request_header_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeRequestHeaderConfiguration>? requestHeaderConfiguration;
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
    return <String, dynamic>{
      'agentRuntimeArtifact': pulumi.Input.mapInputValue<AgentcoreAgentRuntimeAgentRuntimeArtifact, Map<String, dynamic>>(agentRuntimeArtifact, (value) => value.toMap()),
      'agentRuntimeName': agentRuntimeName,
      'authorizerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfiguration, Map<String, dynamic>>(authorizerConfiguration, (value) => value.toMap()),
      'description': ?description,
      'environmentVariables': ?environmentVariables,
      'lifecycleConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeLifecycleConfiguration>, List<Map<String, dynamic>>>(lifecycleConfigurations, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeLifecycleConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkConfiguration': pulumi.Input.mapInputValue<AgentcoreAgentRuntimeNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'protocolConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeProtocolConfiguration, Map<String, dynamic>>(protocolConfiguration, (value) => value.toMap()),
      'region': ?region,
      'requestHeaderConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeRequestHeaderConfiguration, Map<String, dynamic>>(requestHeaderConfiguration, (value) => value.toMap()),
      'roleArn': roleArn,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeArgs(
      agentRuntimeArtifact: (AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((map['agentRuntimeArtifact'] as Map).cast<String, dynamic>())).input(),
      agentRuntimeName: (map['agentRuntimeName'] as String).input(),
      authorizerConfiguration: map['authorizerConfiguration'] == null ? null : (AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((map['authorizerConfiguration'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      lifecycleConfigurations: map['lifecycleConfigurations'] == null ? null : (pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(map['lifecycleConfigurations'], (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkConfiguration: (AgentcoreAgentRuntimeNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      protocolConfiguration: map['protocolConfiguration'] == null ? null : (AgentcoreAgentRuntimeProtocolConfiguration.fromMap((map['protocolConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requestHeaderConfiguration: map['requestHeaderConfiguration'] == null ? null : (AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((map['requestHeaderConfiguration'] as Map).cast<String, dynamic>())).input(),
      roleArn: (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (AgentcoreAgentRuntimeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

