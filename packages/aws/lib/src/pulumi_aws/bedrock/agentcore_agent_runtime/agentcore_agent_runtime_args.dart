// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_agent_runtime_agent_runtime_artifact/agentcore_agent_runtime_agent_runtime_artifact.dart';
import '../agentcore_agent_runtime_authorizer_configuration/agentcore_agent_runtime_authorizer_configuration.dart';
import '../agentcore_agent_runtime_lifecycle_configuration/agentcore_agent_runtime_lifecycle_configuration.dart';
import '../agentcore_agent_runtime_network_configuration/agentcore_agent_runtime_network_configuration.dart';
import '../agentcore_agent_runtime_protocol_configuration/agentcore_agent_runtime_protocol_configuration.dart';
import '../agentcore_agent_runtime_request_header_configuration/agentcore_agent_runtime_request_header_configuration.dart';
import '../agentcore_agent_runtime_timeouts/agentcore_agent_runtime_timeouts.dart';

/// The set of arguments for AgentcoreAgentRuntime.
class AgentcoreAgentRuntimeArgs {
  /// Container artifact configuration. See <span pulumi-lang-nodejs="`agentRuntimeArtifact`" pulumi-lang-dotnet="`AgentRuntimeArtifact`" pulumi-lang-go="`agentRuntimeArtifact`" pulumi-lang-python="`agent_runtime_artifact`" pulumi-lang-yaml="`agentRuntimeArtifact`" pulumi-lang-java="`agentRuntimeArtifact`">`agent_runtime_artifact`</span> below.
  final Input<AgentcoreAgentRuntimeAgentRuntimeArtifact> agentRuntimeArtifact;

  /// Name of the agent runtime.
  final Input<String> agentRuntimeName;

  /// Authorization configuration for authenticating incoming requests. See <span pulumi-lang-nodejs="`authorizerConfiguration`" pulumi-lang-dotnet="`AuthorizerConfiguration`" pulumi-lang-go="`authorizerConfiguration`" pulumi-lang-python="`authorizer_configuration`" pulumi-lang-yaml="`authorizerConfiguration`" pulumi-lang-java="`authorizerConfiguration`">`authorizer_configuration`</span> below.
  final Input<AgentcoreAgentRuntimeAuthorizerConfiguration>?
      authorizerConfiguration;

  /// Description of the agent runtime.
  final Input<String>? description;

  /// Map of environment variables to pass to the container.
  final Input<Map<String, String>>? environmentVariables;

  /// Runtime session and resource lifecycle configuration for the agent runtime. See <span pulumi-lang-nodejs="`lifecycleConfiguration`" pulumi-lang-dotnet="`LifecycleConfiguration`" pulumi-lang-go="`lifecycleConfiguration`" pulumi-lang-python="`lifecycle_configuration`" pulumi-lang-yaml="`lifecycleConfiguration`" pulumi-lang-java="`lifecycleConfiguration`">`lifecycle_configuration`</span> below.
  final Input<List<AgentcoreAgentRuntimeLifecycleConfiguration>>?
      lifecycleConfigurations;

  /// Network configuration for the agent runtime. See <span pulumi-lang-nodejs="`networkConfiguration`" pulumi-lang-dotnet="`NetworkConfiguration`" pulumi-lang-go="`networkConfiguration`" pulumi-lang-python="`network_configuration`" pulumi-lang-yaml="`networkConfiguration`" pulumi-lang-java="`networkConfiguration`">`network_configuration`</span> below.
  ///
  /// The following arguments are optional:
  final Input<AgentcoreAgentRuntimeNetworkConfiguration> networkConfiguration;

  /// Protocol configuration for the agent runtime. See <span pulumi-lang-nodejs="`protocolConfiguration`" pulumi-lang-dotnet="`ProtocolConfiguration`" pulumi-lang-go="`protocolConfiguration`" pulumi-lang-python="`protocol_configuration`" pulumi-lang-yaml="`protocolConfiguration`" pulumi-lang-java="`protocolConfiguration`">`protocol_configuration`</span> below.
  final Input<AgentcoreAgentRuntimeProtocolConfiguration>?
      protocolConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration for HTTP request headers that will be passed through to the runtime. See <span pulumi-lang-nodejs="`requestHeaderConfiguration`" pulumi-lang-dotnet="`RequestHeaderConfiguration`" pulumi-lang-go="`requestHeaderConfiguration`" pulumi-lang-python="`request_header_configuration`" pulumi-lang-yaml="`requestHeaderConfiguration`" pulumi-lang-java="`requestHeaderConfiguration`">`request_header_configuration`</span> below.
  final Input<AgentcoreAgentRuntimeRequestHeaderConfiguration>?
      requestHeaderConfiguration;

  /// ARN of the IAM role that the agent runtime assumes to access AWS services.
  final Input<String> roleArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentcoreAgentRuntimeTimeouts>? timeouts;

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
    map['agentRuntimeArtifact'] = Input.mapInputValue<
        AgentcoreAgentRuntimeAgentRuntimeArtifact,
        Map<String, dynamic>>(agentRuntimeArtifact, (value) => value.toMap());
    map['agentRuntimeName'] = agentRuntimeName;
    final authorizerConfigurationValue = authorizerConfiguration;
    if (authorizerConfigurationValue != null) {
      map['authorizerConfiguration'] = Input.mapOptionalInputValue<
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
      map['lifecycleConfigurations'] = Input.mapOptionalInputValue<
              List<AgentcoreAgentRuntimeLifecycleConfiguration>,
              List<Map<String, dynamic>>>(
          lifecycleConfigurationsValue,
          (value) => Input.encodeList<
              AgentcoreAgentRuntimeLifecycleConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['networkConfiguration'] = Input.mapInputValue<
        AgentcoreAgentRuntimeNetworkConfiguration,
        Map<String, dynamic>>(networkConfiguration, (value) => value.toMap());
    final protocolConfigurationValue = protocolConfiguration;
    if (protocolConfigurationValue != null) {
      map['protocolConfiguration'] = Input.mapOptionalInputValue<
              AgentcoreAgentRuntimeProtocolConfiguration, Map<String, dynamic>>(
          protocolConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestHeaderConfigurationValue = requestHeaderConfiguration;
    if (requestHeaderConfigurationValue != null) {
      map['requestHeaderConfiguration'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentcoreAgentRuntimeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreAgentRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeArgs(
      agentRuntimeArtifact:
          Input.asInput<AgentcoreAgentRuntimeAgentRuntimeArtifact>(
              map['agentRuntimeArtifact']),
      agentRuntimeName: Input.asInput<String>(map['agentRuntimeName']),
      authorizerConfiguration:
          Input.asOptionalInput<AgentcoreAgentRuntimeAuthorizerConfiguration>(
              map['authorizerConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      environmentVariables: Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      lifecycleConfigurations: Input.asOptionalInput<
              List<AgentcoreAgentRuntimeLifecycleConfiguration>>(
          map['lifecycleConfigurations']),
      networkConfiguration:
          Input.asInput<AgentcoreAgentRuntimeNetworkConfiguration>(
              map['networkConfiguration']),
      protocolConfiguration:
          Input.asOptionalInput<AgentcoreAgentRuntimeProtocolConfiguration>(
              map['protocolConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      requestHeaderConfiguration: Input.asOptionalInput<
              AgentcoreAgentRuntimeRequestHeaderConfiguration>(
          map['requestHeaderConfiguration']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<AgentcoreAgentRuntimeTimeouts>(map['timeouts']),
    );
  }
}
