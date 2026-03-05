// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficMirrorSession resources.
class TrafficMirrorSessionState {
  /// Whether to PreCheck only this request, value:
  /// - **true**: sends a check request and does not create a mirror session. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates a mirror session after checking.
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to enable traffic mirror sessions. default to `false`.
  final pulumi.Input<bool>? enabled;
  /// Maximum Transmission Unit (MTU).
  final pulumi.Input<int>? packetLength;
  /// The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  final pulumi.Input<int>? priority;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tags of this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the filter.
  final pulumi.Input<String>? trafficMirrorFilterId;
  /// The description of the traffic mirror session. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? trafficMirrorSessionDescription;
  /// The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? trafficMirrorSessionName;
  /// The ID of the image source instance. Currently, the Eni is supported as the image source. The default value of N is 1, that is, only one mirror source can be added to a mirror session.
  final pulumi.Input<List<String>>? trafficMirrorSourceIds;
  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  final pulumi.Input<String>? trafficMirrorTargetId;
  /// The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance.
  final pulumi.Input<String>? trafficMirrorTargetType;
  /// The VXLAN network identifier (VNI) that is used to distinguish different mirrored traffic. Valid values: `0` to `16777215`. You can specify VNIs for the traffic mirror destination to identify mirrored traffic from different sessions. If you do not specify a VNI, the system randomly allocates a VNI. If you want the system to randomly allocate a VNI, ignore this parameter.
  final pulumi.Input<int>? virtualNetworkId;

  /// Creates a new [TrafficMirrorSessionState].
  /// [dryRun] Whether to PreCheck only this request, value:
  /// [enabled] Specifies whether to enable traffic mirror sessions. default to `false`.
  /// [packetLength] Maximum Transmission Unit (MTU).
  /// [priority] The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tags of this resource.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorSessionDescription] The description of the traffic mirror session. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  /// [trafficMirrorSessionName] The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  /// [trafficMirrorSourceIds] The ID of the image source instance. Currently, the Eni is supported as the image source. The default value of N is 1, that is, only one mirror source can be added to a mirror session.
  /// [trafficMirrorTargetId] The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  /// [trafficMirrorTargetType] The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance.
  /// [virtualNetworkId] The VXLAN network identifier (VNI) that is used to distinguish different mirrored traffic. Valid values: `0` to `16777215`. You can specify VNIs for the traffic mirror destination to identify mirrored traffic from different sessions. If you do not specify a VNI, the system randomly allocates a VNI. If you want the system to randomly allocate a VNI, ignore this parameter.
  TrafficMirrorSessionState({
    this.dryRun,
    this.enabled,
    this.packetLength,
    this.priority,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.trafficMirrorFilterId,
    this.trafficMirrorSessionDescription,
    this.trafficMirrorSessionName,
    this.trafficMirrorSourceIds,
    this.trafficMirrorTargetId,
    this.trafficMirrorTargetType,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'enabled': ?enabled,
      'packetLength': ?packetLength,
      'priority': ?priority,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
      'trafficMirrorSessionDescription': ?trafficMirrorSessionDescription,
      'trafficMirrorSessionName': ?trafficMirrorSessionName,
      'trafficMirrorSourceIds': ?trafficMirrorSourceIds,
      'trafficMirrorTargetId': ?trafficMirrorTargetId,
      'trafficMirrorTargetType': ?trafficMirrorTargetType,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory TrafficMirrorSessionState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorSessionState(
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      packetLength: (() { final guardedValue = map['packetLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficMirrorFilterId: (() { final guardedValue = map['trafficMirrorFilterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMirrorSessionDescription: (() { final guardedValue = map['trafficMirrorSessionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMirrorSessionName: (() { final guardedValue = map['trafficMirrorSessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMirrorSourceIds: (() { final guardedValue = map['trafficMirrorSourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trafficMirrorTargetId: (() { final guardedValue = map['trafficMirrorTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMirrorTargetType: (() { final guardedValue = map['trafficMirrorTargetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

