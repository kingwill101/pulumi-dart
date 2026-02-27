// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_authorizer_configuration/agentcore_gateway_authorizer_configuration.dart';
import '../agentcore_gateway_interceptor_configuration/agentcore_gateway_interceptor_configuration.dart';
import '../agentcore_gateway_protocol_configuration/agentcore_gateway_protocol_configuration.dart';
import '../agentcore_gateway_timeouts/agentcore_gateway_timeouts.dart';

/// The set of arguments for AgentcoreGateway.
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

  AgentcoreGatewayArgs({
    this.authorizerConfiguration,
    required this.authorizerType,
    this.description,
    this.exceptionLevel,
    this.interceptorConfigurations,
    this.kmsKeyArn,
    this.name,
    this.protocolConfiguration,
    required this.protocolType,
    this.region,
    required this.roleArn,
    this.tags,
    this.timeouts,
  });

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
      authorizerConfiguration:
          pulumi.Input.asOptionalInput<AgentcoreGatewayAuthorizerConfiguration>(
              map['authorizerConfiguration']),
      authorizerType: pulumi.Input.asInput<String>(map['authorizerType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      exceptionLevel:
          pulumi.Input.asOptionalInput<String>(map['exceptionLevel']),
      interceptorConfigurations: pulumi.Input.asOptionalInput<
              List<AgentcoreGatewayInterceptorConfiguration>>(
          map['interceptorConfigurations']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      protocolConfiguration:
          pulumi.Input.asOptionalInput<AgentcoreGatewayProtocolConfiguration>(
              map['protocolConfiguration']),
      protocolType: pulumi.Input.asInput<String>(map['protocolType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<AgentcoreGatewayTimeouts>(
          map['timeouts']),
    );
  }
}
