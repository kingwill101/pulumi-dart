// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fargate_profile_selector/fargate_profile_selector.dart';

/// The set of arguments for FargateProfile.
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

  FargateProfileArgs({
    required this.clusterName,
    this.fargateProfileName,
    required this.podExecutionRoleArn,
    this.region,
    required this.selectors,
    this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final fargateProfileNameValue = fargateProfileName;
    if (fargateProfileNameValue != null) {
      map['fargateProfileName'] = fargateProfileNameValue;
    }
    map['podExecutionRoleArn'] = podExecutionRoleArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selectors'] = pulumi.Input.mapInputValue<List<FargateProfileSelector>,
            List<Map<String, dynamic>>>(
        selectors,
        (value) => pulumi.Input.encodeList<FargateProfileSelector,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FargateProfileArgs.fromMap(Map<String, dynamic> map) {
    return FargateProfileArgs(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      fargateProfileName:
          pulumi.Input.asOptionalInput<String>(map['fargateProfileName']),
      podExecutionRoleArn:
          pulumi.Input.asInput<String>(map['podExecutionRoleArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      selectors:
          pulumi.Input.asInput<List<FargateProfileSelector>>(map['selectors']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
