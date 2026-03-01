// ignore_for_file: unused_element, unnecessary_cast


class GetPoolTaskSchedulingPolicy {
  /// Supported values are `Pack` and `Spread`. `Pack` means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. `Spread` means that tasks should be assigned evenly across all nodes in the pool.
  final String nodeFillType;

  /// Creates a new [GetPoolTaskSchedulingPolicy].
  /// [nodeFillType] Supported values are `Pack` and `Spread`. `Pack` means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. `Spread` means that tasks should be assigned evenly across all nodes in the pool.
  GetPoolTaskSchedulingPolicy({
    required this.nodeFillType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeFillType': nodeFillType,
    };
  }

  factory GetPoolTaskSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return GetPoolTaskSchedulingPolicy(
      nodeFillType: map['nodeFillType'] as String,
    );
  }
}

