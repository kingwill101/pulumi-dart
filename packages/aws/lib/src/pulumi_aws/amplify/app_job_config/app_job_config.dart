// ignore_for_file: unused_element, unnecessary_cast

class AppJobConfig {
  /// Size of the build instance. Valid values: `STANDARD_8GB`, `LARGE_16GB`, and `XLARGE_72GB`. Default: `STANDARD_8GB`.
  final String? buildComputeType;

  AppJobConfig({
    this.buildComputeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildComputeTypeValue = buildComputeType;
    if (buildComputeTypeValue != null) {
      map['buildComputeType'] = buildComputeTypeValue;
    }
    return map;
  }

  factory AppJobConfig.fromMap(Map<String, dynamic> map) {
    return AppJobConfig(
      buildComputeType: map['buildComputeType'] == null
          ? null
          : map['buildComputeType'] as String,
    );
  }
}
