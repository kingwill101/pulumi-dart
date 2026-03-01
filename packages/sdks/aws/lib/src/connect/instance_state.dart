// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Amazon Resource Name (ARN) of the instance.
  final pulumi.Input<String>? arn;
  /// Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  final pulumi.Input<bool>? autoResolveBestVoicesEnabled;
  /// Specifies whether contact flow logs are enabled. Defaults to `false`.
  final pulumi.Input<bool>? contactFlowLogsEnabled;
  /// Specifies whether contact lens is enabled. Defaults to `true`.
  final pulumi.Input<bool>? contactLensEnabled;
  /// When the instance was created.
  final pulumi.Input<String>? createdTime;
  /// The identifier for the directory if identity_management_type is `EXISTING_DIRECTORY`.
  final pulumi.Input<String>? directoryId;
  /// Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  final pulumi.Input<bool>? earlyMediaEnabled;
  /// Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  final pulumi.Input<String>? identityManagementType;
  /// Specifies whether inbound calls are enabled.
  final pulumi.Input<bool>? inboundCallsEnabled;
  /// Specifies the name of the instance. Required if `directory_id` not specified.
  final pulumi.Input<String>? instanceAlias;
  /// Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  final pulumi.Input<bool>? multiPartyConferenceEnabled;
  /// Specifies whether outbound calls are enabled.
  final pulumi.Input<bool>? outboundCallsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The service role of the instance.
  final pulumi.Input<String>? serviceRole;
  /// The state of the instance.
  final pulumi.Input<String>? status;
  /// Tags to apply to the Instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// <!-- * `use_custom_tts_voices` - (Optional) Whether use custom tts voices is enabled. Defaults to `false` -->
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [InstanceState].
  /// [arn] Amazon Resource Name (ARN) of the instance.
  /// [autoResolveBestVoicesEnabled] Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  /// [contactFlowLogsEnabled] Specifies whether contact flow logs are enabled. Defaults to `false`.
  /// [contactLensEnabled] Specifies whether contact lens is enabled. Defaults to `true`.
  /// [createdTime] When the instance was created.
  /// [directoryId] The identifier for the directory if identity_management_type is `EXISTING_DIRECTORY`.
  /// [earlyMediaEnabled] Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  /// [identityManagementType] Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  /// [inboundCallsEnabled] Specifies whether inbound calls are enabled.
  /// [instanceAlias] Specifies the name of the instance. Required if `directory_id` not specified.
  /// [multiPartyConferenceEnabled] Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  /// [outboundCallsEnabled] Specifies whether outbound calls are enabled.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRole] The service role of the instance.
  /// [status] The state of the instance.
  /// [tags] Tags to apply to the Instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  InstanceState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoResolveBestVoicesEnabled,
    pulumi.Output<bool>? contactFlowLogsEnabled,
    pulumi.Output<bool>? contactLensEnabled,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? directoryId,
    pulumi.Output<bool>? earlyMediaEnabled,
    pulumi.Output<String>? identityManagementType,
    pulumi.Output<bool>? inboundCallsEnabled,
    pulumi.Output<String>? instanceAlias,
    pulumi.Output<bool>? multiPartyConferenceEnabled,
    pulumi.Output<bool>? outboundCallsEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceRole,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoResolveBestVoicesEnabled = pulumi.Input.asOptionalInput<bool>(autoResolveBestVoicesEnabled),
      contactFlowLogsEnabled = pulumi.Input.asOptionalInput<bool>(contactFlowLogsEnabled),
      contactLensEnabled = pulumi.Input.asOptionalInput<bool>(contactLensEnabled),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      earlyMediaEnabled = pulumi.Input.asOptionalInput<bool>(earlyMediaEnabled),
      identityManagementType = pulumi.Input.asOptionalInput<String>(identityManagementType),
      inboundCallsEnabled = pulumi.Input.asOptionalInput<bool>(inboundCallsEnabled),
      instanceAlias = pulumi.Input.asOptionalInput<String>(instanceAlias),
      multiPartyConferenceEnabled = pulumi.Input.asOptionalInput<bool>(multiPartyConferenceEnabled),
      outboundCallsEnabled = pulumi.Input.asOptionalInput<bool>(outboundCallsEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoResolveBestVoicesEnabled': ?autoResolveBestVoicesEnabled,
      'contactFlowLogsEnabled': ?contactFlowLogsEnabled,
      'contactLensEnabled': ?contactLensEnabled,
      'createdTime': ?createdTime,
      'directoryId': ?directoryId,
      'earlyMediaEnabled': ?earlyMediaEnabled,
      'identityManagementType': ?identityManagementType,
      'inboundCallsEnabled': ?inboundCallsEnabled,
      'instanceAlias': ?instanceAlias,
      'multiPartyConferenceEnabled': ?multiPartyConferenceEnabled,
      'outboundCallsEnabled': ?outboundCallsEnabled,
      'region': ?region,
      'serviceRole': ?serviceRole,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoResolveBestVoicesEnabled: map['autoResolveBestVoicesEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoResolveBestVoicesEnabled'] as bool),
      contactFlowLogsEnabled: map['contactFlowLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['contactFlowLogsEnabled'] as bool),
      contactLensEnabled: map['contactLensEnabled'] == null ? null : pulumi.Output.create<bool>(map['contactLensEnabled'] as bool),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      earlyMediaEnabled: map['earlyMediaEnabled'] == null ? null : pulumi.Output.create<bool>(map['earlyMediaEnabled'] as bool),
      identityManagementType: map['identityManagementType'] == null ? null : pulumi.Output.create<String>(map['identityManagementType'] as String),
      inboundCallsEnabled: map['inboundCallsEnabled'] == null ? null : pulumi.Output.create<bool>(map['inboundCallsEnabled'] as bool),
      instanceAlias: map['instanceAlias'] == null ? null : pulumi.Output.create<String>(map['instanceAlias'] as String),
      multiPartyConferenceEnabled: map['multiPartyConferenceEnabled'] == null ? null : pulumi.Output.create<bool>(map['multiPartyConferenceEnabled'] as bool),
      outboundCallsEnabled: map['outboundCallsEnabled'] == null ? null : pulumi.Output.create<bool>(map['outboundCallsEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceRole: map['serviceRole'] == null ? null : pulumi.Output.create<String>(map['serviceRole'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

