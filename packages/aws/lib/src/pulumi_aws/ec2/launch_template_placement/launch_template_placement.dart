// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplatePlacement {
  /// The affinity setting for an instance on a Dedicated Host.
  final String? affinity;

  /// The Availability Zone for the instance.
  final String? availabilityZone;

  /// The ID of the placement group for the instance. Conflicts with `group_name`.
  final String? groupId;

  /// The name of the placement group for the instance. Conflicts with `group_id`.
  final String? groupName;

  /// The ID of the Dedicated Host for the instance.
  final String? hostId;

  /// The ARN of the Host Resource Group in which to launch instances.
  final String? hostResourceGroupArn;

  /// The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.
  final int? partitionNumber;

  /// Reserved for future use.
  final String? spreadDomain;

  /// The tenancy of the instance (if the instance is running in a VPC). Can be `default`, `dedicated`, or `host`.
  final String? tenancy;

  LaunchTemplatePlacement({
    this.affinity,
    this.availabilityZone,
    this.groupId,
    this.groupName,
    this.hostId,
    this.hostResourceGroupArn,
    this.partitionNumber,
    this.spreadDomain,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final affinityValue = affinity;
    if (affinityValue != null) {
      map['affinity'] = affinityValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final groupIdValue = groupId;
    if (groupIdValue != null) {
      map['groupId'] = groupIdValue;
    }
    final groupNameValue = groupName;
    if (groupNameValue != null) {
      map['groupName'] = groupNameValue;
    }
    final hostIdValue = hostId;
    if (hostIdValue != null) {
      map['hostId'] = hostIdValue;
    }
    final hostResourceGroupArnValue = hostResourceGroupArn;
    if (hostResourceGroupArnValue != null) {
      map['hostResourceGroupArn'] = hostResourceGroupArnValue;
    }
    final partitionNumberValue = partitionNumber;
    if (partitionNumberValue != null) {
      map['partitionNumber'] = partitionNumberValue;
    }
    final spreadDomainValue = spreadDomain;
    if (spreadDomainValue != null) {
      map['spreadDomain'] = spreadDomainValue;
    }
    final tenancyValue = tenancy;
    if (tenancyValue != null) {
      map['tenancy'] = tenancyValue;
    }
    return map;
  }

  factory LaunchTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return LaunchTemplatePlacement(
      affinity: map['affinity'] == null ? null : map['affinity'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] == null
          ? null
          : map['hostResourceGroupArn'] as String,
      partitionNumber:
          map['partitionNumber'] == null ? null : map['partitionNumber'] as int,
      spreadDomain:
          map['spreadDomain'] == null ? null : map['spreadDomain'] as String,
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
    );
  }
}
