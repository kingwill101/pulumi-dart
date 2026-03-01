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
    pulumi.Output<String>? arn,
    pulumi.Output<List<SnapshotClusterConfiguration>>? clusterConfigurations,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? source,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterConfigurations = pulumi.Input.asOptionalInput<List<SnapshotClusterConfiguration>>(clusterConfigurations),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asOptionalInput<String>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterConfigurations: map['clusterConfigurations'] == null ? null : pulumi.Output.create<List<SnapshotClusterConfiguration>>(pulumi.Input.decodeList<SnapshotClusterConfiguration>(map['clusterConfigurations'], (value) => SnapshotClusterConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

