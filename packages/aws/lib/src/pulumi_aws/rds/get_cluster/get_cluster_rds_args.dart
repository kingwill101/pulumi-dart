// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterRdsArgs {
  /// Cluster identifier of the RDS cluster.
  final pulumi.Input<String> clusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetClusterRdsArgs({
    required this.clusterIdentifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetClusterRdsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterRdsArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
