// ignore_for_file: unused_element, unnecessary_cast

class InstancePerformanceConfigFixedIops {
  /// The number of IOPS to provision for the instance.<span pulumi-lang-nodejs="
  /// maxIops " pulumi-lang-dotnet="
  /// MaxIops " pulumi-lang-go="
  /// maxIops " pulumi-lang-python="
  /// max_iops " pulumi-lang-yaml="
  /// maxIops " pulumi-lang-java="
  /// maxIops ">
  /// max_iops </span>must be in multiple of 1000.
  final int? maxIops;

  InstancePerformanceConfigFixedIops({
    this.maxIops,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxIopsValue = maxIops;
    if (maxIopsValue != null) {
      map['maxIops'] = maxIopsValue;
    }
    return map;
  }

  factory InstancePerformanceConfigFixedIops.fromMap(Map<String, dynamic> map) {
    return InstancePerformanceConfigFixedIops(
      maxIops: map['maxIops'] == null ? null : map['maxIops'] as int,
    );
  }
}
