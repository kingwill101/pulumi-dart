// ignore_for_file: unused_element, unnecessary_cast

class GetJobQueueComputeEnvironmentOrder {
  final String computeEnvironment;
  final int order;

  /// Creates a new [GetJobQueueComputeEnvironmentOrder].
  /// [computeEnvironment] Required.
  /// [order] Required.
  GetJobQueueComputeEnvironmentOrder({
    required this.computeEnvironment,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeEnvironment'] = computeEnvironment;
    map['order'] = order;
    return map;
  }

  factory GetJobQueueComputeEnvironmentOrder.fromMap(Map<String, dynamic> map) {
    return GetJobQueueComputeEnvironmentOrder(
      computeEnvironment: map['computeEnvironment'] as String,
      order: map['order'] as int,
    );
  }
}
