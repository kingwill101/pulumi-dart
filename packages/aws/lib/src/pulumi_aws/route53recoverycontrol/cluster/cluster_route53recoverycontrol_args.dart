// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Cluster.
class ClusterRoute53recoverycontrolArgs {
  /// Unique name describing the cluster.
  final pulumi.Input<String>? name;

  /// Network type of cluster. Valid values are `IPV4` and `DUALSTACK`. Defaults to `IPV4`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? networkType;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ClusterRoute53recoverycontrolArgs({
    this.name,
    this.networkType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterRoute53recoverycontrolArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRoute53recoverycontrolArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkType: pulumi.Input.asOptionalInput<String>(map['networkType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
