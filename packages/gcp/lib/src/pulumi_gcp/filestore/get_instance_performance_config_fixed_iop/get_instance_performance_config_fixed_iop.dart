// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePerformanceConfigFixedIop {
  /// The number of IOPS to provision for the instance.<span pulumi-lang-nodejs="
  /// maxIops " pulumi-lang-dotnet="
  /// MaxIops " pulumi-lang-go="
  /// maxIops " pulumi-lang-python="
  /// max_iops " pulumi-lang-yaml="
  /// maxIops " pulumi-lang-java="
  /// maxIops ">
  /// max_iops </span>must be in multiple of 1000.
  final int maxIops;

  GetInstancePerformanceConfigFixedIop({
    required this.maxIops,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxIops'] = maxIops;
    return map;
  }

  factory GetInstancePerformanceConfigFixedIop.fromMap(
      Map<String, dynamic> map) {
    return GetInstancePerformanceConfigFixedIop(
      maxIops: map['maxIops'] as int,
    );
  }
}
