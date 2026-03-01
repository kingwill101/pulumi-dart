// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_agent_runtime_artifact.dart';
import 'agentcore_agent_runtime_authorizer_configuration.dart';
import 'agentcore_agent_runtime_lifecycle_configuration.dart';
import 'agentcore_agent_runtime_network_configuration.dart';
import 'agentcore_agent_runtime_protocol_configuration.dart';
import 'agentcore_agent_runtime_request_header_configuration.dart';
import 'agentcore_agent_runtime_timeouts.dart';
import 'agentcore_agent_runtime_workload_identity_detail.dart';

/// Input properties used for looking up and filtering AgentcoreAgentRuntime resources.
class AgentcoreAgentRuntimeState {
  /// ARN of the Agent Runtime.
  final pulumi.Input<String>? agentRuntimeArn;
  /// Container artifact configuration. See `agent_runtime_artifact` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifact>? agentRuntimeArtifact;
  /// Unique identifier of the Agent Runtime.
  final pulumi.Input<String>? agentRuntimeId;
  /// Name of the agent runtime.
  final pulumi.Input<String>? agentRuntimeName;
  /// Version of the Agent Runtime.
  final pulumi.Input<String>? agentRuntimeVersion;
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
  final pulumi.Input<AgentcoreAgentRuntimeNetworkConfiguration>? networkConfiguration;
  /// Protocol configuration for the agent runtime. See `protocol_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeProtocolConfiguration>? protocolConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for HTTP request headers that will be passed through to the runtime. See `request_header_configuration` below.
  final pulumi.Input<AgentcoreAgentRuntimeRequestHeaderConfiguration>? requestHeaderConfiguration;
  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  final pulumi.Input<String>? roleArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreAgentRuntimeTimeouts>? timeouts;
  /// Workload identity details for the agent runtime. See `workload_identity_details` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>? workloadIdentityDetails;

