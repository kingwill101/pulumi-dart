import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_target_credential_provider_configuration/agentcore_gateway_target_credential_provider_configuration.dart';
import '../agentcore_gateway_target_target_configuration/agentcore_gateway_target_target_configuration.dart';
import '../agentcore_gateway_target_timeouts/agentcore_gateway_target_timeouts.dart';
import 'agentcore_gateway_target_args.dart';

/// Manages an AWS Bedrock AgentCore Gateway Target. Gateway targets define the endpoints and configurations that a gateway can invoke, such as Lambda functions or APIs, allowing agents to interact with external services through the Model Context Protocol (MCP).
///
/// ## Example Usage
///
/// ### Lambda Target with Gateway IAM Role
///
///
///
/// ### Target with API Key Authentication
///
///
///
/// ### Target with OAuth Authentication
///
///
///
/// ### Complex Schema with JSON Serialization
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Gateway Target using the gateway identifier and target ID separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreGatewayTarget:AgentcoreGatewayTarget example GATEWAY1234567890,TARGET0987654321
/// ```
class AgentcoreGatewayTarget extends pulumi.CustomResource {
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `open_api_schema` and `smithy_model` in `mcp` block. If using `mcp_server` in `mcp` block with no authorization, it should not be specified. See `credential_provider_configuration` below.
  late final pulumi
      .Output<AgentcoreGatewayTargetCredentialProviderConfiguration?>
      credentialProviderConfiguration;

  /// Description of the gateway target.
  late final pulumi.Output<String?> description;

  /// Identifier of the gateway that this target belongs to.
  late final pulumi.Output<String> gatewayIdentifier;

  /// Name of the gateway target.
  late final pulumi.Output<String> name;

  /// AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  late final pulumi.Output<String> region;

  /// Configuration for the target endpoint. See `target_configuration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreGatewayTargetTargetConfiguration>
      targetConfiguration;

  /// Unique identifier of the gateway target.
  late final pulumi.Output<String> targetId;
  late final pulumi.Output<AgentcoreGatewayTargetTimeouts?> timeouts;

  AgentcoreGatewayTarget(
    String name, {
    AgentcoreGatewayTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGatewayTarget:AgentcoreGatewayTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.credentialProviderConfiguration =
        registerOutput<AgentcoreGatewayTargetCredentialProviderConfiguration?>(
            'credentialProviderConfiguration');
    this.description = registerOutput<String?>('description');
    this.gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.targetConfiguration =
        registerOutput<AgentcoreGatewayTargetTargetConfiguration>(
            'targetConfiguration');
    this.targetId = registerOutput<String>('targetId');
    this.timeouts = registerOutput<AgentcoreGatewayTargetTimeouts?>('timeouts');
  }
}
