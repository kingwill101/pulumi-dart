// ignore_for_file: unused_element, unnecessary_cast


class VPCRouteEntryNextHopNextHopRelatedInfo {
  /// InstanceId
  final String? instanceId;
  /// InstanceType
  final String? instanceType;
  /// The region of the instance associated with the next hop.
  final String? regionId;

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
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
    );
  }
}

