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
    pulumi.Output<AgentcoreGatewayAuthorizerConfiguration>? authorizerConfiguration,
    pulumi.Output<String>? authorizerType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? exceptionLevel,
    pulumi.Output<String>? gatewayArn,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? gatewayUrl,
    pulumi.Output<List<AgentcoreGatewayInterceptorConfiguration>>? interceptorConfigurations,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<AgentcoreGatewayProtocolConfiguration>? protocolConfiguration,
    pulumi.Output<String>? protocolType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentcoreGatewayTimeouts>? timeouts,
    pulumi.Output<List<AgentcoreGatewayWorkloadIdentityDetail>>? workloadIdentityDetails,
  }) :
      authorizerConfiguration = pulumi.Input.asOptionalInput<AgentcoreGatewayAuthorizerConfiguration>(authorizerConfiguration),
      authorizerType = pulumi.Input.asOptionalInput<String>(authorizerType),
      description = pulumi.Input.asOptionalInput<String>(description),
      exceptionLevel = pulumi.Input.asOptionalInput<String>(exceptionLevel),
      gatewayArn = pulumi.Input.asOptionalInput<String>(gatewayArn),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      gatewayUrl = pulumi.Input.asOptionalInput<String>(gatewayUrl),
      interceptorConfigurations = pulumi.Input.asOptionalInput<List<AgentcoreGatewayInterceptorConfiguration>>(interceptorConfigurations),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocolConfiguration = pulumi.Input.asOptionalInput<AgentcoreGatewayProtocolConfiguration>(protocolConfiguration),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreGatewayTimeouts>(timeouts),
      workloadIdentityDetails = pulumi.Input.asOptionalInput<List<AgentcoreGatewayWorkloadIdentityDetail>>(workloadIdentityDetails);

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
      authorizerConfiguration: map['authorizerConfiguration'] == null ? null : pulumi.Output.create<AgentcoreGatewayAuthorizerConfiguration>(AgentcoreGatewayAuthorizerConfiguration.fromMap((map['authorizerConfiguration'] as Map).cast<String, dynamic>())),
      authorizerType: map['authorizerType'] == null ? null : pulumi.Output.create<String>(map['authorizerType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exceptionLevel: map['exceptionLevel'] == null ? null : pulumi.Output.create<String>(map['exceptionLevel'] as String),
      gatewayArn: map['gatewayArn'] == null ? null : pulumi.Output.create<String>(map['gatewayArn'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      gatewayUrl: map['gatewayUrl'] == null ? null : pulumi.Output.create<String>(map['gatewayUrl'] as String),
      interceptorConfigurations: map['interceptorConfigurations'] == null ? null : pulumi.Output.create<List<AgentcoreGatewayInterceptorConfiguration>>(pulumi.Input.decodeList<AgentcoreGatewayInterceptorConfiguration>(map['interceptorConfigurations'], (value) => AgentcoreGatewayInterceptorConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocolConfiguration: map['protocolConfiguration'] == null ? null : pulumi.Output.create<AgentcoreGatewayProtocolConfiguration>(AgentcoreGatewayProtocolConfiguration.fromMap((map['protocolConfiguration'] as Map).cast<String, dynamic>())),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreGatewayTimeouts>(AgentcoreGatewayTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      workloadIdentityDetails: map['workloadIdentityDetails'] == null ? null : pulumi.Output.create<List<AgentcoreGatewayWorkloadIdentityDetail>>(pulumi.Input.decodeList<AgentcoreGatewayWorkloadIdentityDetail>(map['workloadIdentityDetails'], (value) => AgentcoreGatewayWorkloadIdentityDetail.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

