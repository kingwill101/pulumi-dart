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
      'clusterConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<SnapshotClusterConfiguration>,
            List<Map<String, dynamic>>
          >(
            clusterConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  SnapshotClusterConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterConfigurations: (() {
        final guardedValue = map['clusterConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SnapshotClusterConfiguration>(
            guardedValue,
            (value) => SnapshotClusterConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
