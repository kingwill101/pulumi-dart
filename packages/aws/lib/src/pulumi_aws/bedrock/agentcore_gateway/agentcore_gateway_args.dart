// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_gateway_authorizer_configuration/agentcore_gateway_authorizer_configuration.dart';
import '../agentcore_gateway_interceptor_configuration/agentcore_gateway_interceptor_configuration.dart';
import '../agentcore_gateway_protocol_configuration/agentcore_gateway_protocol_configuration.dart';
import '../agentcore_gateway_timeouts/agentcore_gateway_timeouts.dart';

/// The set of arguments for AgentcoreGateway.
class AgentcoreGatewayArgs {
  /// Configuration for request authorization. Required when <span pulumi-lang-nodejs="`authorizerType`" pulumi-lang-dotnet="`AuthorizerType`" pulumi-lang-go="`authorizerType`" pulumi-lang-python="`authorizer_type`" pulumi-lang-yaml="`authorizerType`" pulumi-lang-java="`authorizerType`">`authorizer_type`</span> is set to `CUSTOM_JWT`. See <span pulumi-lang-nodejs="`authorizerConfiguration`" pulumi-lang-dotnet="`AuthorizerConfiguration`" pulumi-lang-go="`authorizerConfiguration`" pulumi-lang-python="`authorizer_configuration`" pulumi-lang-yaml="`authorizerConfiguration`" pulumi-lang-java="`authorizerConfiguration`">`authorizer_configuration`</span> below.
  final Input<AgentcoreGatewayAuthorizerConfiguration>? authorizerConfiguration;

  /// Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, <span pulumi-lang-nodejs="`authorizerConfiguration`" pulumi-lang-dotnet="`AuthorizerConfiguration`" pulumi-lang-go="`authorizerConfiguration`" pulumi-lang-python="`authorizer_configuration`" pulumi-lang-yaml="`authorizerConfiguration`" pulumi-lang-java="`authorizerConfiguration`">`authorizer_configuration`</span> block is required.
  final Input<String> authorizerType;

  /// Description of the gateway.
  final Input<String>? description;

  /// Exception level for the gateway. Valid values: `INFO`, `WARN`, `ERROR`.
  final Input<String>? exceptionLevel;

  /// List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See <span pulumi-lang-nodejs="`interceptorConfiguration`" pulumi-lang-dotnet="`InterceptorConfiguration`" pulumi-lang-go="`interceptorConfiguration`" pulumi-lang-python="`interceptor_configuration`" pulumi-lang-yaml="`interceptorConfiguration`" pulumi-lang-java="`interceptorConfiguration`">`interceptor_configuration`</span> below.
  final Input<List<AgentcoreGatewayInterceptorConfiguration>>?
      interceptorConfigurations;

  /// ARN of the KMS key used to encrypt the gateway data.
  final Input<String>? kmsKeyArn;

  /// Name of the gateway.
  final Input<String>? name;

  /// Protocol-specific configuration for the gateway. See <span pulumi-lang-nodejs="`protocolConfiguration`" pulumi-lang-dotnet="`ProtocolConfiguration`" pulumi-lang-go="`protocolConfiguration`" pulumi-lang-python="`protocol_configuration`" pulumi-lang-yaml="`protocolConfiguration`" pulumi-lang-java="`protocolConfiguration`">`protocol_configuration`</span> below.
  final Input<AgentcoreGatewayProtocolConfiguration>? protocolConfiguration;

  /// Protocol type for the gateway. Valid values: `MCP`.
  final Input<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role that the gateway assumes to access AWS services.
  ///
  /// The following arguments are optional:
  final Input<String> roleArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentcoreGatewayTimeouts>? timeouts;

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
      map['authorizerConfiguration'] = Input.mapOptionalInputValue<
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
      map['interceptorConfigurations'] = Input.mapOptionalInputValue<
              List<AgentcoreGatewayInterceptorConfiguration>,
              List<Map<String, dynamic>>>(
          interceptorConfigurationsValue,
          (value) => Input.encodeList<AgentcoreGatewayInterceptorConfiguration,
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
      map['protocolConfiguration'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<AgentcoreGatewayTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayArgs(
      authorizerConfiguration:
          Input.asOptionalInput<AgentcoreGatewayAuthorizerConfiguration>(
              map['authorizerConfiguration']),
      authorizerType: Input.asInput<String>(map['authorizerType']),
      description: Input.asOptionalInput<String>(map['description']),
      exceptionLevel: Input.asOptionalInput<String>(map['exceptionLevel']),
      interceptorConfigurations:
          Input.asOptionalInput<List<AgentcoreGatewayInterceptorConfiguration>>(
              map['interceptorConfigurations']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      protocolConfiguration:
          Input.asOptionalInput<AgentcoreGatewayProtocolConfiguration>(
              map['protocolConfiguration']),
      protocolType: Input.asInput<String>(map['protocolType']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<AgentcoreGatewayTimeouts>(map['timeouts']),
    );
  }
}
