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

  /// Creates a new [GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission].
  /// [organizationArns] Set of AWS Organization ARNs.
  /// [organizationalUnitArns] Set of AWS Organizational Unit ARNs.
  /// [userGroups] Set of EC2 launch permission user groups.
  /// [userIds] Set of AWS Account identifiers.
  GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission({
    required this.organizationArns,
    required this.organizationalUnitArns,
    required this.userGroups,
    required this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationArns': organizationArns,
      'organizationalUnitArns': organizationalUnitArns,
      'userGroups': userGroups,
      'userIds': userIds,
    };
  }

  factory GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission(
      organizationArns: (map['organizationArns'] as List).cast<String>(),
      organizationalUnitArns: (map['organizationalUnitArns'] as List).cast<String>(),
      userGroups: (map['userGroups'] as List).cast<String>(),
      userIds: (map['userIds'] as List).cast<String>(),
    );
  }
}

