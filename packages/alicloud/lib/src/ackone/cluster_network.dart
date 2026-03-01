// ignore_for_file: unused_element, unnecessary_cast


class ClusterNetwork {
  /// Security group to which the cluster belongs.
  final List<String>? securityGroupIds;
  /// VpcId to which the cluster belongs.
  final String vpcId;
  /// Switch to which the cluster belongs.
  final List<String> vswitches;

  /// Creates a new [ClusterNetwork].
  /// [securityGroupIds] Security group to which the cluster belongs.
  /// [vpcId] VpcId to which the cluster belongs.
  /// [vswitches] Switch to which the cluster belongs.
  ClusterNetwork({
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
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
      vswitches: (map['vswitches'] as List).cast<String>(),
    );
  }
}

