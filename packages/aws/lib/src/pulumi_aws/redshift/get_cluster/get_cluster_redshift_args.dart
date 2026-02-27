// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterRedshiftArgs {
  /// Cluster identifier
  final pulumi.Input<String> clusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags associated to the cluster
  final pulumi.Input<Map<String, String>>? tags;

  GetClusterRedshiftArgs({
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

  factory GetClusterRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterRedshiftArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
