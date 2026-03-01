// ignore_for_file: unused_element, unnecessary_cast

import 'hbase_cluster_roles_worker_node_autoscale_recurrence.dart';

class HBaseClusterRolesWorkerNodeAutoscale {
  /// A `recurrence` block as defined below.
  ///
  /// > **Note:** Either a `capacity` or `recurrence` block must be specified - but not both.
  final HBaseClusterRolesWorkerNodeAutoscaleRecurrence? recurrence;

  /// Creates a new [HBaseClusterRolesWorkerNodeAutoscale].
  /// [recurrence] A `recurrence` block as defined below.
  HBaseClusterRolesWorkerNodeAutoscale({
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory HBaseClusterRolesWorkerNodeAutoscale.fromMap(Map<String, dynamic> map) {
    return HBaseClusterRolesWorkerNodeAutoscale(
      recurrence: map['recurrence'] == null ? null : HBaseClusterRolesWorkerNodeAutoscaleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

