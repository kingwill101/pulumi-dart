// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_connect_instance_instance_args_doc}
class InstanceArgs {
  /// Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? autoResolveBestVoicesEnabled;
  /// Specifies whether contact flow logs are enabled. Defaults to `false`.
  final pulumi.Input<bool?>? contactFlowLogsEnabled;
  /// Specifies whether contact lens is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? contactLensEnabled;
  /// The identifier for the directory if identityManagementType is `EXISTING_DIRECTORY`.
  final pulumi.Input<String?>? directoryId;
  /// Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  final pulumi.Input<bool?>? earlyMediaEnabled;
  /// Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  final pulumi.Input<String> identityManagementType;
  /// Specifies whether inbound calls are enabled.
  final pulumi.Input<bool> inboundCallsEnabled;
  /// Specifies the name of the instance. Required if `directoryId` not specified.
  final pulumi.Input<String?>? instanceAlias;
  /// Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? multiPartyConferenceEnabled;
  /// Specifies whether outbound calls are enabled.
  final pulumi.Input<bool> outboundCallsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Tags to apply to the Instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// &lt;!-- * `useCustomTtsVoices` - (Optional) Whether use custom tts voices is enabled. Defaults to `false` --&gt;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [InstanceArgs].
  /// [autoResolveBestVoicesEnabled] Specifies whether auto resolve best voices is enabled. Defaults to `true`.
  /// [contactFlowLogsEnabled] Specifies whether contact flow logs are enabled. Defaults to `false`.
  /// [contactLensEnabled] Specifies whether contact lens is enabled. Defaults to `true`.
  /// [directoryId] The identifier for the directory if identityManagementType is `EXISTING_DIRECTORY`.
  /// [earlyMediaEnabled] Specifies whether early media for outbound calls is enabled . Defaults to `true` if outbound calls is enabled.
  /// [identityManagementType] Specifies the identity management type attached to the instance. Allowed Values are: `SAML`, `CONNECT_MANAGED`, `EXISTING_DIRECTORY`.
  /// [inboundCallsEnabled] Specifies whether inbound calls are enabled.
  /// [instanceAlias] Specifies the name of the instance. Required if `directoryId` not specified.
  /// [multiPartyConferenceEnabled] Specifies whether multi-party calls/conference is enabled. Defaults to `false`.
  /// [outboundCallsEnabled] Specifies whether outbound calls are enabled.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const InstanceArgs({
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
    return <String, dynamic>{
      'autoResolveBestVoicesEnabled': ?autoResolveBestVoicesEnabled,
      'contactFlowLogsEnabled': ?contactFlowLogsEnabled,
      'contactLensEnabled': ?contactLensEnabled,
      'directoryId': ?directoryId,
      'earlyMediaEnabled': ?earlyMediaEnabled,
      'identityManagementType': identityManagementType,
      'inboundCallsEnabled': inboundCallsEnabled,
      'instanceAlias': ?instanceAlias,
      'multiPartyConferenceEnabled': ?multiPartyConferenceEnabled,
      'outboundCallsEnabled': outboundCallsEnabled,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoResolveBestVoicesEnabled: (() { final guardedValue = map['autoResolveBestVoicesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contactFlowLogsEnabled: (() { final guardedValue = map['contactFlowLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contactLensEnabled: (() { final guardedValue = map['contactLensEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyMediaEnabled: (() { final guardedValue = map['earlyMediaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityManagementType: pulumi.Input.fromValue(map['identityManagementType'] as String),
      inboundCallsEnabled: pulumi.Input.fromValue(map['inboundCallsEnabled'] as bool),
      instanceAlias: (() { final guardedValue = map['instanceAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiPartyConferenceEnabled: (() { final guardedValue = map['multiPartyConferenceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outboundCallsEnabled: pulumi.Input.fromValue(map['outboundCallsEnabled'] as bool),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
