// ignore_for_file: unused_element, unnecessary_cast

class InstancePerformanceConfigIopsPerTb {
  /// The instance max IOPS will be calculated by multiplying
  /// the capacity of the instance (TB) by max_iops_per_tb,
  /// and rounding to the nearest 1000. The instance max IOPS
  /// will be changed dynamically based on the instance
  /// capacity.
  final int? maxIopsPerTb;

  /// Creates a new [InstancePerformanceConfigIopsPerTb].
  /// [maxIopsPerTb] The instance max IOPS will be calculated by multiplying
  InstancePerformanceConfigIopsPerTb({
    this.maxIopsPerTb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxIopsPerTbValue = maxIopsPerTb;
    if (maxIopsPerTbValue != null) {
      map['maxIopsPerTb'] = maxIopsPerTbValue;
    }
    return map;
  }

  factory InstancePerformanceConfigIopsPerTb.fromMap(Map<String, dynamic> map) {
    return InstancePerformanceConfigIopsPerTb(
      maxIopsPerTb:
          map['maxIopsPerTb'] == null ? null : map['maxIopsPerTb'] as int,
    );
  }
}
