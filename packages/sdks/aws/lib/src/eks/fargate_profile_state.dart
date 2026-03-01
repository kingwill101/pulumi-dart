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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? fargateProfileName,
    pulumi.Output<String>? podExecutionRoleArn,
    pulumi.Output<String>? region,
    pulumi.Output<List<FargateProfileSelector>>? selectors,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      fargateProfileName = pulumi.Input.asOptionalInput<String>(fargateProfileName),
      podExecutionRoleArn = pulumi.Input.asOptionalInput<String>(podExecutionRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      selectors = pulumi.Input.asOptionalInput<List<FargateProfileSelector>>(selectors),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      fargateProfileName: map['fargateProfileName'] == null ? null : pulumi.Output.create<String>(map['fargateProfileName'] as String),
      podExecutionRoleArn: map['podExecutionRoleArn'] == null ? null : pulumi.Output.create<String>(map['podExecutionRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selectors: map['selectors'] == null ? null : pulumi.Output.create<List<FargateProfileSelector>>(pulumi.Input.decodeList<FargateProfileSelector>(map['selectors'], (value) => FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

