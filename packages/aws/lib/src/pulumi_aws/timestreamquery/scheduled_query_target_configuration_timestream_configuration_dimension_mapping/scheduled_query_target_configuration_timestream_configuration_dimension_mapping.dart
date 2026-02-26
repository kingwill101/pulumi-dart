// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping {
  /// Type for the dimension. Valid value: `VARCHAR`.
  final String dimensionValueType;

  /// Column name from query result.
  final String name;

  ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping({
    required this.dimensionValueType,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensionValueType'] = dimensionValueType;
    map['name'] = name;
    return map;
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping(
      dimensionValueType: map['dimensionValueType'] as String,
      name: map['name'] as String,
    );
  }
}
