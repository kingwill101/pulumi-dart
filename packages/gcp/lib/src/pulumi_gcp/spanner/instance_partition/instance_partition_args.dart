// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstancePartition.
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

  InstancePartitionArgs({
    required this.config,
    required this.displayName,
    required this.instance,
    this.name,
    this.nodeCount,
    this.processingUnits,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config;
    map['displayName'] = displayName;
    map['instance'] = instance;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final processingUnitsValue = processingUnits;
    if (processingUnitsValue != null) {
      map['processingUnits'] = processingUnitsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstancePartitionArgs.fromMap(Map<String, dynamic> map) {
    return InstancePartitionArgs(
      config: pulumi.Input.asInput<String>(map['config']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nodeCount: pulumi.Input.asOptionalInput<int>(map['nodeCount']),
      processingUnits:
          pulumi.Input.asOptionalInput<int>(map['processingUnits']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
