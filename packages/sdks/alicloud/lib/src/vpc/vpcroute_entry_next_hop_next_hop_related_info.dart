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
  const VPCRouteEntryNextHopNextHopRelatedInfo({
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
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

