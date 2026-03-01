// ignore_for_file: unused_element, unnecessary_cast


/// The Data Lake data destination for Analytics Connector.
class AnalyticsConnectorDataLakeDataDestination {
  /// The name for the Data Lake.
  final String dataLakeName;
  /// Name of data destination.
  final String? name;
  /// Type of data destination.
  /// Expected value is 'datalake'.
  final String type;

  /// Creates a new [AnalyticsConnectorDataLakeDataDestination].
  /// [dataLakeName] The name for the Data Lake.
  /// [name] Name of data destination.
  /// [type] Type of data destination.
  AnalyticsConnectorDataLakeDataDestination({
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

  factory AnalyticsConnectorDataLakeDataDestination.fromMap(Map<String, dynamic> map) {
    return AnalyticsConnectorDataLakeDataDestination(
      dataLakeName: map['dataLakeName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}

