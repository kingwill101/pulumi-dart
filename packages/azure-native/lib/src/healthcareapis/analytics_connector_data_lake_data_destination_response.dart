// ignore_for_file: unused_element, unnecessary_cast


/// The Data Lake data destination for Analytics Connector.
class AnalyticsConnectorDataLakeDataDestinationResponse {
  /// The name for the Data Lake.
  final String dataLakeName;
  /// Name of data destination.
  final String? name;
  /// Type of data destination.
  /// Expected value is 'datalake'.
  final String type;

  /// Creates a new [AnalyticsConnectorDataLakeDataDestinationResponse].
  /// [dataLakeName] The name for the Data Lake.
  /// [name] Name of data destination.
  /// [type] Type of data destination.
  AnalyticsConnectorDataLakeDataDestinationResponse({
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
      dataLakeName: map['dataLakeName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}

