// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_profile_selector.dart';

/// Input properties used for looking up and filtering FargateProfile resources.
class FargateProfileState {
  /// Amazon Resource Name (ARN) of the EKS Fargate Profile.
  final pulumi.Input<String>? arn;
  /// Name of the EKS Cluster.
  final pulumi.Input<String>? clusterName;
  /// Name of the EKS Fargate Profile.
  final pulumi.Input<String>? fargateProfileName;
  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile.
  final pulumi.Input<String>? podExecutionRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  final pulumi.Input<List<FargateProfileSelector>>? selectors;
  /// Status of the EKS Fargate Profile.
  final pulumi.Input<String>? status;
  /// Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FargateProfileState].
  /// [arn] Amazon Resource Name (ARN) of the EKS Fargate Profile.
  /// [clusterName] Name of the EKS Cluster.
  /// [fargateProfileName] Name of the EKS Fargate Profile.
  /// [podExecutionRoleArn] Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [selectors] Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  /// [status] Status of the EKS Fargate Profile.
  /// [subnetIds] Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FargateProfileState({
    this.arn,
    this.clusterName,
    this.fargateProfileName,
    this.podExecutionRoleArn,
    this.region,
    this.selectors,
    this.status,
    this.subnetIds,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterName': ?clusterName,
      'fargateProfileName': ?fargateProfileName,
      'podExecutionRoleArn': ?podExecutionRoleArn,
      'region': ?region,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<FargateProfileSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<FargateProfileSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FargateProfileState.fromMap(Map<String, dynamic> map) {
    return FargateProfileState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      clusterName: map['clusterName'] == null ? null : ((map['clusterName'] as String).input()).input(),
      fargateProfileName: map['fargateProfileName'] == null ? null : ((map['fargateProfileName'] as String).input()).input(),
      podExecutionRoleArn: map['podExecutionRoleArn'] == null ? null : ((map['podExecutionRoleArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      selectors: map['selectors'] == null ? null : ((pulumi.Input.decodeList<FargateProfileSelector>(map['selectors']!, (value) => FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

