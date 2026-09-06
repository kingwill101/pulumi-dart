// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Data Lake data destination for Analytics Connector.
class AnalyticsConnectorDataLakeDataDestinationResponse {
  /// The name for the Data Lake.
  final pulumi.Input<String> dataLakeName;
  /// Name of data destination.
  final pulumi.Input<String?>? name;
  /// Type of data destination.
  /// Expected value is 'datalake'.
  final pulumi.Input<String> type;

  /// Creates a new [AnalyticsConnectorDataLakeDataDestinationResponse].
  /// [dataLakeName] The name for the Data Lake.
  /// [name] Name of data destination.
  /// [type] Type of data destination.
  const AnalyticsConnectorDataLakeDataDestinationResponse({
    required this.dataLakeName,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeName': dataLakeName,
      'name': ?name,
      'type': type,
    };
  }

  factory AnalyticsConnectorDataLakeDataDestinationResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticsConnectorDataLakeDataDestinationResponse(
      dataLakeName: pulumi.Input.fromValue(map['dataLakeName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
