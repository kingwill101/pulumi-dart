// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplatePlacement {
  final String affinity;
  final String availabilityZone;
  final String groupId;
  final String groupName;
  final String hostId;
  final String hostResourceGroupArn;
  final int partitionNumber;
  final String spreadDomain;
  final String tenancy;

  /// Creates a new [GetLaunchTemplatePlacement].
  /// [affinity] Required.
  /// [availabilityZone] Required.
  /// [groupId] Required.
  /// [groupName] Required.
  /// [hostId] Required.
  /// [hostResourceGroupArn] Required.
  /// [partitionNumber] Required.
  /// [spreadDomain] Required.
  /// [tenancy] Required.
  GetLaunchTemplatePlacement({
    required this.affinity,
    required this.availabilityZone,
    required this.groupId,
    required this.groupName,
    required this.hostId,
    required this.hostResourceGroupArn,
    required this.partitionNumber,
    required this.spreadDomain,
    required this.tenancy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affinity'] = affinity;
    map['availabilityZone'] = availabilityZone;
    map['groupId'] = groupId;
    map['groupName'] = groupName;
    map['hostId'] = hostId;
    map['hostResourceGroupArn'] = hostResourceGroupArn;
    map['partitionNumber'] = partitionNumber;
    map['spreadDomain'] = spreadDomain;
    map['tenancy'] = tenancy;
    return map;
  }

  factory GetLaunchTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplatePlacement(
      affinity: map['affinity'] as String,
      availabilityZone: map['availabilityZone'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      hostId: map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] as String,
      partitionNumber: map['partitionNumber'] as int,
      spreadDomain: map['spreadDomain'] as String,
      tenancy: map['tenancy'] as String,
    );
  }
}
