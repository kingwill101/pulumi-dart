// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterIamRoles.
class ClusterIamRolesArgs {
  /// The name of the Redshift Cluster IAM Roles.
  final pulumi.Input<String> clusterIdentifier;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  final pulumi.Input<String>? defaultIamRoleArn;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  final pulumi.Input<List<String>>? iamRoleArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ClusterIamRolesArgs({
    required this.clusterIdentifier,
    this.defaultIamRoleArn,
    this.iamRoleArns,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    final defaultIamRoleArnValue = defaultIamRoleArn;
    if (defaultIamRoleArnValue != null) {
      map['defaultIamRoleArn'] = defaultIamRoleArnValue;
    }
    final iamRoleArnsValue = iamRoleArns;
    if (iamRoleArnsValue != null) {
      map['iamRoleArns'] = iamRoleArnsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ClusterIamRolesArgs.fromMap(Map<String, dynamic> map) {
    return ClusterIamRolesArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      defaultIamRoleArn:
          pulumi.Input.asOptionalInput<String>(map['defaultIamRoleArn']),
      iamRoleArns:
          pulumi.Input.asOptionalInput<List<String>>(map['iamRoleArns']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
