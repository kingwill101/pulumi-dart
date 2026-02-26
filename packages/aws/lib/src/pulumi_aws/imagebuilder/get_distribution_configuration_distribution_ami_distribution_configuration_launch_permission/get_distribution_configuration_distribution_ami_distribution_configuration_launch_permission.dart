// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission {
  /// Set of AWS Organization ARNs.
  final List<String> organizationArns;

  /// Set of AWS Organizational Unit ARNs.
  final List<String> organizationalUnitArns;

  /// Set of EC2 launch permission user groups.
  final List<String> userGroups;

  /// Set of AWS Account identifiers.
  final List<String> userIds;

  GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission({
    required this.organizationArns,
    required this.organizationalUnitArns,
    required this.userGroups,
    required this.userIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationArns'] = organizationArns;
    map['organizationalUnitArns'] = organizationalUnitArns;
    map['userGroups'] = userGroups;
    map['userIds'] = userIds;
    return map;
  }

  factory GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission(
      organizationArns: (map['organizationArns'] as List).cast<String>(),
      organizationalUnitArns:
          (map['organizationalUnitArns'] as List).cast<String>(),
      userGroups: (map['userGroups'] as List).cast<String>(),
      userIds: (map['userIds'] as List).cast<String>(),
    );
  }
}
