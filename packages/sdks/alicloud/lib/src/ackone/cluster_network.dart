// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetwork {
  /// Security group to which the cluster belongs.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// VpcId to which the cluster belongs.
  final pulumi.Input<String> vpcId;
  /// Switch to which the cluster belongs.
  final pulumi.Input<List<String>> vswitches;

  /// Creates a new [ClusterNetwork].
  /// [securityGroupIds] Security group to which the cluster belongs.
  /// [vpcId] VpcId to which the cluster belongs.
  /// [vswitches] Switch to which the cluster belongs.
  const ClusterNetwork({
    this.securityGroupIds,
    required this.vpcId,
    required this.vswitches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'vpcId': vpcId,
      'vswitches': vswitches,
    };
  }

  factory ClusterNetwork.fromMap(Map<String, dynamic> map) {
    return ClusterNetwork(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitches: pulumi.Input.fromValue((map['vswitches'] as List).cast<String>()),
    );
  }
}

