// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVirtualCluster.
class GetVirtualClusterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the cluster.
  final pulumi.Input<String> virtualClusterId;

  GetVirtualClusterArgs({
    this.region,
    this.tags,
    required this.virtualClusterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualClusterId'] = virtualClusterId;
    return map;
  }

  factory GetVirtualClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualClusterId: pulumi.Input.asInput<String>(map['virtualClusterId']),
    );
  }
}
