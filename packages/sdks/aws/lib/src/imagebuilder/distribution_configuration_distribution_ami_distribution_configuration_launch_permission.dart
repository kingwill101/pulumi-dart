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

  factory DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission(
      organizationArns: (() {
        final guardedValue = map['organizationArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      organizationalUnitArns: (() {
        final guardedValue = map['organizationalUnitArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userGroups: (() {
        final guardedValue = map['userGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userIds: (() {
        final guardedValue = map['userIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
