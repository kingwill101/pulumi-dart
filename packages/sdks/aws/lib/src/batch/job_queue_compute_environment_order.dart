// ignore_for_file: unused_element, unnecessary_cast


class JobQueueComputeEnvironmentOrder {
  /// The Amazon Resource Name (ARN) of the compute environment.
  final String computeEnvironment;
  /// The order of the compute environment. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.
  final int order;

  /// Creates a new [JobQueueComputeEnvironmentOrder].
  /// [computeEnvironment] The Amazon Resource Name (ARN) of the compute environment.
  /// [order] The order of the compute environment. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.
  JobQueueComputeEnvironmentOrder({
    required this.computeEnvironment,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEnvironment': computeEnvironment,
      'order': order,
    };
  }

  factory JobQueueComputeEnvironmentOrder.fromMap(Map<String, dynamic> map) {
    return JobQueueComputeEnvironmentOrder(
      computeEnvironment: map['computeEnvironment'] as String,
      order: map['order'] as int,
    );
  }
}

