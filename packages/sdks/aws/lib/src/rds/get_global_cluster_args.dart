// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_global_cluster_get_global_cluster_args_doc}
/// Arguments for getGlobalCluster.
/// {@endtemplate}
/// {@macro pulumi_rds_get_global_cluster_get_global_cluster_args_doc}
class GetGlobalClusterArgs {
  /// The global cluster identifier of the RDS global cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetGlobalClusterArgs].
  /// [identifier] The global cluster identifier of the RDS global cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetGlobalClusterArgs({
    required this.identifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'region': ?region,
    };
  }

  factory GetGlobalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalClusterArgs(
      identifier: (map['identifier'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

