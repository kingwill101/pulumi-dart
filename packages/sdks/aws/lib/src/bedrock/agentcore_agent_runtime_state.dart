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
import 'agentcore_agent_runtime_workload_identity_detail.dart';

/// Input properties used for looking up and filtering AgentcoreAgentRuntime resources.
class AgentcoreAgentRuntimeState {
  /// ARN of the Agent Runtime.
  final pulumi.Input<String?>? agentRuntimeArn;
  /// Container artifact configuration. See `agentRuntimeArtifact` below.
  final pulumi.Input<AgentcoreAgentRuntimeAgentRuntimeArtifact?>? agentRuntimeArtifact;
  /// Unique identifier of the Agent Runtime.
  final pulumi.Input<String?>? agentRuntimeId;
  /// Name of the agent runtime.
  final pulumi.Input<String?>? agentRuntimeName;
  /// Version of the Agent Runtime.
  final pulumi.Input<String?>? agentRuntimeVersion;
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
  final pulumi.Input<AgentcoreAgentRuntimeNetworkConfiguration?>? networkConfiguration;
  /// Protocol configuration for the agent runtime. See `protocolConfiguration` below.
  final pulumi.Input<AgentcoreAgentRuntimeProtocolConfiguration?>? protocolConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration for HTTP request headers that will be passed through to the runtime. See `requestHeaderConfiguration` below.
  final pulumi.Input<AgentcoreAgentRuntimeRequestHeaderConfiguration?>? requestHeaderConfiguration;
  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  final pulumi.Input<String?>? roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<AgentcoreAgentRuntimeTimeouts?>? timeouts;
  /// Workload identity details for the agent runtime. See `workloadIdentityDetails` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeWorkloadIdentityDetail>?>? workloadIdentityDetails;

  /// Creates a new [AgentcoreAgentRuntimeState].
  /// [agentRuntimeArn] ARN of the Agent Runtime.
  /// [agentRuntimeArtifact] Container artifact configuration. See `agentRuntimeArtifact` below.
  /// [agentRuntimeId] Unique identifier of the Agent Runtime.
  /// [agentRuntimeName] Name of the agent runtime.
  /// [agentRuntimeVersion] Version of the Agent Runtime.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [workloadIdentityDetails] Workload identity details for the agent runtime. See `workloadIdentityDetails` below.
  const AgentcoreAgentRuntimeState({
    this.agentRuntimeArn,
    this.agentRuntimeArtifact,
    this.agentRuntimeId,
    this.agentRuntimeName,
    this.agentRuntimeVersion,
    this.authorizerConfiguration,
    this.description,
    this.environmentVariables,
    this.filesystemConfigurations,
    this.lifecycleConfigurations,
    this.networkConfiguration,
    this.protocolConfiguration,
    this.region,
    this.requestHeaderConfiguration,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.workloadIdentityDetails,
  });

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
      'filesystemConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeFilesystemConfiguration>, List<Map<String, dynamic>>>(filesystemConfigurations, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeFilesystemConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      agentRuntimeArn: (() { final guardedValue = map['agentRuntimeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeArtifact: (() { final guardedValue = map['agentRuntimeArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAgentRuntimeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentRuntimeId: (() { final guardedValue = map['agentRuntimeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeName: (() { final guardedValue = map['agentRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeVersion: (() { final guardedValue = map['agentRuntimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerConfiguration: (() { final guardedValue = map['authorizerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      filesystemConfigurations: (() { final guardedValue = map['filesystemConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeFilesystemConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeFilesystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecycleConfigurations: (() { final guardedValue = map['lifecycleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeLifecycleConfiguration>(guardedValue, (value) => AgentcoreAgentRuntimeLifecycleConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocolConfiguration: (() { final guardedValue = map['protocolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeProtocolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaderConfiguration: (() { final guardedValue = map['requestHeaderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadIdentityDetails: (() { final guardedValue = map['workloadIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeWorkloadIdentityDetail>(guardedValue, (value) => AgentcoreAgentRuntimeWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
