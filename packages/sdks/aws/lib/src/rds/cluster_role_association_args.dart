// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_cluster_role_association_cluster_role_association_args_doc}
/// The set of arguments for ClusterRoleAssociation.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_role_association_cluster_role_association_args_doc}
class ClusterRoleAssociationArgs {
  /// DB Cluster Identifier to associate with the IAM Role.
  final pulumi.Input<String> dbClusterIdentifier;
  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<String>? featureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Cluster.
  final pulumi.Input<String> roleArn;

  /// Creates a new [ClusterRoleAssociationArgs].
  /// [dbClusterIdentifier] DB Cluster Identifier to associate with the IAM Role.
  /// [featureName] Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM Role to associate with the DB Cluster.
  ClusterRoleAssociationArgs({
    required this.dbClusterIdentifier,
    this.featureName,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': dbClusterIdentifier,
      'featureName': ?featureName,
      'region': ?region,
      'roleArn': roleArn,
    };
  }

  factory ClusterRoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRoleAssociationArgs(
      dbClusterIdentifier: (map['dbClusterIdentifier'] as String).input(),
      featureName: map['featureName'] == null ? null : ((map['featureName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

