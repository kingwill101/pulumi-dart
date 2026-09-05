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
  final pulumi.Input<String?>? region;
  final pulumi.Input<Map<String, String>?>? tags;
  /// (Optional) Key-value map of resource tags, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [GetAccessEntryArgs].
  /// [clusterName] Name of the EKS Cluster.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] (Optional) Key-value map of resource tags, including those inherited from the provider `defaultTags` configuration block.
  const GetAccessEntryArgs({
    required this.clusterName,
    required this.principalArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      principalArn: pulumi.Input.fromValue(map['principalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
