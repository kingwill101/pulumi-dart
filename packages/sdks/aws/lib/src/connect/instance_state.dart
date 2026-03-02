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
    this.arn,
    this.autoResolveBestVoicesEnabled,
    this.contactFlowLogsEnabled,
    this.contactLensEnabled,
    this.createdTime,
    this.directoryId,
    this.earlyMediaEnabled,
    this.identityManagementType,
    this.inboundCallsEnabled,
    this.instanceAlias,
    this.multiPartyConferenceEnabled,
    this.outboundCallsEnabled,
    this.region,
    this.serviceRole,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoResolveBestVoicesEnabled: map['autoResolveBestVoicesEnabled'] == null ? null : (map['autoResolveBestVoicesEnabled'] as bool).input(),
      contactFlowLogsEnabled: map['contactFlowLogsEnabled'] == null ? null : (map['contactFlowLogsEnabled'] as bool).input(),
      contactLensEnabled: map['contactLensEnabled'] == null ? null : (map['contactLensEnabled'] as bool).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      directoryId: map['directoryId'] == null ? null : (map['directoryId'] as String).input(),
      earlyMediaEnabled: map['earlyMediaEnabled'] == null ? null : (map['earlyMediaEnabled'] as bool).input(),
      identityManagementType: map['identityManagementType'] == null ? null : (map['identityManagementType'] as String).input(),
      inboundCallsEnabled: map['inboundCallsEnabled'] == null ? null : (map['inboundCallsEnabled'] as bool).input(),
      instanceAlias: map['instanceAlias'] == null ? null : (map['instanceAlias'] as String).input(),
      multiPartyConferenceEnabled: map['multiPartyConferenceEnabled'] == null ? null : (map['multiPartyConferenceEnabled'] as bool).input(),
      outboundCallsEnabled: map['outboundCallsEnabled'] == null ? null : (map['outboundCallsEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceRole: map['serviceRole'] == null ? null : (map['serviceRole'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

