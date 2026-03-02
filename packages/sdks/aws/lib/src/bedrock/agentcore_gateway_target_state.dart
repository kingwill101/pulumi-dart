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
    this.credentialProviderConfiguration,
    this.description,
    this.gatewayIdentifier,
    this.name,
    this.region,
    this.targetConfiguration,
    this.targetId,
    this.timeouts,
  });

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
      credentialProviderConfiguration: map['credentialProviderConfiguration'] == null ? null : ((AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((map['credentialProviderConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      gatewayIdentifier: map['gatewayIdentifier'] == null ? null : ((map['gatewayIdentifier'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      targetConfiguration: map['targetConfiguration'] == null ? null : ((AgentcoreGatewayTargetTargetConfiguration.fromMap((map['targetConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      targetId: map['targetId'] == null ? null : ((map['targetId'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentcoreGatewayTargetTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

