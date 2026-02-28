// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_access_entry_get_access_entry_args_doc}
/// Arguments for getAccessEntry.
/// {@endtemplate}
/// {@macro pulumi_eks_get_access_entry_get_access_entry_args_doc}
class GetAccessEntryArgs {
  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final pulumi.Input<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GetAccessEntryArgs].
  /// [clusterName] Name of the EKS Cluster.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  GetAccessEntryArgs({
    required String clusterName,
    required String principalArn,
    String? region,
    Map<String, String>? tags,
    Map<String, String>? tagsAll,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      principalArn = pulumi.Input.asInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'principalArn': principalArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory GetAccessEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessEntryArgs(
      clusterName: map['clusterName'] as String,
      principalArn: map['principalArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tagsAll: map['tagsAll'] == null ? null : (map['tagsAll'] as Map).cast<String, String>(),
    );
  }
}

