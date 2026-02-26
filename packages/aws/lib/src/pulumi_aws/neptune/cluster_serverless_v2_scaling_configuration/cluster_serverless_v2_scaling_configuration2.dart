// ignore_for_file: unused_element, unnecessary_cast

class ClusterServerlessV2ScalingConfiguration2 {
  /// Maximum Neptune Capacity Units (NCUs) for this cluster. Must be lower or equal than **128**. See [AWS Documentation](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-capacity-scaling.html) for more details.
  final double? maxCapacity;

  /// Minimum Neptune Capacity Units (NCUs) for this cluster. Must be greater or equal than **1**. See [AWS Documentation](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-capacity-scaling.html) for more details.
  final double? minCapacity;

  ClusterServerlessV2ScalingConfiguration2({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final minCapacityValue = minCapacity;
    if (minCapacityValue != null) {
      map['minCapacity'] = minCapacityValue;
    }
    return map;
  }

  factory ClusterServerlessV2ScalingConfiguration2.fromMap(
      Map<String, dynamic> map) {
    return ClusterServerlessV2ScalingConfiguration2(
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as double,
      minCapacity:
          map['minCapacity'] == null ? null : map['minCapacity'] as double,
    );
  }
}
