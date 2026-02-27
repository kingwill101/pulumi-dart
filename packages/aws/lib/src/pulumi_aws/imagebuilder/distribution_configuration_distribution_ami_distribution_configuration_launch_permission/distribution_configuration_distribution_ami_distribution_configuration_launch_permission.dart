// ignore_for_file: unused_element, unnecessary_cast

class DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission {
  /// Set of AWS Organization ARNs to assign.
  final List<String>? organizationArns;

  /// Set of AWS Organizational Unit ARNs to assign.
  final List<String>? organizationalUnitArns;

  /// Set of EC2 launch permission user groups to assign. Use `all` to distribute a public AMI.
  final List<String>? userGroups;

  /// Set of AWS Account identifiers to assign.
  final List<String>? userIds;

  DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission({
    this.organizationArns,
    this.organizationalUnitArns,
    this.userGroups,
    this.userIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final organizationArnsValue = organizationArns;
    if (organizationArnsValue != null) {
      map['organizationArns'] = organizationArnsValue;
    }
    final organizationalUnitArnsValue = organizationalUnitArns;
    if (organizationalUnitArnsValue != null) {
      map['organizationalUnitArns'] = organizationalUnitArnsValue;
    }
    final userGroupsValue = userGroups;
    if (userGroupsValue != null) {
      map['userGroups'] = userGroupsValue;
    }
    final userIdsValue = userIds;
    if (userIdsValue != null) {
      map['userIds'] = userIdsValue;
    }
    return map;
  }

  factory DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission(
      organizationArns: map['organizationArns'] == null
          ? null
          : (map['organizationArns'] as List).cast<String>(),
      organizationalUnitArns: map['organizationalUnitArns'] == null
          ? null
          : (map['organizationalUnitArns'] as List).cast<String>(),
      userGroups: map['userGroups'] == null
          ? null
          : (map['userGroups'] as List).cast<String>(),
      userIds: map['userIds'] == null
          ? null
          : (map['userIds'] as List).cast<String>(),
    );
  }
}
