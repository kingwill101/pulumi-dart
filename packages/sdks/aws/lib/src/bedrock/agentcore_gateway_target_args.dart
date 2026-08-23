// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_credential_provider_configuration.dart';
import 'agentcore_gateway_target_metadata_configuration.dart';
import 'agentcore_gateway_target_private_endpoint.dart';
import 'agentcore_gateway_target_target_configuration.dart';
import 'agentcore_gateway_target_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_gateway_target_agentcore_gateway_target_args_doc}
/// The set of arguments for AgentcoreGatewayTarget.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_gateway_target_agentcore_gateway_target_args_doc}
class AgentcoreGatewayTargetArgs {
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `openApiSchema` and `smithyModel` in `mcp` block. If using `mcpServer` in `mcp` block with no authorization, it should not be specified. See `credentialProviderConfiguration` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfiguration>? credentialProviderConfiguration;
  /// Description of the gateway target.
  final pulumi.Input<String>? description;
  /// Identifier of the gateway that this target belongs to.
  final pulumi.Input<String> gatewayIdentifier;
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
  final pulumi.Input<AgentcoreGatewayTargetTargetConfiguration> targetConfiguration;
  final pulumi.Input<AgentcoreGatewayTargetTimeouts>? timeouts;

  /// Creates a new [AgentcoreGatewayTargetArgs].
  /// [credentialProviderConfiguration] Configuration for authenticating requests to the target. Required when using `lambda`, `openApiSchema` and `smithyModel` in `mcp` block. If using `mcpServer` in `mcp` block with no authorization, it should not be specified. See `credentialProviderConfiguration` below.
  /// [description] Description of the gateway target.
  /// [gatewayIdentifier] Identifier of the gateway that this target belongs to.
  /// [metadataConfiguration] Configuration for HTTP header and query parameter propagation between the gateway and target servers. See `metadataConfiguration` below.
  /// [name] Name of the gateway target.
  /// [privateEndpoint] Configuration for private connectivity from AgentCore Gateway to a resource inside your VPC. Traffic is routed through Amazon VPC Lattice and never traverses the public internet. See `privateEndpoint` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetConfiguration] Configuration for the target endpoint. See `targetConfiguration` below.
  /// [timeouts] Optional.
  const AgentcoreGatewayTargetArgs({
    this.credentialProviderConfiguration,
    this.description,
    required this.gatewayIdentifier,
    this.metadataConfiguration,
    this.name,
    this.privateEndpoint,
    this.region,
    required this.targetConfiguration,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfiguration, Map<String, dynamic>>(credentialProviderConfiguration, (value) => value.toMap()),
      'description': ?description,
      'gatewayIdentifier': gatewayIdentifier,
      'metadataConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetMetadataConfiguration, Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap()),
      'name': ?name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetPrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'region': ?region,
      'targetConfiguration': pulumi.Input.mapInputValue<AgentcoreGatewayTargetTargetConfiguration, Map<String, dynamic>>(targetConfiguration, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetArgs(
      credentialProviderConfiguration: (() { final guardedValue = map['credentialProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIdentifier: pulumi.Input.fromValue(map['gatewayIdentifier'] as String),
      metadataConfiguration: (() { final guardedValue = map['metadataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetConfiguration: pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfiguration.fromMap((map['targetConfiguration']! as Map).cast<String, dynamic>())),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
