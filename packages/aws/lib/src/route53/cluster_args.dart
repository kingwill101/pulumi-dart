// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_recovery_control_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_control_cluster_cluster_args_doc}
class ClusterArgs {
  /// Unique name describing the cluster.
  final pulumi.Input<String>? name;

  /// Network type of cluster. Valid values are `IPV4` and `DUALSTACK`. Defaults to `IPV4`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? networkType;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [name] Unique name describing the cluster.
  /// [networkType] Network type of cluster. Valid values are `IPV4` and `DUALSTACK`. Defaults to `IPV4`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterArgs({
    String? name,
    String? networkType,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        networkType = pulumi.Input.asOptionalInput<String>(networkType),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      name: map['name'] == null ? null : map['name'] as String,
      networkType:
          map['networkType'] == null ? null : map['networkType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
