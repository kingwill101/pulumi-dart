// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhsmv2_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_cloudhsmv2_cluster_cluster_args_doc}
class ClusterArgs {
  /// The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  final pulumi.Input<String> hsmType;
  /// The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsm_type` is `hsm2m.medium`.
  final pulumi.Input<String>? mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of Cloud HSM v2 cluster backup to be restored.
  final pulumi.Input<String>? sourceBackupIdentifier;
  /// The IDs of subnets in which cluster will operate.
  final pulumi.Input<List<String>> subnetIds;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [hsmType] The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  /// [mode] The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsm_type` is `hsm2m.medium`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceBackupIdentifier] ID of Cloud HSM v2 cluster backup to be restored.
  /// [subnetIds] The IDs of subnets in which cluster will operate.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterArgs({
    required this.hsmType,
    this.mode,
    this.region,
    this.sourceBackupIdentifier,
    required this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hsmType': hsmType,
      'mode': ?mode,
      'region': ?region,
      'sourceBackupIdentifier': ?sourceBackupIdentifier,
      'subnetIds': subnetIds,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      hsmType: (map['hsmType'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceBackupIdentifier: map['sourceBackupIdentifier'] == null ? null : (map['sourceBackupIdentifier'] as String).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

