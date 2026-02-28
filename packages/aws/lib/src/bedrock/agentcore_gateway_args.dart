// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration.dart';
import 'agentcore_gateway_interceptor_configuration.dart';
import 'agentcore_gateway_protocol_configuration.dart';
import 'agentcore_gateway_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_gateway_agentcore_gateway_args_doc}
/// The set of arguments for AgentcoreGateway.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_gateway_agentcore_gateway_args_doc}
class AgentcoreGatewayArgs {
  /// Configuration for request authorization. Required when `authorizer_type` is set to `CUSTOM_JWT`. See `authorizer_configuration` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfiguration>?
      authorizerConfiguration;

  /// Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, `authorizer_configuration` block is required.
  final pulumi.Input<String> authorizerType;

  /// Description of the gateway.
  final pulumi.Input<String>? description;

  /// Exception level for the gateway. Valid values: `INFO`, `WARN`, `ERROR`.
  final pulumi.Input<String>? exceptionLevel;

  /// List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See `interceptor_configuration` below.
  final pulumi.Input<List<AgentcoreGatewayInterceptorConfiguration>>?
      interceptorConfigurations;

  /// ARN of the KMS key used to encrypt the gateway data.
  final pulumi.Input<String>? kmsKeyArn;

  /// Name of the gateway.
  final pulumi.Input<String>? name;

  /// Protocol-specific configuration for the gateway. See `protocol_configuration` below.
  final pulumi.Input<AgentcoreGatewayProtocolConfiguration>?
      protocolConfiguration;

  /// Protocol type for the gateway. Valid values: `MCP`.
  final pulumi.Input<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the IAM role that the gateway assumes to access AWS services.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreGatewayTimeouts>? timeouts;

  /// Creates a new [AgentcoreGatewayArgs].
  /// [authorizerConfiguration] Configuration for request authorization. Required when `authorizer_type` is set to `CUSTOM_JWT`. See `authorizer_configuration` below.
  /// [authorizerType] Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, `authorizer_configuration` block is required.
  /// [description] Description of the gateway.
  /// [exceptionLevel] Exception level for the gateway. Valid values: `INFO`, `WARN`, `ERROR`.
  /// [interceptorConfigurations] List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See `interceptor_configuration` below.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the gateway data.
  /// [name] Name of the gateway.
  /// [protocolConfiguration] Protocol-specific configuration for the gateway. See `protocol_configuration` below.
  /// [protocolType] Protocol type for the gateway. Valid values: `MCP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that the gateway assumes to access AWS services.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentcoreGatewayArgs({
    AgentcoreGatewayAuthorizerConfiguration? authorizerConfiguration,
    required String authorizerType,
    String? description,
    String? exceptionLevel,
    List<AgentcoreGatewayInterceptorConfiguration>? interceptorConfigurations,
    String? kmsKeyArn,
    String? name,
    AgentcoreGatewayProtocolConfiguration? protocolConfiguration,
    required String protocolType,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
    AgentcoreGatewayTimeouts? timeouts,
  })  : authorizerConfiguration = pulumi.Input.asOptionalInput<
            AgentcoreGatewayAuthorizerConfiguration>(authorizerConfiguration),
        authorizerType = pulumi.Input.asInput<String>(authorizerType),
        description = pulumi.Input.asOptionalInput<String>(description),
        exceptionLevel = pulumi.Input.asOptionalInput<String>(exceptionLevel),
        interceptorConfigurations = pulumi.Input.asOptionalInput<
                List<AgentcoreGatewayInterceptorConfiguration>>(
            interceptorConfigurations),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        protocolConfiguration =
            pulumi.Input.asOptionalInput<AgentcoreGatewayProtocolConfiguration>(
                protocolConfiguration),
        protocolType = pulumi.Input.asInput<String>(protocolType),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<AgentcoreGatewayTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizerConfigurationValue = authorizerConfiguration;
    if (authorizerConfigurationValue != null) {
      map['authorizerConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentcoreGatewayAuthorizerConfiguration, Map<String, dynamic>>(
          authorizerConfigurationValue, (value) => value.toMap());
    }
    map['authorizerType'] = authorizerType;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final exceptionLevelValue = exceptionLevel;
    if (exceptionLevelValue != null) {
      map['exceptionLevel'] = exceptionLevelValue;
    }
    final interceptorConfigurationsValue = interceptorConfigurations;
    if (interceptorConfigurationsValue != null) {
      map['interceptorConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<AgentcoreGatewayInterceptorConfiguration>,
              List<Map<String, dynamic>>>(
          interceptorConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              AgentcoreGatewayInterceptorConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protocolConfigurationValue = protocolConfiguration;
    if (protocolConfigurationValue != null) {
      map['protocolConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentcoreGatewayProtocolConfiguration, Map<String, dynamic>>(
          protocolConfigurationValue, (value) => value.toMap());
    }
    map['protocolType'] = protocolType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreGatewayTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayArgs(
      authorizerConfiguration: map['authorizerConfiguration'] == null
          ? null
          : AgentcoreGatewayAuthorizerConfiguration.fromMap(
              (map['authorizerConfiguration'] as Map).cast<String, dynamic>()),
      authorizerType: map['authorizerType'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      exceptionLevel: map['exceptionLevel'] == null
          ? null
          : map['exceptionLevel'] as String,
      interceptorConfigurations: map['interceptorConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<AgentcoreGatewayInterceptorConfiguration>(
              map['interceptorConfigurations'],
              (value) => AgentcoreGatewayInterceptorConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocolConfiguration: map['protocolConfiguration'] == null
          ? null
          : AgentcoreGatewayProtocolConfiguration.fromMap(
              (map['protocolConfiguration'] as Map).cast<String, dynamic>()),
      protocolType: map['protocolType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : AgentcoreGatewayTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
