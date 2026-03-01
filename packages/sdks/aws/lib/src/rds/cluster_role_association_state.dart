// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterRoleAssociation resources.
class ClusterRoleAssociationState {
  /// DB Cluster Identifier to associate with the IAM Role.
  final pulumi.Input<String>? dbClusterIdentifier;
  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<String>? featureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Cluster.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ClusterRoleAssociationState].
  /// [dbClusterIdentifier] DB Cluster Identifier to associate with the IAM Role.
  /// [featureName] Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM Role to associate with the DB Cluster.
  ClusterRoleAssociationState({
    pulumi.Output<String>? dbClusterIdentifier,
    pulumi.Output<String>? featureName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
  }) :
      dbClusterIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterIdentifier),
      featureName = pulumi.Input.asOptionalInput<String>(featureName),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

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
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      featureName: map['featureName'] == null ? null : pulumi.Output.create<String>(map['featureName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}

