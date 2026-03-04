// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission {
  /// Set of AWS Organization ARNs.
  final pulumi.Input<List<String>> organizationArns;

  /// Set of AWS Organizational Unit ARNs.
  final pulumi.Input<List<String>> organizationalUnitArns;

  /// Set of EC2 launch permission user groups.
  final pulumi.Input<List<String>> userGroups;

  /// Set of AWS Account identifiers.
  final pulumi.Input<List<String>> userIds;

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

  factory GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission(
      organizationArns: pulumi.Input.fromValue(
        (map['organizationArns'] as List).cast<String>(),
      ),
      organizationalUnitArns: pulumi.Input.fromValue(
        (map['organizationalUnitArns'] as List).cast<String>(),
      ),
      userGroups: pulumi.Input.fromValue(
        (map['userGroups'] as List).cast<String>(),
      ),
      userIds: pulumi.Input.fromValue((map['userIds'] as List).cast<String>()),
    );
  }
}
