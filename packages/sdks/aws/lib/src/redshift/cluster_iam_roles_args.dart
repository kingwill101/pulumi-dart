// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_cluster_iam_roles_cluster_iam_roles_args_doc}
/// The set of arguments for ClusterIamRoles.
/// {@endtemplate}
/// {@macro pulumi_redshift_cluster_iam_roles_cluster_iam_roles_args_doc}
class ClusterIamRolesArgs {
  /// The name of the Redshift Cluster IAM Roles.
  final pulumi.Input<String> clusterIdentifier;
  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  final pulumi.Input<String>? defaultIamRoleArn;
  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  final pulumi.Input<List<String>>? iamRoleArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterIamRolesArgs].
  /// [clusterIdentifier] The name of the Redshift Cluster IAM Roles.
  /// [defaultIamRoleArn] The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  /// [iamRoleArns] A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterIamRolesArgs({
    required this.clusterIdentifier,
    this.defaultIamRoleArn,
    this.iamRoleArns,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'defaultIamRoleArn': ?defaultIamRoleArn,
      'iamRoleArns': ?iamRoleArns,
      'region': ?region,
    };
  }

  factory ClusterIamRolesArgs.fromMap(Map<String, dynamic> map) {
    return ClusterIamRolesArgs(
      clusterIdentifier: (map['clusterIdentifier'] as String).input(),
      defaultIamRoleArn: map['defaultIamRoleArn'] == null ? null : (map['defaultIamRoleArn'] as String).input(),
      iamRoleArns: map['iamRoleArns'] == null ? null : ((map['iamRoleArns'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

