// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_traffic_mirror_session_traffic_mirror_session_args_doc}
/// The set of arguments for TrafficMirrorSession.
/// {@endtemplate}
/// {@macro pulumi_vpc_traffic_mirror_session_traffic_mirror_session_args_doc}
class TrafficMirrorSessionArgs {
  /// Whether to PreCheck only this request, value:
  /// - **true**: sends a check request and does not create a mirror session. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates a mirror session after checking.
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to enable traffic mirror sessions. default to `false`.
  final pulumi.Input<bool>? enabled;
  /// Maximum Transmission Unit (MTU).
  final pulumi.Input<int>? packetLength;
  /// The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  final pulumi.Input<int> priority;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tags of this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the filter.
  final pulumi.Input<String> trafficMirrorFilterId;
  /// The description of the traffic mirror session. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? trafficMirrorSessionDescription;
  /// The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? trafficMirrorSessionName;
  /// The ID of the image source instance. Currently, the Eni is supported as the image source. The default value of N is 1, that is, only one mirror source can be added to a mirror session.
  final pulumi.Input<List<String>> trafficMirrorSourceIds;
  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  final pulumi.Input<String> trafficMirrorTargetId;
  /// The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance.
  final pulumi.Input<String> trafficMirrorTargetType;
  /// The VXLAN network identifier (VNI) that is used to distinguish different mirrored traffic. Valid values: `0` to `16777215`. You can specify VNIs for the traffic mirror destination to identify mirrored traffic from different sessions. If you do not specify a VNI, the system randomly allocates a VNI. If you want the system to randomly allocate a VNI, ignore this parameter.
  final pulumi.Input<int>? virtualNetworkId;

  /// Creates a new [TrafficMirrorSessionArgs].
  /// [dryRun] Whether to PreCheck only this request, value:
  /// [enabled] Specifies whether to enable traffic mirror sessions. default to `false`.
  /// [packetLength] Maximum Transmission Unit (MTU).
  /// [priority] The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tags of this resource.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorSessionDescription] The description of the traffic mirror session. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  /// [trafficMirrorSessionName] The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  /// [trafficMirrorSourceIds] The ID of the image source instance. Currently, the Eni is supported as the image source. The default value of N is 1, that is, only one mirror source can be added to a mirror session.
  /// [trafficMirrorTargetId] The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  /// [trafficMirrorTargetType] The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance.
  /// [virtualNetworkId] The VXLAN network identifier (VNI) that is used to distinguish different mirrored traffic. Valid values: `0` to `16777215`. You can specify VNIs for the traffic mirror destination to identify mirrored traffic from different sessions. If you do not specify a VNI, the system randomly allocates a VNI. If you want the system to randomly allocate a VNI, ignore this parameter.
  TrafficMirrorSessionArgs({
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? packetLength,
    required pulumi.Output<int> priority,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> trafficMirrorFilterId,
    pulumi.Output<String>? trafficMirrorSessionDescription,
    pulumi.Output<String>? trafficMirrorSessionName,
    required pulumi.Output<List<String>> trafficMirrorSourceIds,
    required pulumi.Output<String> trafficMirrorTargetId,
    required pulumi.Output<String> trafficMirrorTargetType,
    pulumi.Output<int>? virtualNetworkId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      packetLength = pulumi.Input.asOptionalInput<int>(packetLength),
      priority = pulumi.Input.asInput<int>(priority),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficMirrorFilterId = pulumi.Input.asInput<String>(trafficMirrorFilterId),
      trafficMirrorSessionDescription = pulumi.Input.asOptionalInput<String>(trafficMirrorSessionDescription),
      trafficMirrorSessionName = pulumi.Input.asOptionalInput<String>(trafficMirrorSessionName),
      trafficMirrorSourceIds = pulumi.Input.asInput<List<String>>(trafficMirrorSourceIds),
      trafficMirrorTargetId = pulumi.Input.asInput<String>(trafficMirrorTargetId),
      trafficMirrorTargetType = pulumi.Input.asInput<String>(trafficMirrorTargetType),
      virtualNetworkId = pulumi.Input.asOptionalInput<int>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'enabled': ?enabled,
      'packetLength': ?packetLength,
      'priority': priority,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'trafficMirrorFilterId': trafficMirrorFilterId,
      'trafficMirrorSessionDescription': ?trafficMirrorSessionDescription,
      'trafficMirrorSessionName': ?trafficMirrorSessionName,
      'trafficMirrorSourceIds': trafficMirrorSourceIds,
      'trafficMirrorTargetId': trafficMirrorTargetId,
      'trafficMirrorTargetType': trafficMirrorTargetType,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory TrafficMirrorSessionArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorSessionArgs(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      packetLength: map['packetLength'] == null ? null : pulumi.Output.create<int>(map['packetLength'] as int),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficMirrorFilterId: pulumi.Output.create<String>(map['trafficMirrorFilterId'] as String),
      trafficMirrorSessionDescription: map['trafficMirrorSessionDescription'] == null ? null : pulumi.Output.create<String>(map['trafficMirrorSessionDescription'] as String),
      trafficMirrorSessionName: map['trafficMirrorSessionName'] == null ? null : pulumi.Output.create<String>(map['trafficMirrorSessionName'] as String),
      trafficMirrorSourceIds: pulumi.Output.create<List<String>>((map['trafficMirrorSourceIds'] as List).cast<String>()),
      trafficMirrorTargetId: pulumi.Output.create<String>(map['trafficMirrorTargetId'] as String),
      trafficMirrorTargetType: pulumi.Output.create<String>(map['trafficMirrorTargetType'] as String),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<int>(map['virtualNetworkId'] as int),
    );
  }
}

