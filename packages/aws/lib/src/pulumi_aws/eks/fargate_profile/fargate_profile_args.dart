// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fargate_profile_selector/fargate_profile_selector.dart';

/// The set of arguments for FargateProfile.
class FargateProfileArgs {
  /// Name of the EKS Cluster.
  final Input<String> clusterName;

  /// Name of the EKS Fargate Profile.
  final Input<String>? fargateProfileName;

  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile.
  final Input<String> podExecutionRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  final Input<List<FargateProfileSelector>> selectors;

  /// Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  ///
  /// The following arguments are optional:
  final Input<List<String>>? subnetIds;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    map['selectors'] = Input.mapInputValue<List<FargateProfileSelector>,
            List<Map<String, dynamic>>>(
        selectors,
        (value) =>
            Input.encodeList<FargateProfileSelector, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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
      clusterName: Input.asInput<String>(map['clusterName']),
      fargateProfileName:
          Input.asOptionalInput<String>(map['fargateProfileName']),
      podExecutionRoleArn: Input.asInput<String>(map['podExecutionRoleArn']),
      region: Input.asOptionalInput<String>(map['region']),
      selectors: Input.asInput<List<FargateProfileSelector>>(map['selectors']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
