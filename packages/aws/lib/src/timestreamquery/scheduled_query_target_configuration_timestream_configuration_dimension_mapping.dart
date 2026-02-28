// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping {
  /// Type for the dimension. Valid value: `VARCHAR`.
  final String dimensionValueType;
  /// Column name from query result.
  final String name;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping].
  /// [dimensionValueType] Type for the dimension. Valid value: `VARCHAR`.
  /// [name] Column name from query result.
  ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping({
    required this.dimensionValueType,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionValueType': dimensionValueType,
      'name': name,
    };
  }

  factory ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping(
      dimensionValueType: map['dimensionValueType'] as String,
      name: map['name'] as String,
    );
  }
}