  /// Creates a new [AgentcoreAgentRuntimeState].
  /// [agentRuntimeArn] ARN of the Agent Runtime.
  /// [agentRuntimeArtifact] Container artifact configuration. See `agent_runtime_artifact` below.
  /// [agentRuntimeId] Unique identifier of the Agent Runtime.
  /// [agentRuntimeName] Name of the agent runtime.
  /// [agentRuntimeVersion] Version of the Agent Runtime.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [workloadIdentityDetails] Workload identity details for the agent runtime. See `workload_identity_details` below.
  AgentcoreAgentRuntimeState({
    pulumi.Output<String>? agentRuntimeArn,
    pulumi.Output<AgentcoreAgentRuntimeAgentRuntimeArtifact>? agentRuntimeArtifact,
    pulumi.Output<String>? agentRuntimeId,
    pulumi.Output<String>? agentRuntimeName,
    pulumi.Output<String>? agentRuntimeVersion,
    pulumi.Output<AgentcoreAgentRuntimeAuthorizerConfiguration>? authorizerConfiguration,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? environmentVariables,
    pulumi.Output<List<AgentcoreAgentRuntimeLifecycleConfiguration>>? lifecycleConfigurations,
    pulumi.Output<AgentcoreAgentRuntimeNetworkConfiguration>? networkConfiguration,
    pulumi.Output<AgentcoreAgentRuntimeProtocolConfiguration>? protocolConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<AgentcoreAgentRuntimeRequestHeaderConfiguration>? requestHeaderConfiguration,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentcoreAgentRuntimeTimeouts>? timeouts,
    pulumi.Output<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>? workloadIdentityDetails,
  }) :
      agentRuntimeArn = pulumi.Input.asOptionalInput<String>(agentRuntimeArn),
      agentRuntimeArtifact = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeAgentRuntimeArtifact>(agentRuntimeArtifact),
      agentRuntimeId = pulumi.Input.asOptionalInput<String>(agentRuntimeId),
      agentRuntimeName = pulumi.Input.asOptionalInput<String>(agentRuntimeName),
      agentRuntimeVersion = pulumi.Input.asOptionalInput<String>(agentRuntimeVersion),
      authorizerConfiguration = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeAuthorizerConfiguration>(authorizerConfiguration),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      lifecycleConfigurations = pulumi.Input.asOptionalInput<List<AgentcoreAgentRuntimeLifecycleConfiguration>>(lifecycleConfigurations),
      networkConfiguration = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeNetworkConfiguration>(networkConfiguration),
      protocolConfiguration = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeProtocolConfiguration>(protocolConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestHeaderConfiguration = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeRequestHeaderConfiguration>(requestHeaderConfiguration),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeTimeouts>(timeouts),
      workloadIdentityDetails = pulumi.Input.asOptionalInput<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>(workloadIdentityDetails);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentRuntimeArn': ?agentRuntimeArn,
      'agentRuntimeArtifact': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAgentRuntimeArtifact, Map<String, dynamic>>(agentRuntimeArtifact, (value) => value.toMap()),
      'agentRuntimeId': ?agentRuntimeId,
      'agentRuntimeName': ?agentRuntimeName,
      'agentRuntimeVersion': ?agentRuntimeVersion,
      'authorizerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfiguration, Map<String, dynamic>>(authorizerConfiguration, (value) => value.toMap()),
      'description': ?description,
      'environmentVariables': ?environmentVariables,
      'lifecycleConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeLifecycleConfiguration>, List<Map<String, dynamic>>>(lifecycleConfigurations, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeLifecycleConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'protocolConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeProtocolConfiguration, Map<String, dynamic>>(protocolConfiguration, (value) => value.toMap()),
      'region': ?region,
      'requestHeaderConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeRequestHeaderConfiguration, Map<String, dynamic>>(requestHeaderConfiguration, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workloadIdentityDetails': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>, List<Map<String, dynamic>>>(workloadIdentityDetails, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeWorkloadIdentityDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreAgentRuntimeState.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeState(
      agentRuntimeArn: map['agentRuntimeArn'] == null ? null : pulumi.Output.create<String>(map['agentRuntimeArn'] as String),
      agentRuntimeArtifact: map['agentRuntimeArtifact'] == null ? null : pulumi.Output.create<AgentcoreAgentRuntimeAgentRuntimeArtifact>(AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((map['agentRuntimeArtifact'] as Map).cast<String, dynamic>())),
      agentRuntimeId: map['agentRuntimeId'] == null ? null : pulumi.Output.create<String>(map['agentRuntimeId'] as String),
      agentRuntimeName: map['agentRuntimeName'] == null ? null : pulumi.Output.create<String>(map['agentRuntimeName'] as String),
      agentRuntimeVersion: map['agentRuntimeVersion'] == null ? null : pulumi.Output.create<String>(map['agentRuntimeVersion'] as String),
      authorizerConfiguration: map['authorizerConfiguration'] == null ? null : pulumi.Output.create<AgentcoreAgentRuntimeAuthorizerConfiguration>(AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((map['authorizerConfiguration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentVariables'] as Map).cast<String, String>()),
      lifecycleConfigurations: map['lifecycleConfigurations'] == null ? null : pulumi.Output.create<List<AgentcoreAgentRuntimeLifecycleConfiguration>>(pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(map['lifecycleConfigurations'], (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<AgentcoreAgentRuntimeNetworkConfiguration>(AgentcoreAgentRuntimeNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      protocolConfiguration: map['protocolConfiguration'] == null ? null : pulumi.Output.create<AgentcoreAgentRuntimeProtocolConfiguration>(AgentcoreAgentRuntimeProtocolConfiguration.fromMap((map['protocolConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestHeaderConfiguration: map['requestHeaderConfiguration'] == null ? null : pulumi.Output.create<AgentcoreAgentRuntimeRequestHeaderConfiguration>(AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((map['requestHeaderConfiguration'] as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreAgentRuntimeTimeouts>(AgentcoreAgentRuntimeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      workloadIdentityDetails: map['workloadIdentityDetails'] == null ? null : pulumi.Output.create<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>>(pulumi.Input.decodeList<AgentcoreAgentRuntimeWorkloadIdentityDetail>(map['workloadIdentityDetails'], (value) => AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

