// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_cluster_configuration.dart';

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// The ARN of the snapshot.
  final pulumi.Input<String>? arn;
  /// The configuration of the cluster from which the snapshot was taken.
  final pulumi.Input<List<SnapshotClusterConfiguration>>? clusterConfigurations;
  /// Name of the MemoryDB cluster to take a snapshot of.
  final pulumi.Input<String>? clusterName;
  /// ARN of the KMS key used to encrypt the snapshot at rest.
  final pulumi.Input<String>? kmsKeyArn;
  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Indicates whether the snapshot is from an automatic backup (`automated`) or was created manually (`manual`).
  final pulumi.Input<String>? source;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SnapshotState].
  /// [arn] The ARN of the snapshot.
  /// [clusterConfigurations] The configuration of the cluster from which the snapshot was taken.
  /// [clusterName] Name of the MemoryDB cluster to take a snapshot of.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the snapshot at rest.
  /// [name] Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] Indicates whether the snapshot is from an automatic backup (`automated`) or was created manually (`manual`).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SnapshotState({
    this.arn,
    this.clusterConfigurations,
    this.clusterName,
    this.kmsKeyArn,
    this.name,
    this.namePrefix,
    this.region,
    this.source,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterConfigurations': ?pulumi.Input.mapOptionalInputValue<List<SnapshotClusterConfiguration>, List<Map<String, dynamic>>>(clusterConfigurations, (value) => pulumi.Input.encodeList<SnapshotClusterConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterName': ?clusterName,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'source': ?source,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      clusterConfigurations: map['clusterConfigurations'] == null ? null : (pulumi.Input.decodeList<SnapshotClusterConfiguration>(map['clusterConfigurations'], (value) => SnapshotClusterConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

