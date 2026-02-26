// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RoleAssociation.
class RoleAssociationArgs2 {
  /// DB Instance Identifier to associate with the IAM Role.
  final Input<String> dbInstanceIdentifier;

  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  final Input<String> featureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Instance.
  final Input<String> roleArn;

  RoleAssociationArgs2({
    required this.dbInstanceIdentifier,
    required this.featureName,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbInstanceIdentifier'] = dbInstanceIdentifier;
    map['featureName'] = featureName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory RoleAssociationArgs2.fromMap(Map<String, dynamic> map) {
    return RoleAssociationArgs2(
      dbInstanceIdentifier: Input.asInput<String>(map['dbInstanceIdentifier']),
      featureName: Input.asInput<String>(map['featureName']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
    );
  }
}
