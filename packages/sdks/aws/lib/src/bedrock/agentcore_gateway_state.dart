// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration.dart';
import 'agentcore_gateway_interceptor_configuration.dart';
import 'agentcore_gateway_protocol_configuration.dart';
import 'agentcore_gateway_timeouts.dart';
import 'agentcore_gateway_workload_identity_detail.dart';

/// Input properties used for looking up and filtering AgentcoreGateway resources.
class AgentcoreGatewayState {
  /// Configuration for request authorization. Required when `authorizer_type` is set to `CUSTOM_JWT`. See `authorizer_configuration` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfiguration>? authorizerConfiguration;
  /// Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, `authorizer_configuration` block is required.
  final pulumi.Input<String>? authorizerType;
  /// Description of the gateway.
  final pulumi.Input<String>? description;
  /// Exception level for the gateway. Valid values: `INFO`, `WARN`, `ERROR`.
  final pulumi.Input<String>? exceptionLevel;
  /// ARN of the Gateway.
  final pulumi.Input<String>? gatewayArn;
  /// Unique identifier of the Gateway.
  final pulumi.Input<String>? gatewayId;
  /// URL endpoint for the gateway.
  final pulumi.Input<String>? gatewayUrl;
  /// List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See `interceptor_configuration` below.
  final pulumi.Input<List<AgentcoreGatewayInterceptorConfiguration>>? interceptorConfigurations;
  /// ARN of the KMS key used to encrypt the gateway data.
  final pulumi.Input<String>? kmsKeyArn;
  /// Name of the gateway.
  final pulumi.Input<String>? name;
  /// Protocol-specific configuration for the gateway. See `protocol_configuration` below.
  final pulumi.Input<AgentcoreGatewayProtocolConfiguration>? protocolConfiguration;
  /// Protocol type for the gateway. Valid values: `MCP`.
  final pulumi.Input<String>? protocolType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role that the gateway assumes to access AWS services.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? roleArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreGatewayTimeouts>? timeouts;
  /// Workload identity details for the gateway. See `workload_identity_details` below.
  final pulumi.Input<List<AgentcoreGatewayWorkloadIdentityDetail>>? workloadIdentityDetails;

  /// Creates a new [AgentcoreGatewayState].
  /// [authorizerConfiguration] Configuration for request authorization. Required when `authorizer_type` is set to `CUSTOM_JWT`. See `authorizer_configuration` below.
  /// [authorizerType] Type of authorizer to use. Valid values: `CUSTOM_JWT`, `AWS_IAM`. When set to `CUSTOM_JWT`, `authorizer_configuration` block is required.
  /// [description] Description of the gateway.
  /// [exceptionLevel] Exception level for the gateway. Valid values: `INFO`, `WARN`, `ERROR`.
  /// [gatewayArn] ARN of the Gateway.
  /// [gatewayId] Unique identifier of the Gateway.
  /// [gatewayUrl] URL endpoint for the gateway.
  /// [interceptorConfigurations] List of interceptor configurations for the gateway. Minimum of 1, maximum of 2. See `interceptor_configuration` below.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the gateway data.
  /// [name] Name of the gateway.
  /// [protocolConfiguration] Protocol-specific configuration for the gateway. See `protocol_configuration` below.
  /// [protocolType] Protocol type for the gateway. Valid values: `MCP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that the gateway assumes to access AWS services.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [workloadIdentityDetails] Workload identity details for the gateway. See `workload_identity_details` below.
  AgentcoreGatewayState({
    this.authorizerConfiguration,
    this.authorizerType,
    this.description,
    this.exceptionLevel,
    this.gatewayArn,
    this.gatewayId,
    this.gatewayUrl,
    this.interceptorConfigurations,
    this.kmsKeyArn,
    this.name,
    this.protocolConfiguration,
    this.protocolType,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.workloadIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayAuthorizerConfiguration, Map<String, dynamic>>(authorizerConfiguration, (value) => value.toMap()),
      'authorizerType': ?authorizerType,
      'description': ?description,
      'exceptionLevel': ?exceptionLevel,
      'gatewayArn': ?gatewayArn,
      'gatewayId': ?gatewayId,
      'gatewayUrl': ?gatewayUrl,
      'interceptorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayInterceptorConfiguration>, List<Map<String, dynamic>>>(interceptorConfigurations, (value) => pulumi.Input.encodeList<AgentcoreGatewayInterceptorConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'protocolConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayProtocolConfiguration, Map<String, dynamic>>(protocolConfiguration, (value) => value.toMap()),
      'protocolType': ?protocolType,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workloadIdentityDetails': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayWorkloadIdentityDetail>, List<Map<String, dynamic>>>(workloadIdentityDetails, (value) => pulumi.Input.encodeList<AgentcoreGatewayWorkloadIdentityDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreGatewayState.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayState(
      authorizerConfiguration: map['authorizerConfiguration'] == null ? null : (AgentcoreGatewayAuthorizerConfiguration.fromMap((map['authorizerConfiguration'] as Map).cast<String, dynamic>())).input(),
      authorizerType: map['authorizerType'] == null ? null : (map['authorizerType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      exceptionLevel: map['exceptionLevel'] == null ? null : (map['exceptionLevel'] as String).input(),
      gatewayArn: map['gatewayArn'] == null ? null : (map['gatewayArn'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      gatewayUrl: map['gatewayUrl'] == null ? null : (map['gatewayUrl'] as String).input(),
      interceptorConfigurations: map['interceptorConfigurations'] == null ? null : (pulumi.Input.decodeList<AgentcoreGatewayInterceptorConfiguration>(map['interceptorConfigurations'], (value) => AgentcoreGatewayInterceptorConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocolConfiguration: map['protocolConfiguration'] == null ? null : (AgentcoreGatewayProtocolConfiguration.fromMap((map['protocolConfiguration'] as Map).cast<String, dynamic>())).input(),
      protocolType: map['protocolType'] == null ? null : (map['protocolType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (AgentcoreGatewayTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      workloadIdentityDetails: map['workloadIdentityDetails'] == null ? null : (pulumi.Input.decodeList<AgentcoreGatewayWorkloadIdentityDetail>(map['workloadIdentityDetails'], (value) => AgentcoreGatewayWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

