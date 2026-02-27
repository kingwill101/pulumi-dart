// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterRoleAssociation.
class ClusterRoleAssociationArgs {
  /// DB Cluster Identifier to associate with the IAM Role.
  final pulumi.Input<String> dbClusterIdentifier;

  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<String>? featureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Cluster.
  final pulumi.Input<String> roleArn;

  ClusterRoleAssociationArgs({
    required this.dbClusterIdentifier,
    this.featureName,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbClusterIdentifier'] = dbClusterIdentifier;
    final featureNameValue = featureName;
    if (featureNameValue != null) {
      map['featureName'] = featureNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory ClusterRoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRoleAssociationArgs(
      dbClusterIdentifier:
          pulumi.Input.asInput<String>(map['dbClusterIdentifier']),
      featureName: pulumi.Input.asOptionalInput<String>(map['featureName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
    );
  }
}
