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
  InstanceBindVpc({
    this.regionId,
    this.vpcId,
    this.vpcOwnerId,
    this.vswitchId,
  });

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
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : (map['vpcOwnerId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

