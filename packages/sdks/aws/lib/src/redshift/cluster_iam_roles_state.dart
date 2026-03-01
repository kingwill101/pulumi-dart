// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterIamRoles resources.
class ClusterIamRolesState {
  /// The name of the Redshift Cluster IAM Roles.
  final pulumi.Input<String>? clusterIdentifier;
  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  final pulumi.Input<String>? defaultIamRoleArn;
  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  final pulumi.Input<List<String>>? iamRoleArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterIamRolesState].
  /// [clusterIdentifier] The name of the Redshift Cluster IAM Roles.
  /// [defaultIamRoleArn] The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  /// [iamRoleArns] A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterIamRolesState({
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? defaultIamRoleArn,
    pulumi.Output<List<String>>? iamRoleArns,
    pulumi.Output<String>? region,
  }) :
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      defaultIamRoleArn = pulumi.Input.asOptionalInput<String>(defaultIamRoleArn),
      iamRoleArns = pulumi.Input.asOptionalInput<List<String>>(iamRoleArns),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': ?clusterIdentifier,
      'defaultIamRoleArn': ?defaultIamRoleArn,
      'iamRoleArns': ?iamRoleArns,
      'region': ?region,
    };
  }

  factory ClusterIamRolesState.fromMap(Map<String, dynamic> map) {
    return ClusterIamRolesState(
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      defaultIamRoleArn: map['defaultIamRoleArn'] == null ? null : pulumi.Output.create<String>(map['defaultIamRoleArn'] as String),
      iamRoleArns: map['iamRoleArns'] == null ? null : pulumi.Output.create<List<String>>((map['iamRoleArns'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

