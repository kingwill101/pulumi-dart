// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission {
  /// Set of AWS Organization ARNs to assign.
  final pulumi.Input<List<String>>? organizationArns;
  /// Set of AWS Organizational Unit ARNs to assign.
  final pulumi.Input<List<String>>? organizationalUnitArns;
  /// Set of EC2 launch permission user groups to assign. Use `all` to distribute a public AMI.
  final pulumi.Input<List<String>>? userGroups;
  /// Set of AWS Account identifiers to assign.
  final pulumi.Input<List<String>>? userIds;

  /// Creates a new [DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission].
  /// [organizationArns] Set of AWS Organization ARNs to assign.
  /// [organizationalUnitArns] Set of AWS Organizational Unit ARNs to assign.
  /// [userGroups] Set of EC2 launch permission user groups to assign. Use `all` to distribute a public AMI.
  /// [userIds] Set of AWS Account identifiers to assign.
  DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission({
    this.organizationArns,
    this.organizationalUnitArns,
    this.userGroups,
    this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationArns': ?organizationArns,
      'organizationalUnitArns': ?organizationalUnitArns,
      'userGroups': ?userGroups,
      'userIds': ?userIds,
    };
  }

  factory DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission(
      organizationArns: map['organizationArns'] == null ? null : (((map['organizationArns'] as List).cast<String>()).input()).input(),
      organizationalUnitArns: map['organizationalUnitArns'] == null ? null : (((map['organizationalUnitArns'] as List).cast<String>()).input()).input(),
      userGroups: map['userGroups'] == null ? null : (((map['userGroups'] as List).cast<String>()).input()).input(),
      userIds: map['userIds'] == null ? null : (((map['userIds'] as List).cast<String>()).input()).input(),
    );
  }
}

