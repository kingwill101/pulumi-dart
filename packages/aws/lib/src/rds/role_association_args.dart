// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_role_association_role_association_args_doc}
/// The set of arguments for RoleAssociation.
/// {@endtemplate}
/// {@macro pulumi_rds_role_association_role_association_args_doc}
class RoleAssociationArgs {
  /// DB Instance Identifier to associate with the IAM Role.
  final pulumi.Input<String> dbInstanceIdentifier;
  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<String> featureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Instance.
  final pulumi.Input<String> roleArn;

  /// Creates a new [RoleAssociationArgs].
  /// [dbInstanceIdentifier] DB Instance Identifier to associate with the IAM Role.
  /// [featureName] Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM Role to associate with the DB Instance.
  RoleAssociationArgs({
    required String dbInstanceIdentifier,
    required String featureName,
    String? region,
    required String roleArn,
  }) :
      dbInstanceIdentifier = pulumi.Input.asInput<String>(dbInstanceIdentifier),
      featureName = pulumi.Input.asInput<String>(featureName),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIdentifier': dbInstanceIdentifier,
      'featureName': featureName,
      'region': ?region,
      'roleArn': roleArn,
    };
  }

  factory RoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssociationArgs(
      dbInstanceIdentifier: map['dbInstanceIdentifier'] as String,
      featureName: map['featureName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

