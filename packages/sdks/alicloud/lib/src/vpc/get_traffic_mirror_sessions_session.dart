// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficMirrorSessionsSession {
  /// Indicates whether traffic mirror sessions are enabled. default to `false`.
  final pulumi.Input<bool> enabled;

  /// The ID of the Traffic Mirror Session.
  final pulumi.Input<String> id;

  /// The maximum transmission unit (MTU).
  final pulumi.Input<int> packetLength;

  /// The priority of the traffic mirror session. A smaller value indicates a higher priority.
  final pulumi.Input<int> priority;

  /// The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String> status;

  /// The ID of the filter.
  final pulumi.Input<String> trafficMirrorFilterId;

  /// The state of the traffic mirror session. Valid values: `Normal` or `FinancialLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments.
  final pulumi.Input<String> trafficMirrorSessionBusinessStatus;

  /// The description of the traffic mirror session.
  final pulumi.Input<String> trafficMirrorSessionDescription;

  /// The first ID of the resource.
  final pulumi.Input<String> trafficMirrorSessionId;

  /// The name of the traffic mirror session.
  final pulumi.Input<String> trafficMirrorSessionName;

  /// The ID of the mirror source.
  final pulumi.Input<List<String>> trafficMirrorSourceIds;

  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  final pulumi.Input<String> trafficMirrorTargetId;

  /// The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance
  final pulumi.Input<String> trafficMirrorTargetType;

  /// You can specify VNIs to distinguish different mirrored traffic.
  final pulumi.Input<int> virtualNetworkId;

  /// Creates a new [GetTrafficMirrorSessionsSession].
  /// [enabled] Indicates whether traffic mirror sessions are enabled. default to `false`.
  /// [id] The ID of the Traffic Mirror Session.
  /// [packetLength] The maximum transmission unit (MTU).
  /// [priority] The priority of the traffic mirror session. A smaller value indicates a higher priority.
  /// [status] The state of the traffic mirror session. Valid values: `Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorSessionBusinessStatus] The state of the traffic mirror session. Valid values: `Normal` or `FinancialLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments.
  /// [trafficMirrorSessionDescription] The description of the traffic mirror session.
  /// [trafficMirrorSessionId] The first ID of the resource.
  /// [trafficMirrorSessionName] The name of the traffic mirror session.
  /// [trafficMirrorSourceIds] The ID of the mirror source.
  /// [trafficMirrorTargetId] The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  /// [trafficMirrorTargetType] The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance
  /// [virtualNetworkId] You can specify VNIs to distinguish different mirrored traffic.
  GetTrafficMirrorSessionsSession({
    required this.enabled,
    required this.id,
    required this.packetLength,
    required this.priority,
    required this.status,
    required this.trafficMirrorFilterId,
    required this.trafficMirrorSessionBusinessStatus,
    required this.trafficMirrorSessionDescription,
    required this.trafficMirrorSessionId,
    required this.trafficMirrorSessionName,
    required this.trafficMirrorSourceIds,
    required this.trafficMirrorTargetId,
    required this.trafficMirrorTargetType,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'packetLength': packetLength,
      'priority': priority,
      'status': status,
      'trafficMirrorFilterId': trafficMirrorFilterId,
      'trafficMirrorSessionBusinessStatus': trafficMirrorSessionBusinessStatus,
      'trafficMirrorSessionDescription': trafficMirrorSessionDescription,
      'trafficMirrorSessionId': trafficMirrorSessionId,
      'trafficMirrorSessionName': trafficMirrorSessionName,
      'trafficMirrorSourceIds': trafficMirrorSourceIds,
      'trafficMirrorTargetId': trafficMirrorTargetId,
      'trafficMirrorTargetType': trafficMirrorTargetType,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetTrafficMirrorSessionsSession.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorSessionsSession(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      packetLength: pulumi.Input.fromValue(map['packetLength'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      trafficMirrorFilterId: pulumi.Input.fromValue(
        map['trafficMirrorFilterId'] as String,
      ),
      trafficMirrorSessionBusinessStatus: pulumi.Input.fromValue(
        map['trafficMirrorSessionBusinessStatus'] as String,
      ),
      trafficMirrorSessionDescription: pulumi.Input.fromValue(
        map['trafficMirrorSessionDescription'] as String,
      ),
      trafficMirrorSessionId: pulumi.Input.fromValue(
        map['trafficMirrorSessionId'] as String,
      ),
      trafficMirrorSessionName: pulumi.Input.fromValue(
        map['trafficMirrorSessionName'] as String,
      ),
      trafficMirrorSourceIds: pulumi.Input.fromValue(
        (map['trafficMirrorSourceIds'] as List).cast<String>(),
      ),
      trafficMirrorTargetId: pulumi.Input.fromValue(
        map['trafficMirrorTargetId'] as String,
      ),
      trafficMirrorTargetType: pulumi.Input.fromValue(
        map['trafficMirrorTargetType'] as String,
      ),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as int),
    );
  }
}
