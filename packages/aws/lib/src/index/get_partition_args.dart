// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_partition_get_partition_args_doc}
/// Arguments for getPartition.
/// {@endtemplate}
/// {@macro pulumi_index_get_partition_get_partition_args_doc}
class GetPartitionArgs {
  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final pulumi.Input<String>? id;

  /// Creates a new [GetPartitionArgs].
  /// [id] Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  GetPartitionArgs({String? id})
    : id = pulumi.Input.asOptionalInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(id: map['id'] == null ? null : map['id'] as String);
  }
}
