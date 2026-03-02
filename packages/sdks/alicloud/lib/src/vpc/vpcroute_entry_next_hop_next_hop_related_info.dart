// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VPCRouteEntryNextHopNextHopRelatedInfo {
  /// InstanceId
  final pulumi.Input<String>? instanceId;
  /// InstanceType
  final pulumi.Input<String>? instanceType;
  /// The region of the instance associated with the next hop.
  final pulumi.Input<String>? regionId;

  /// Creates a new [VPCRouteEntryNextHopNextHopRelatedInfo].
  /// [instanceId] InstanceId
  /// [instanceType] InstanceType
  /// [regionId] The region of the instance associated with the next hop.
  VPCRouteEntryNextHopNextHopRelatedInfo({
    this.instanceId,
    this.instanceType,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'regionId': ?regionId,
    };
  }

  factory VPCRouteEntryNextHopNextHopRelatedInfo.fromMap(Map<String, dynamic> map) {
    return VPCRouteEntryNextHopNextHopRelatedInfo(
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
    );
  }
}

