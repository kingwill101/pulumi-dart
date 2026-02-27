// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Instance.
class InstanceArgs {
  /// Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  final Input<bool>? autoResolveBestVoicesEnabled;

  /// Specifies whether contact flow logs are enabled. Defaults to `false`.
  final Input<bool>? contactFlowLogsEnabled;

  /// Specifies whether contact lens is enabled. Defaults to `true`.
  final Input<bool>? contactLensEnabled;

  /// The identifier for the directory if identity_management_type is `EXISTING_DIRECTORY`.
  final Input<String>? directoryId;

  /// Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  final Input<bool>? earlyMediaEnabled;

  /// Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  final Input<String> identityManagementType;

  /// Specifies whether inbound calls are enabled.
  final Input<bool> inboundCallsEnabled;

  /// Specifies the name of the instance. Required if `directory_id` not specified.
  final Input<String>? instanceAlias;

  /// Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  final Input<bool>? multiPartyConferenceEnabled;

  /// Specifies whether outbound calls are enabled.
  final Input<bool> outboundCallsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// <!-- * `use_custom_tts_voices` - (Optional) Whether use custom tts voices is enabled. Defaults to `false` -->
  final Input<Map<String, String>>? tags;

  InstanceArgs({
    this.autoResolveBestVoicesEnabled,
    this.contactFlowLogsEnabled,
    this.contactLensEnabled,
    this.directoryId,
    this.earlyMediaEnabled,
    required this.identityManagementType,
    required this.inboundCallsEnabled,
    this.instanceAlias,
    this.multiPartyConferenceEnabled,
    required this.outboundCallsEnabled,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoResolveBestVoicesEnabledValue = autoResolveBestVoicesEnabled;
    if (autoResolveBestVoicesEnabledValue != null) {
      map['autoResolveBestVoicesEnabled'] = autoResolveBestVoicesEnabledValue;
    }
    final contactFlowLogsEnabledValue = contactFlowLogsEnabled;
    if (contactFlowLogsEnabledValue != null) {
      map['contactFlowLogsEnabled'] = contactFlowLogsEnabledValue;
    }
    final contactLensEnabledValue = contactLensEnabled;
    if (contactLensEnabledValue != null) {
      map['contactLensEnabled'] = contactLensEnabledValue;
    }
    final directoryIdValue = directoryId;
    if (directoryIdValue != null) {
      map['directoryId'] = directoryIdValue;
    }
    final earlyMediaEnabledValue = earlyMediaEnabled;
    if (earlyMediaEnabledValue != null) {
      map['earlyMediaEnabled'] = earlyMediaEnabledValue;
    }
    map['identityManagementType'] = identityManagementType;
    map['inboundCallsEnabled'] = inboundCallsEnabled;
    final instanceAliasValue = instanceAlias;
    if (instanceAliasValue != null) {
      map['instanceAlias'] = instanceAliasValue;
    }
    final multiPartyConferenceEnabledValue = multiPartyConferenceEnabled;
    if (multiPartyConferenceEnabledValue != null) {
      map['multiPartyConferenceEnabled'] = multiPartyConferenceEnabledValue;
    }
    map['outboundCallsEnabled'] = outboundCallsEnabled;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoResolveBestVoicesEnabled:
          Input.asOptionalInput<bool>(map['autoResolveBestVoicesEnabled']),
      contactFlowLogsEnabled:
          Input.asOptionalInput<bool>(map['contactFlowLogsEnabled']),
      contactLensEnabled:
          Input.asOptionalInput<bool>(map['contactLensEnabled']),
      directoryId: Input.asOptionalInput<String>(map['directoryId']),
      earlyMediaEnabled: Input.asOptionalInput<bool>(map['earlyMediaEnabled']),
      identityManagementType:
          Input.asInput<String>(map['identityManagementType']),
      inboundCallsEnabled: Input.asInput<bool>(map['inboundCallsEnabled']),
      instanceAlias: Input.asOptionalInput<String>(map['instanceAlias']),
      multiPartyConferenceEnabled:
          Input.asOptionalInput<bool>(map['multiPartyConferenceEnabled']),
      outboundCallsEnabled: Input.asInput<bool>(map['outboundCallsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
