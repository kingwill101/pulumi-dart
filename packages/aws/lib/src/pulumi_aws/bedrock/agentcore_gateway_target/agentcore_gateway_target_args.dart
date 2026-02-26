// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_gateway_target_credential_provider_configuration/agentcore_gateway_target_credential_provider_configuration.dart';
import '../agentcore_gateway_target_target_configuration/agentcore_gateway_target_target_configuration.dart';
import '../agentcore_gateway_target_timeouts/agentcore_gateway_target_timeouts.dart';

/// The set of arguments for AgentcoreGatewayTarget.
class AgentcoreGatewayTargetArgs {
  /// Configuration for authenticating requests to the target. Required when using <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, <span pulumi-lang-nodejs="`openApiSchema`" pulumi-lang-dotnet="`OpenApiSchema`" pulumi-lang-go="`openApiSchema`" pulumi-lang-python="`open_api_schema`" pulumi-lang-yaml="`openApiSchema`" pulumi-lang-java="`openApiSchema`">`open_api_schema`</span> and <span pulumi-lang-nodejs="`smithyModel`" pulumi-lang-dotnet="`SmithyModel`" pulumi-lang-go="`smithyModel`" pulumi-lang-python="`smithy_model`" pulumi-lang-yaml="`smithyModel`" pulumi-lang-java="`smithyModel`">`smithy_model`</span> in <span pulumi-lang-nodejs="`mcp`" pulumi-lang-dotnet="`Mcp`" pulumi-lang-go="`mcp`" pulumi-lang-python="`mcp`" pulumi-lang-yaml="`mcp`" pulumi-lang-java="`mcp`">`mcp`</span> block. If using <span pulumi-lang-nodejs="`mcpServer`" pulumi-lang-dotnet="`McpServer`" pulumi-lang-go="`mcpServer`" pulumi-lang-python="`mcp_server`" pulumi-lang-yaml="`mcpServer`" pulumi-lang-java="`mcpServer`">`mcp_server`</span> in <span pulumi-lang-nodejs="`mcp`" pulumi-lang-dotnet="`Mcp`" pulumi-lang-go="`mcp`" pulumi-lang-python="`mcp`" pulumi-lang-yaml="`mcp`" pulumi-lang-java="`mcp`">`mcp`</span> block with no authorization, it should not be specified. See <span pulumi-lang-nodejs="`credentialProviderConfiguration`" pulumi-lang-dotnet="`CredentialProviderConfiguration`" pulumi-lang-go="`credentialProviderConfiguration`" pulumi-lang-python="`credential_provider_configuration`" pulumi-lang-yaml="`credentialProviderConfiguration`" pulumi-lang-java="`credentialProviderConfiguration`">`credential_provider_configuration`</span> below.
  final Input<AgentcoreGatewayTargetCredentialProviderConfiguration>?
      credentialProviderConfiguration;

  /// Description of the gateway target.
  final Input<String>? description;

  /// Identifier of the gateway that this target belongs to.
  final Input<String> gatewayIdentifier;

  /// Name of the gateway target.
  final Input<String>? name;

  /// AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  final Input<String>? region;

  /// Configuration for the target endpoint. See <span pulumi-lang-nodejs="`targetConfiguration`" pulumi-lang-dotnet="`TargetConfiguration`" pulumi-lang-go="`targetConfiguration`" pulumi-lang-python="`target_configuration`" pulumi-lang-yaml="`targetConfiguration`" pulumi-lang-java="`targetConfiguration`">`target_configuration`</span> below.
  ///
  /// The following arguments are optional:
  final Input<AgentcoreGatewayTargetTargetConfiguration> targetConfiguration;
  final Input<AgentcoreGatewayTargetTimeouts>? timeouts;

  AgentcoreGatewayTargetArgs({
    this.credentialProviderConfiguration,
    this.description,
    required this.gatewayIdentifier,
    this.name,
    this.region,
    required this.targetConfiguration,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialProviderConfigurationValue =
        credentialProviderConfiguration;
    if (credentialProviderConfigurationValue != null) {
      map['credentialProviderConfiguration'] = Input.mapOptionalInputValue<
              AgentcoreGatewayTargetCredentialProviderConfiguration,
              Map<String, dynamic>>(
          credentialProviderConfigurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['gatewayIdentifier'] = gatewayIdentifier;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetConfiguration'] = Input.mapInputValue<
        AgentcoreGatewayTargetTargetConfiguration,
        Map<String, dynamic>>(targetConfiguration, (value) => value.toMap());
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentcoreGatewayTargetTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreGatewayTargetArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetArgs(
      credentialProviderConfiguration: Input.asOptionalInput<
              AgentcoreGatewayTargetCredentialProviderConfiguration>(
          map['credentialProviderConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      gatewayIdentifier: Input.asInput<String>(map['gatewayIdentifier']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      targetConfiguration:
          Input.asInput<AgentcoreGatewayTargetTargetConfiguration>(
              map['targetConfiguration']),
      timeouts: Input.asOptionalInput<AgentcoreGatewayTargetTimeouts>(
          map['timeouts']),
    );
  }
}
