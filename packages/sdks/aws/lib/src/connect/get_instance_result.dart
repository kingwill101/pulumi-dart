// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstance.
class GetInstanceResult {
  /// ARN of the instance.
  final String arn;
  final bool autoResolveBestVoicesEnabled;
  /// Whether contact flow logs are enabled.
  final bool contactFlowLogsEnabled;
  /// Whether contact lens is enabled.
  final bool contactLensEnabled;
  /// When the instance was created.
  final String createdTime;
  /// Whether early media for outbound calls is enabled .
  final bool earlyMediaEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies The identity management type attached to the instance.
  final String identityManagementType;
  /// Whether inbound calls are enabled.
  final bool inboundCallsEnabled;
  final String instanceAlias;
  final String instanceId;
  /// Whether multi-party calls/conference is enabled.
  final bool multiPartyConferenceEnabled;
  /// Whether outbound calls are enabled.
  final bool outboundCallsEnabled;
  final String region;
  /// Service role of the instance.
  final String serviceRole;
  /// State of the instance.
  final String status;
  /// A map of tags to assigned to the instance.
  final Map<String, String> tags;

  /// Creates a new [GetInstanceResult].
  /// [arn] ARN of the instance.
  /// [autoResolveBestVoicesEnabled] Required.
  /// [contactFlowLogsEnabled] Whether contact flow logs are enabled.
  /// [contactLensEnabled] Whether contact lens is enabled.
  /// [createdTime] When the instance was created.
  /// [earlyMediaEnabled] Whether early media for outbound calls is enabled .
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityManagementType] Specifies The identity management type attached to the instance.
  /// [inboundCallsEnabled] Whether inbound calls are enabled.
  /// [instanceAlias] Required.
  /// [instanceId] Required.
  /// [multiPartyConferenceEnabled] Whether multi-party calls/conference is enabled.
  /// [outboundCallsEnabled] Whether outbound calls are enabled.
  /// [region] Required.
  /// [serviceRole] Service role of the instance.
  /// [status] State of the instance.
  /// [tags] A map of tags to assigned to the instance.
  const GetInstanceResult({
    required this.arn,
    required this.autoResolveBestVoicesEnabled,
    required this.contactFlowLogsEnabled,
    required this.contactLensEnabled,
    required this.createdTime,
    required this.earlyMediaEnabled,
    required this.id,
    required this.identityManagementType,
    required this.inboundCallsEnabled,
    required this.instanceAlias,
    required this.instanceId,
    required this.multiPartyConferenceEnabled,
    required this.outboundCallsEnabled,
    required this.region,
    required this.serviceRole,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'autoResolveBestVoicesEnabled': autoResolveBestVoicesEnabled,
      'contactFlowLogsEnabled': contactFlowLogsEnabled,
      'contactLensEnabled': contactLensEnabled,
      'createdTime': createdTime,
      'earlyMediaEnabled': earlyMediaEnabled,
      'id': id,
      'identityManagementType': identityManagementType,
      'inboundCallsEnabled': inboundCallsEnabled,
      'instanceAlias': instanceAlias,
      'instanceId': instanceId,
      'multiPartyConferenceEnabled': multiPartyConferenceEnabled,
      'outboundCallsEnabled': outboundCallsEnabled,
      'region': region,
      'serviceRole': serviceRole,
      'status': status,
      'tags': tags,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      arn: map['arn'] as String,
      autoResolveBestVoicesEnabled: map['autoResolveBestVoicesEnabled'] as bool,
      contactFlowLogsEnabled: map['contactFlowLogsEnabled'] as bool,
      contactLensEnabled: map['contactLensEnabled'] as bool,
      createdTime: map['createdTime'] as String,
      earlyMediaEnabled: map['earlyMediaEnabled'] as bool,
      id: map['id'] as String,
      identityManagementType: map['identityManagementType'] as String,
      inboundCallsEnabled: map['inboundCallsEnabled'] as bool,
      instanceAlias: map['instanceAlias'] as String,
      instanceId: map['instanceId'] as String,
      multiPartyConferenceEnabled: map['multiPartyConferenceEnabled'] as bool,
      outboundCallsEnabled: map['outboundCallsEnabled'] as bool,
      region: map['region'] as String,
      serviceRole: map['serviceRole'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

