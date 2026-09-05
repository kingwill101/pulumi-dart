// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstance.
class GetInstanceResult {
  /// ARN of the instance.
  final String? arn;
  final bool? autoResolveBestVoicesEnabled;
  /// Whether contact flow logs are enabled.
  final bool? contactFlowLogsEnabled;
  /// Whether contact lens is enabled.
  final bool? contactLensEnabled;
  /// When the instance was created.
  final String? createdTime;
  /// Whether early media for outbound calls is enabled .
  final bool? earlyMediaEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies The identity management type attached to the instance.
  final String? identityManagementType;
  /// Whether inbound calls are enabled.
  final bool? inboundCallsEnabled;
  final String? instanceAlias;
  final String? instanceId;
  /// Whether multi-party calls/conference is enabled.
  final bool? multiPartyConferenceEnabled;
  /// Whether outbound calls are enabled.
  final bool? outboundCallsEnabled;
  final String? region;
  /// Service role of the instance.
  final String? serviceRole;
  /// State of the instance.
  final String? status;
  /// A map of tags to assigned to the instance.
  final Map<String, String>? tags;

  /// Creates a new [GetInstanceResult].
  /// [arn] ARN of the instance.
  /// [autoResolveBestVoicesEnabled] Optional.
  /// [contactFlowLogsEnabled] Whether contact flow logs are enabled.
  /// [contactLensEnabled] Whether contact lens is enabled.
  /// [createdTime] When the instance was created.
  /// [earlyMediaEnabled] Whether early media for outbound calls is enabled .
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityManagementType] Specifies The identity management type attached to the instance.
  /// [inboundCallsEnabled] Whether inbound calls are enabled.
  /// [instanceAlias] Optional.
  /// [instanceId] Optional.
  /// [multiPartyConferenceEnabled] Whether multi-party calls/conference is enabled.
  /// [outboundCallsEnabled] Whether outbound calls are enabled.
  /// [region] Optional.
  /// [serviceRole] Service role of the instance.
  /// [status] State of the instance.
  /// [tags] A map of tags to assigned to the instance.
  const GetInstanceResult({
    this.arn,
    this.autoResolveBestVoicesEnabled,
    this.contactFlowLogsEnabled,
    this.contactLensEnabled,
    this.createdTime,
    this.earlyMediaEnabled,
    this.id,
    this.identityManagementType,
    this.inboundCallsEnabled,
    this.instanceAlias,
    this.instanceId,
    this.multiPartyConferenceEnabled,
    this.outboundCallsEnabled,
    this.region,
    this.serviceRole,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoResolveBestVoicesEnabled': ?autoResolveBestVoicesEnabled,
      'contactFlowLogsEnabled': ?contactFlowLogsEnabled,
      'contactLensEnabled': ?contactLensEnabled,
      'createdTime': ?createdTime,
      'earlyMediaEnabled': ?earlyMediaEnabled,
      'id': ?id,
      'identityManagementType': ?identityManagementType,
      'inboundCallsEnabled': ?inboundCallsEnabled,
      'instanceAlias': ?instanceAlias,
      'instanceId': ?instanceId,
      'multiPartyConferenceEnabled': ?multiPartyConferenceEnabled,
      'outboundCallsEnabled': ?outboundCallsEnabled,
      'region': ?region,
      'serviceRole': ?serviceRole,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoResolveBestVoicesEnabled: (() { final guardedValue = map['autoResolveBestVoicesEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      contactFlowLogsEnabled: (() { final guardedValue = map['contactFlowLogsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      contactLensEnabled: (() { final guardedValue = map['contactLensEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      earlyMediaEnabled: (() { final guardedValue = map['earlyMediaEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityManagementType: (() { final guardedValue = map['identityManagementType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundCallsEnabled: (() { final guardedValue = map['inboundCallsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      instanceAlias: (() { final guardedValue = map['instanceAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiPartyConferenceEnabled: (() { final guardedValue = map['multiPartyConferenceEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outboundCallsEnabled: (() { final guardedValue = map['outboundCallsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
