// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_partition_partition_args_doc}
/// The set of arguments for Partition.
/// {@endtemplate}
/// {@macro pulumi_index_partition_partition_args_doc}
class PartitionArgs {
  /// Description of the partition.
  final pulumi.Input<String>? description;
  /// Name of the partition.
  final pulumi.Input<String> name;
  /// Route domain id of the partition.
  final pulumi.Input<int>? routeDomainId;

  /// Creates a new [PartitionArgs].
  /// [description] Description of the partition.
  /// [name] Name of the partition.
  /// [routeDomainId] Route domain id of the partition.
  PartitionArgs({
    String? description,
    required String name,
    int? routeDomainId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      routeDomainId = pulumi.Input.asOptionalInput<int>(routeDomainId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'routeDomainId': ?routeDomainId,
    };
  }

  factory PartitionArgs.fromMap(Map<String, dynamic> map) {
    return PartitionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      routeDomainId: map['routeDomainId'] == null ? null : map['routeDomainId'] as int,
    );
  }
}

