// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRouteCalculator.
class GetRouteCalculatorResult {
  /// ARN for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  final String calculatorArn;
  final String calculatorName;

  /// Timestamp for when the route calculator resource was created in ISO 8601 format.
  final String createTime;

  /// Data provider of traffic and road network data.
  final String dataSource;

  /// Optional description of the route calculator resource.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Key-value map of resource tags for the route calculator.
  final Map<String, String> tags;

  /// Timestamp for when the route calculator resource was last updated in ISO 8601 format.
  final String updateTime;

  GetRouteCalculatorResult({
    required this.calculatorArn,
    required this.calculatorName,
    required this.createTime,
    required this.dataSource,
    required this.description,
    required this.id,
    required this.region,
    required this.tags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['calculatorArn'] = calculatorArn;
    map['calculatorName'] = calculatorName;
    map['createTime'] = createTime;
    map['dataSource'] = dataSource;
    map['description'] = description;
    map['id'] = id;
    map['region'] = region;
    map['tags'] = tags;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRouteCalculatorResult.fromMap(Map<String, dynamic> map) {
    return GetRouteCalculatorResult(
      calculatorArn: map['calculatorArn'] as String,
      calculatorName: map['calculatorName'] as String,
      createTime: map['createTime'] as String,
      dataSource: map['dataSource'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
