// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessEntry.
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

  GetAccessEntryArgs({
    required this.clusterName,
    required this.principalArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['principalArn'] = principalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tagsAllValue = tagsAll;
    if (tagsAllValue != null) {
      map['tagsAll'] = tagsAllValue;
    }
    return map;
  }

  factory GetAccessEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessEntryArgs(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      principalArn: pulumi.Input.asInput<String>(map['principalArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tagsAll:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['tagsAll']),
    );
  }
}
