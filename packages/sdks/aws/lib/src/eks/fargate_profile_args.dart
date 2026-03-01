// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_profile_selector.dart';

/// {@template pulumi_eks_fargate_profile_fargate_profile_args_doc}
/// The set of arguments for FargateProfile.
/// {@endtemplate}
/// {@macro pulumi_eks_fargate_profile_fargate_profile_args_doc}
class FargateProfileArgs {
  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;
  /// Name of the EKS Fargate Profile.
  final pulumi.Input<String>? fargateProfileName;
  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile.
  final pulumi.Input<String> podExecutionRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  final pulumi.Input<List<FargateProfileSelector>> selectors;
  /// Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FargateProfileArgs].
  /// [clusterName] Name of the EKS Cluster.
  /// [fargateProfileName] Name of the EKS Fargate Profile.
  /// [podExecutionRoleArn] Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [selectors] Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  /// [subnetIds] Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FargateProfileArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? fargateProfileName,
    required pulumi.Output<String> podExecutionRoleArn,
    pulumi.Output<String>? region,
    required pulumi.Output<List<FargateProfileSelector>> selectors,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      fargateProfileName = pulumi.Input.asOptionalInput<String>(fargateProfileName),
      podExecutionRoleArn = pulumi.Input.asInput<String>(podExecutionRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      selectors = pulumi.Input.asInput<List<FargateProfileSelector>>(selectors),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'fargateProfileName': ?fargateProfileName,
      'podExecutionRoleArn': podExecutionRoleArn,
      'region': ?region,
      'selectors': pulumi.Input.mapInputValue<List<FargateProfileSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<FargateProfileSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
    };
  }

  factory FargateProfileArgs.fromMap(Map<String, dynamic> map) {
    return FargateProfileArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      fargateProfileName: map['fargateProfileName'] == null ? null : pulumi.Output.create<String>(map['fargateProfileName'] as String),
      podExecutionRoleArn: pulumi.Output.create<String>(map['podExecutionRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selectors: pulumi.Output.create<List<FargateProfileSelector>>(pulumi.Input.decodeList<FargateProfileSelector>(map['selectors'], (value) => FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>()))),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

