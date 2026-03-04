// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceBindVpc {
  /// region id
  final pulumi.Input<String>? regionId;

  /// VPC ID
  final pulumi.Input<String>? vpcId;

  /// VPC owner root user ID
  final pulumi.Input<String>? vpcOwnerId;

  /// vswitch id
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceBindVpc].
  /// [regionId] region id
  /// [vpcId] VPC ID
  /// [vpcOwnerId] VPC owner root user ID
  /// [vswitchId] vswitch id
  InstanceBindVpc({this.regionId, this.vpcId, this.vpcOwnerId, this.vswitchId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': ?regionId,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceBindVpc.fromMap(Map<String, dynamic> map) {
    return InstanceBindVpc(
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcOwnerId: (() {
        final guardedValue = map['vpcOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
