// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;

/// Defines how Kubernetes pods are executed in Fargate. See aws.eks.FargateProfileArgs for reference.
class FargateProfile {
  /// Specify a custom role to use for executing pods in Fargate. Defaults to creating a new role with the `arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy` policy attached.
  final String? podExecutionRoleArn;
  /// Specify the namespace and label selectors to use for launching pods into Fargate.
  final List<pulumi_aws_eks.FargateProfileSelector>? selectors;
  /// Specify the subnets in which to execute Fargate tasks for pods. Defaults to the private subnets associated with the cluster.
  final List<String>? subnetIds;

  /// Creates a new [FargateProfile].
  /// [podExecutionRoleArn] Specify a custom role to use for executing pods in Fargate. Defaults to creating a new role with the `arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy` policy attached.
  /// [selectors] Specify the namespace and label selectors to use for launching pods into Fargate.
  /// [subnetIds] Specify the subnets in which to execute Fargate tasks for pods. Defaults to the private subnets associated with the cluster.
  FargateProfile({
    this.podExecutionRoleArn,
    this.selectors,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podExecutionRoleArn': ?podExecutionRoleArn,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<pulumi_aws_eks.FargateProfileSelector, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'subnetIds': ?subnetIds,
    };
  }

  factory FargateProfile.fromMap(Map<String, dynamic> map) {
    return FargateProfile(
      podExecutionRoleArn: map['podExecutionRoleArn'] == null ? null : map['podExecutionRoleArn'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<pulumi_aws_eks.FargateProfileSelector>(map['selectors'], (value) => pulumi_aws_eks.FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>())),
      subnetIds: map['subnetIds'] == null ? null : (map['subnetIds'] as List).cast<String>(),
    );
  }
}

