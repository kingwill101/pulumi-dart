// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_instance_partition_instance_partition_args_doc}
/// The set of arguments for InstancePartition.
/// {@endtemplate}
/// {@macro pulumi_spanner_instance_partition_instance_partition_args_doc}
class InstancePartitionArgs {
  /// The name of the instance partition's configuration (similar to a region) which
  /// defines the geographic placement and replication of data in this instance partition.
  final pulumi.Input<String> config;
  /// The descriptive name for this instance partition as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String> displayName;
  /// The instance to create the instance partition in.
  final pulumi.Input<String> instance;
  /// A unique identifier for the instance partition, which cannot be changed after
  /// the instance partition is created. The name must be between 2 and 64 characters
  /// and match the regular expression [a-z][a-z0-9\\-]{0,61}[a-z0-9].
  final pulumi.Input<String>? name;
  /// The number of nodes allocated to this instance partition. One node equals
  /// 1000 processing units. Exactly one of either node_count or processing_units
  /// must be present.
  final pulumi.Input<int>? nodeCount;
  /// The number of processing units allocated to this instance partition.
  /// Exactly one of either node_count or processing_units must be present.
  final pulumi.Input<int>? processingUnits;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InstancePartitionArgs].
  /// [config] The name of the instance partition's configuration (similar to a region) which
  /// [displayName] The descriptive name for this instance partition as it appears in UIs.
  /// [instance] The instance to create the instance partition in.
  /// [name] A unique identifier for the instance partition, which cannot be changed after
  /// [nodeCount] The number of nodes allocated to this instance partition. One node equals
  /// [processingUnits] The number of processing units allocated to this instance partition.
  /// [project] The ID of the project in which the resource belongs.
  InstancePartitionArgs({
    required String config,
    required String displayName,
    required String instance,
    String? name,
    int? nodeCount,
    int? processingUnits,
    String? project,
  }) :
      config = pulumi.Input.asInput<String>(config),
      displayName = pulumi.Input.asInput<String>(displayName),
      instance = pulumi.Input.asInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      processingUnits = pulumi.Input.asOptionalInput<int>(processingUnits),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'displayName': displayName,
      'instance': instance,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'processingUnits': ?processingUnits,
      'project': ?project,
    };
  }

  factory InstancePartitionArgs.fromMap(Map<String, dynamic> map) {
    return InstancePartitionArgs(
      config: map['config'] as String,
      displayName: map['displayName'] as String,
      instance: map['instance'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      processingUnits: map['processingUnits'] == null ? null : map['processingUnits'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

