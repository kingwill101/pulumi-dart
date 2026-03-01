// ignore_for_file: unused_element, unnecessary_cast

import 'spark_cluster_roles_worker_node_autoscale_capacity.dart';
import 'spark_cluster_roles_worker_node_autoscale_recurrence.dart';

class SparkClusterRolesWorkerNodeAutoscale {
  /// A `capacity` block as defined below.
  final SparkClusterRolesWorkerNodeAutoscaleCapacity? capacity;
  /// A `recurrence` block as defined below.
  ///
  /// > **Note:** Either a `capacity` or `recurrence` block must be specified - but not both.
  final SparkClusterRolesWorkerNodeAutoscaleRecurrence? recurrence;

  /// Creates a new [SparkClusterRolesWorkerNodeAutoscale].
  /// [capacity] A `capacity` block as defined below.
  /// [recurrence] A `recurrence` block as defined below.
  SparkClusterRolesWorkerNodeAutoscale({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory SparkClusterRolesWorkerNodeAutoscale.fromMap(Map<String, dynamic> map) {
    return SparkClusterRolesWorkerNodeAutoscale(
      capacity: map['capacity'] == null ? null : SparkClusterRolesWorkerNodeAutoscaleCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : SparkClusterRolesWorkerNodeAutoscaleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

