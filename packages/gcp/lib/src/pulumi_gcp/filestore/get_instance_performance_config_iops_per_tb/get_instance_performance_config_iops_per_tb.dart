// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePerformanceConfigIopsPerTb {
  /// The instance max IOPS will be calculated by multiplying
  /// the capacity of the instance (TB) by max_iops_per_tb,
  /// and rounding to the nearest 1000. The instance max IOPS
  /// will be changed dynamically based on the instance
  /// capacity.
  final int maxIopsPerTb;

  GetInstancePerformanceConfigIopsPerTb({
    required this.maxIopsPerTb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxIopsPerTb'] = maxIopsPerTb;
    return map;
  }

  factory GetInstancePerformanceConfigIopsPerTb.fromMap(
      Map<String, dynamic> map) {
    return GetInstancePerformanceConfigIopsPerTb(
      maxIopsPerTb: map['maxIopsPerTb'] as int,
    );
  }
}
