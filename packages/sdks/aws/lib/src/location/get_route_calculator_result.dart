// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRouteCalculator.
class GetRouteCalculatorResult {
  /// ARN for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  final String? calculatorArn;
  final String? calculatorName;
  /// Timestamp for when the route calculator resource was created in ISO 8601 format.
  final String? createTime;
  /// Data provider of traffic and road network data.
  final String? dataSource;
  /// Optional description of the route calculator resource.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Key-value map of resource tags for the route calculator.
  final Map<String, String>? tags;
  /// Timestamp for when the route calculator resource was last updated in ISO 8601 format.
  final String? updateTime;

  /// Creates a new [GetRouteCalculatorResult].
  /// [calculatorArn] ARN for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  /// [calculatorName] Optional.
  /// [createTime] Timestamp for when the route calculator resource was created in ISO 8601 format.
  /// [dataSource] Data provider of traffic and road network data.
  /// [description] Optional description of the route calculator resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the route calculator.
  /// [updateTime] Timestamp for when the route calculator resource was last updated in ISO 8601 format.
  const GetRouteCalculatorResult({
    this.calculatorArn,
    this.calculatorName,
    this.createTime,
    this.dataSource,
    this.description,
    this.id,
    this.region,
    this.tags,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calculatorArn': ?calculatorArn,
      'calculatorName': ?calculatorName,
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'description': ?description,
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
      'updateTime': ?updateTime,
    };
  }

  factory GetRouteCalculatorResult.fromMap(Map<String, dynamic> map) {
    return GetRouteCalculatorResult(
      calculatorArn: (() { final guardedValue = map['calculatorArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      calculatorName: (() { final guardedValue = map['calculatorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
