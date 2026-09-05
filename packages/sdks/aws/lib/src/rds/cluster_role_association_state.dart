// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterRoleAssociation resources.
class ClusterRoleAssociationState {
  /// DB Cluster Identifier to associate with the IAM Role.
  final pulumi.Input<String?>? dbClusterIdentifier;
  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<String?>? featureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM Role to associate with the DB Cluster.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [ClusterRoleAssociationState].
  /// [dbClusterIdentifier] DB Cluster Identifier to associate with the IAM Role.
  /// [featureName] Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM Role to associate with the DB Cluster.
  const ClusterRoleAssociationState({
    this.dbClusterIdentifier,
    this.featureName,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'featureName': ?featureName,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory ClusterRoleAssociationState.fromMap(Map<String, dynamic> map) {
    return ClusterRoleAssociationState(
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
