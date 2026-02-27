import 'package:pulumi/pulumi.dart';
import '../snapshot_cluster_configuration/snapshot_cluster_configuration.dart';
import 'snapshot_args2.dart';

/// Provides a MemoryDB Snapshot.
///
/// More information about snapshot and restore can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/snapshots.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a snapshot using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/snapshot:Snapshot example my-snapshot
/// ```
class Snapshot2 extends CustomResource {
  /// The ARN of the snapshot.
  late final Output<String> arn;

  /// The configuration of the cluster from which the snapshot was taken.
  late final Output<List<SnapshotClusterConfiguration>> clusterConfigurations;

  /// Name of the MemoryDB cluster to take a snapshot of.
  late final Output<String> clusterName;

  /// ARN of the KMS key used to encrypt the snapshot at rest.
  late final Output<String?> kmsKeyArn;

  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether the snapshot is from an automatic backup (`automated`) or was created manually (`manual`).
  late final Output<String> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Snapshot2(
    String name, {
    SnapshotArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterConfigurations =
        registerOutput<List<SnapshotClusterConfiguration>>(
            'clusterConfigurations');
    this.clusterName = registerOutput<String>('clusterName');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.source = registerOutput<String>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
