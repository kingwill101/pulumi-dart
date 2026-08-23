// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_credential_provider_configuration.dart';
import 'agentcore_gateway_target_metadata_configuration.dart';
import 'agentcore_gateway_target_private_endpoint.dart';
import 'agentcore_gateway_target_target_configuration.dart';
import 'agentcore_gateway_target_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreGatewayTarget resources.
class AgentcoreGatewayTargetState {
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `openApiSchema` and `smithyModel` in `mcp` block. If using `mcpServer` in `mcp` block with no authorization, it should not be specified. See `credentialProviderConfiguration` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfiguration>? credentialProviderConfiguration;
  /// Description of the gateway target.
  final pulumi.Input<String>? description;
  /// Identifier of the gateway that this target belongs to.
  final pulumi.Input<String>? gatewayIdentifier;
  /// Configuration for HTTP header and query parameter propagation between the gateway and target servers. See `metadataConfiguration` below.
  final pulumi.Input<AgentcoreGatewayTargetMetadataConfiguration>? metadataConfiguration;
  /// Name of the gateway target.
  final pulumi.Input<String>? name;
  /// Configuration for private connectivity from AgentCore Gateway to a resource inside your VPC. Traffic is routed through Amazon VPC Lattice and never traverses the public internet. See `privateEndpoint` below.
  final pulumi.Input<AgentcoreGatewayTargetPrivateEndpoint>? privateEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for the target endpoint. See `targetConfiguration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreGatewayTargetTargetConfiguration>? targetConfiguration;
  /// Unique identifier of the gateway target.
  final pulumi.Input<String>? targetId;
  final pulumi.Input<AgentcoreGatewayTargetTimeouts>? timeouts;

  /// Creates a new [AgentcoreGatewayTargetState].
  /// [credentialProviderConfiguration] Configuration for authenticating requests to the target. Required when using `lambda`, `openApiSchema` and `smithyModel` in `mcp` block. If using `mcpServer` in `mcp` block with no authorization, it should not be specified. See `credentialProviderConfiguration` below.
  /// [description] Description of the gateway target.
  /// [gatewayIdentifier] Identifier of the gateway that this target belongs to.
  /// [metadataConfiguration] Configuration for HTTP header and query parameter propagation between the gateway and target servers. See `metadataConfiguration` below.
  /// [name] Name of the gateway target.
  /// [privateEndpoint] Configuration for private connectivity from AgentCore Gateway to a resource inside your VPC. Traffic is routed through Amazon VPC Lattice and never traverses the public internet. See `privateEndpoint` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetConfiguration] Configuration for the target endpoint. See `targetConfiguration` below.
  /// [targetId] Unique identifier of the gateway target.
  /// [timeouts] Optional.
  const AgentcoreGatewayTargetState({
    this.credentialProviderConfiguration,
    this.description,
    this.gatewayIdentifier,
    this.metadataConfiguration,
    this.name,
    this.privateEndpoint,
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
      'metadataConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetMetadataConfiguration, Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap()),
      'name': ?name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetPrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'region': ?region,
      'targetConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTargetConfiguration, Map<String, dynamic>>(targetConfiguration, (value) => value.toMap()),
      'targetId': ?targetId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetState.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetState(
      credentialProviderConfiguration: (() { final guardedValue = map['credentialProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIdentifier: (() { final guardedValue = map['gatewayIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataConfiguration: (() { final guardedValue = map['metadataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetConfiguration: (() { final guardedValue = map['targetConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
