// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_credential_provider_configuration.dart';
import 'agentcore_gateway_target_target_configuration.dart';
import 'agentcore_gateway_target_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreGatewayTarget resources.
class AgentcoreGatewayTargetState {
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `open_api_schema` and `smithy_model` in `mcp` block. If using `mcp_server` in `mcp` block with no authorization, it should not be specified. See `credential_provider_configuration` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfiguration>? credentialProviderConfiguration;
  /// Description of the gateway target.
  final pulumi.Input<String>? description;
  /// Identifier of the gateway that this target belongs to.
  final pulumi.Input<String>? gatewayIdentifier;
  /// Name of the gateway target.
  final pulumi.Input<String>? name;
  /// AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  final pulumi.Input<String>? region;
  /// Configuration for the target endpoint. See `target_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreGatewayTargetTargetConfiguration>? targetConfiguration;
  /// Unique identifier of the gateway target.
  final pulumi.Input<String>? targetId;
  final pulumi.Input<AgentcoreGatewayTargetTimeouts>? timeouts;

  /// Creates a new [AgentcoreGatewayTargetState].
  /// [credentialProviderConfiguration] Configuration for authenticating requests to the target. Required when using `lambda`, `open_api_schema` and `smithy_model` in `mcp` block. If using `mcp_server` in `mcp` block with no authorization, it should not be specified. See `credential_provider_configuration` below.
  /// [description] Description of the gateway target.
  /// [gatewayIdentifier] Identifier of the gateway that this target belongs to.
  /// [name] Name of the gateway target.
  /// [region] AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  /// [targetConfiguration] Configuration for the target endpoint. See `target_configuration` below.
  /// [targetId] Unique identifier of the gateway target.
  /// [timeouts] Optional.
  AgentcoreGatewayTargetState({
    pulumi.Output<AgentcoreGatewayTargetCredentialProviderConfiguration>? credentialProviderConfiguration,
    pulumi.Output<String>? description,
    pulumi.Output<String>? gatewayIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<AgentcoreGatewayTargetTargetConfiguration>? targetConfiguration,
    pulumi.Output<String>? targetId,
    pulumi.Output<AgentcoreGatewayTargetTimeouts>? timeouts,
  }) :
      credentialProviderConfiguration = pulumi.Input.asOptionalInput<AgentcoreGatewayTargetCredentialProviderConfiguration>(credentialProviderConfiguration),
      description = pulumi.Input.asOptionalInput<String>(description),
      gatewayIdentifier = pulumi.Input.asOptionalInput<String>(gatewayIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetConfiguration = pulumi.Input.asOptionalInput<AgentcoreGatewayTargetTargetConfiguration>(targetConfiguration),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreGatewayTargetTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfiguration, Map<String, dynamic>>(credentialProviderConfiguration, (value) => value.toMap()),
      'description': ?description,
      'gatewayIdentifier': ?gatewayIdentifier,
      'name': ?name,
      'region': ?region,
      'targetConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfiguration, Map<String, dynamic>>(targetConfiguration, (value) => value.toMap()),
      'targetId': ?targetId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetState.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetState(
      credentialProviderConfiguration: map['credentialProviderConfiguration'] == null ? null : pulumi.Output.create<AgentcoreGatewayTargetCredentialProviderConfiguration>(AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((map['credentialProviderConfiguration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gatewayIdentifier: map['gatewayIdentifier'] == null ? null : pulumi.Output.create<String>(map['gatewayIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetConfiguration: map['targetConfiguration'] == null ? null : pulumi.Output.create<AgentcoreGatewayTargetTargetConfiguration>(AgentcoreGatewayTargetTargetConfiguration.fromMap((map['targetConfiguration'] as Map).cast<String, dynamic>())),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreGatewayTargetTimeouts>(AgentcoreGatewayTargetTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

