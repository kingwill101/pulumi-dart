// ignore_for_file: unused_element, unnecessary_cast

class JobQueueComputeEnvironmentOrder {
  /// The Amazon Resource Name (ARN) of the compute environment.
  final String computeEnvironment;

  /// The order of the compute environment. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.
  final int order;

  JobQueueComputeEnvironmentOrder({
    required this.computeEnvironment,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeEnvironment'] = computeEnvironment;
    map['order'] = order;
    return map;
  }

  factory JobQueueComputeEnvironmentOrder.fromMap(Map<String, dynamic> map) {
    return JobQueueComputeEnvironmentOrder(
      computeEnvironment: map['computeEnvironment'] as String,
      order: map['order'] as int,
    );
  }
}
