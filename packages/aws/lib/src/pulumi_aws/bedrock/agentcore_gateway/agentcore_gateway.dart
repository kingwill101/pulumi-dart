import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_authorizer_configuration/agentcore_gateway_authorizer_configuration.dart';
import '../agentcore_gateway_interceptor_configuration/agentcore_gateway_interceptor_configuration.dart';
import '../agentcore_gateway_protocol_configuration/agentcore_gateway_protocol_configuration.dart';
import '../agentcore_gateway_timeouts/agentcore_gateway_timeouts.dart';
import '../agentcore_gateway_workload_identity_detail/agentcore_gateway_workload_identity_detail.dart';
import 'agentcore_gateway_args.dart';

/// Manages an AWS Bedrock AgentCore Gateway. With Gateway, developers can convert APIs, Lambda functions, and existing services into Model Context Protocol (MCP)-compatible tools.
///
/// ## Example Usage
///
/// ### Gateway with JWT Authorization
///
///
///
/// ### Gateway with advanced JWT Authorization and MCP Configuration
///
///
///
/// ### Gateway with Interceptor Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Gateway using the gateway ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreGateway:AgentcoreGateway example GATEWAY1234567890
/// ```
class AgentcoreGateway extends pulumi.CustomResource {
  /// Configuration for request authorization. Required when `authorizer_type` is set to `CUSTOM_JWT`. See `authorizer_configuration` below.
  late final pulumi.Output<AgentcoreGatewayAuthorizerConfiguration?>
      authorizerConfiguration;

  /// Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, `authorizer_configuration` block is required.
  late final pulumi.Output<String> authorizerType;

  /// Description of the gateway.
  late final pulumi.Output<String?> description;

  /// Exception level for the gateway. Valid values: `INFO`, `WARN`, `ERROR`.
  late final pulumi.Output<String?> exceptionLevel;

  /// ARN of the Gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Unique identifier of the Gateway.
  late final pulumi.Output<String> gatewayId;

  /// URL endpoint for the gateway.
  late final pulumi.Output<String> gatewayUrl;

  /// List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See `interceptor_configuration` below.
  late final pulumi.Output<List<AgentcoreGatewayInterceptorConfiguration>?>
      interceptorConfigurations;

  /// ARN of the KMS key used to encrypt the gateway data.
  late final pulumi.Output<String?> kmsKeyArn;

  /// Name of the gateway.
  late final pulumi.Output<String> name;

  /// Protocol-specific configuration for the gateway. See `protocol_configuration` below.
  late final pulumi.Output<AgentcoreGatewayProtocolConfiguration?>
      protocolConfiguration;

  /// Protocol type for the gateway. Valid values: `MCP`.
  late final pulumi.Output<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the IAM role that the gateway assumes to access AWS services.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreGatewayTimeouts?> timeouts;

  /// Workload identity details for the gateway. See `workload_identity_details` below.
  late final pulumi.Output<List<AgentcoreGatewayWorkloadIdentityDetail>>
      workloadIdentityDetails;

  AgentcoreGateway(
    String name, {
    AgentcoreGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGateway:AgentcoreGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizerConfiguration =
        registerOutput<AgentcoreGatewayAuthorizerConfiguration?>(
            'authorizerConfiguration');
    this.authorizerType = registerOutput<String>('authorizerType');
    this.description = registerOutput<String?>('description');
    this.exceptionLevel = registerOutput<String?>('exceptionLevel');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.gatewayUrl = registerOutput<String>('gatewayUrl');
    this.interceptorConfigurations =
        registerOutput<List<AgentcoreGatewayInterceptorConfiguration>?>(
            'interceptorConfigurations');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.protocolConfiguration =
        registerOutput<AgentcoreGatewayProtocolConfiguration?>(
            'protocolConfiguration');
    this.protocolType = registerOutput<String>('protocolType');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreGatewayTimeouts?>('timeouts');
    this.workloadIdentityDetails =
        registerOutput<List<AgentcoreGatewayWorkloadIdentityDetail>>(
            'workloadIdentityDetails');
  }
}
