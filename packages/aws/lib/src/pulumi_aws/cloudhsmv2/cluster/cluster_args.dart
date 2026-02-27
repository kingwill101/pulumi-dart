// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Cluster.
class ClusterArgs {
  /// The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  final Input<String> hsmType;

  /// The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsm_type` is `hsm2m.medium`.
  final Input<String>? mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of Cloud HSM v2 cluster backup to be restored.
  final Input<String>? sourceBackupIdentifier;

  /// The IDs of subnets in which cluster will operate.
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterArgs({
    required this.hsmType,
    this.mode,
    this.region,
    this.sourceBackupIdentifier,
    required this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hsmType'] = hsmType;
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceBackupIdentifierValue = sourceBackupIdentifier;
    if (sourceBackupIdentifierValue != null) {
      map['sourceBackupIdentifier'] = sourceBackupIdentifierValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      hsmType: Input.asInput<String>(map['hsmType']),
      mode: Input.asOptionalInput<String>(map['mode']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceBackupIdentifier:
          Input.asOptionalInput<String>(map['sourceBackupIdentifier']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
