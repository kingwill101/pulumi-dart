import 'package:pulumi/pulumi.dart';
import 'instance_partition_args.dart';

/// A Cloud Spanner instance partition is a unit of Cloud Spanner database capacity
/// that can be used to partition data and processing capacity within an instance.
///
///
/// To get more information about InstancePartition, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances.instancePartitions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/docs/geo-partitioning)
///
/// ## Example Usage
///
/// ### Spanner Instance Partition Basic
///
///
///
///
/// ## Import
///
/// InstancePartition can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/instancePartitions/{{name}}`
///
/// * `{{project}}/{{instance}}/{{name}}`
///
/// * `{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, InstancePartition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default projects/{{project}}/instances/{{instance}}/instancePartitions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default {{project}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default {{instance}}/{{name}}
/// ```
class InstancePartition extends CustomResource {
  /// The name of the instance partition's configuration (similar to a region) which
  /// defines the geographic placement and replication of data in this instance partition.
  late final Output<String> config;

  /// The descriptive name for this instance partition as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  late final Output<String> displayName;

  /// The instance to create the instance partition in.
  late final Output<String> instance;

  /// A unique identifier for the instance partition, which cannot be changed after
  /// the instance partition is created. The name must be between 2 and 64 characters
  /// and match the regular expression [a-z][a-z0-9\\-]{0,61}[a-z0-9].
  late final Output<String> name;

  /// The number of nodes allocated to this instance partition. One node equals
  /// 1000 processing units. Exactly one of either node_count or processing_units
  /// must be present.
  late final Output<int?> nodeCount;

  /// The number of processing units allocated to this instance partition.
  /// Exactly one of either node_count or processing_units must be present.
  late final Output<int?> processingUnits;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The current instance partition state. Possible values are:
  /// CREATING: The instance partition is being created. Resources are being
  /// allocated for the instance partition.
  /// READY: The instance partition has been allocated resources and is ready for use.
  late final Output<String> state;

  InstancePartition(
    String name, {
    InstancePartitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instancePartition:InstancePartition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = registerOutput<String>('config');
    this.displayName = registerOutput<String>('displayName');
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.processingUnits = registerOutput<int?>('processingUnits');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
