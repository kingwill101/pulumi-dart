// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping {
  /// Type for the dimension. Valid value: `VARCHAR`.
  final pulumi.Input<String> dimensionValueType;
  /// Column name from query result.
  final pulumi.Input<String> name;

  /// Creates a new [ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping].
  /// [dimensionValueType] Type for the dimension. Valid value: `VARCHAR`.
  /// [name] Column name from query result.
  const ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping({
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
      dimensionValueType: pulumi.Input.fromValue(map['dimensionValueType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

