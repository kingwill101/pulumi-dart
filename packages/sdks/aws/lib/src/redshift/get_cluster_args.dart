// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_redshift_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// Cluster identifier
  final pulumi.Input<String> clusterIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags associated to the cluster
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClusterArgs].
  /// [clusterIdentifier] Cluster identifier
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags associated to the cluster
  GetClusterArgs({
    required pulumi.Output<String> clusterIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterIdentifier: pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

