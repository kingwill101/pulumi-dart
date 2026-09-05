// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_partition_get_partition_args_doc}
/// Arguments for getPartition.
/// {@endtemplate}
/// {@macro pulumi_index_get_partition_get_partition_args_doc}
class GetPartitionArgs {
  /// (**Deprecated**) Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China). Use `partition` instead.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetPartitionArgs].
  /// [id] (**Deprecated**) Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China). Use `partition` instead.
  const GetPartitionArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
