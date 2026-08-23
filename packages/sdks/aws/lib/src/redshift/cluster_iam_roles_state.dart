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
  const ClusterIamRolesState({
    this.clusterIdentifier,
    this.defaultIamRoleArn,
    this.iamRoleArns,
    this.region,
  });

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
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultIamRoleArn: (() { final guardedValue = map['defaultIamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArns: (() { final guardedValue = map['iamRoleArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
