// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact.dart';
import 'agentcore_agent_runtime_authorizer_configuration.dart';
import 'agentcore_agent_runtime_filesystem_configuration.dart';
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
  /// Container artifact configuration. See `agentRuntimeArtifact` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifact> agentRuntimeArtifact;
  /// Name of the agent runtime.
  final pulumi.Input<String> agentRuntimeName;
  /// Authorization configuration for authenticating incoming requests. See `authorizerConfiguration` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfiguration?>? authorizerConfiguration;
  /// Description of the agent runtime.
  final pulumi.Input<String?>? description;
  /// Map of environment variables to pass to the container.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// List of filesystems to mount into the agent runtime. Up to 5 entries are supported. Each entry is one of session storage, Amazon S3 Files access point, or Amazon EFS access point. See `filesystemConfiguration` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeFilesystemConfiguration>?>? filesystemConfigurations;
  /// Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycleConfiguration` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeLifecycleConfiguration>?>? lifecycleConfigurations;
  /// Network configuration for the agent runtime. See `networkConfiguration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreAgentRuntimeNetworkConfiguration> networkConfiguration;
  /// Protocol configuration for the agent runtime. See `protocolConfiguration` below.
  final pulumi.Input<AgentcoreAgentRuntimeProtocolConfiguration?>? protocolConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration for HTTP request headers that will be passed through to the runtime. See `requestHeaderConfiguration` below.
  final pulumi.Input<AgentcoreAgentRuntimeRequestHeaderConfiguration?>? requestHeaderConfiguration;
  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  final pulumi.Input<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AgentcoreAgentRuntimeTimeouts?>? timeouts;

  /// Creates a new [AgentcoreAgentRuntimeArgs].
  /// [agentRuntimeArtifact] Container artifact configuration. See `agentRuntimeArtifact` below.
  /// [agentRuntimeName] Name of the agent runtime.
  /// [authorizerConfiguration] Authorization configuration for authenticating incoming requests. See `authorizerConfiguration` below.
  /// [description] Description of the agent runtime.
  /// [environmentVariables] Map of environment variables to pass to the container.
  /// [filesystemConfigurations] List of filesystems to mount into the agent runtime. Up to 5 entries are supported. Each entry is one of session storage, Amazon S3 Files access point, or Amazon EFS access point. See `filesystemConfiguration` below.
  /// [lifecycleConfigurations] Runtime session and resource lifecycle configuration for the agent runtime. See `lifecycleConfiguration` below.
  /// [networkConfiguration] Network configuration for the agent runtime. See `networkConfiguration` below.
  /// [protocolConfiguration] Protocol configuration for the agent runtime. See `protocolConfiguration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestHeaderConfiguration] Configuration for HTTP request headers that will be passed through to the runtime. See `requestHeaderConfiguration` below.
  /// [roleArn] ARN of the IAM role that the agent runtime assumes to access AWS services.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcoreAgentRuntimeArgs({
    required this.agentRuntimeArtifact,
    required this.agentRuntimeName,
    this.authorizerConfiguration,
    this.description,
    this.environmentVariables,
    this.filesystemConfigurations,
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
      'filesystemConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeFilesystemConfiguration>, List<Map<String, dynamic>>>(filesystemConfigurations, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeFilesystemConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      agentRuntimeArtifact: pulumi.Input.fromValue(AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((map['agentRuntimeArtifact']! as Map).cast<String, dynamic>())),
      agentRuntimeName: pulumi.Input.fromValue(map['agentRuntimeName'] as String),
      authorizerConfiguration: (() { final guardedValue = map['authorizerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      filesystemConfigurations: (() { final guardedValue = map['filesystemConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeFilesystemConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecycleConfigurations: (() { final guardedValue = map['lifecycleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkConfiguration: pulumi.Input.fromValue(AgentcoreAgentRuntimeNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())),
      protocolConfiguration: (() { final guardedValue = map['protocolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaderConfiguration: (() { final guardedValue = map['requestHeaderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
