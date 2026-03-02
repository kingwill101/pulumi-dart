// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Data Lake data destination for Analytics Connector.
class AnalyticsConnectorDataLakeDataDestination {
  /// The name for the Data Lake.
  final pulumi.Input<String> dataLakeName;
  /// Name of data destination.
  final pulumi.Input<String>? name;
  /// Type of data destination.
  /// Expected value is 'datalake'.
  final pulumi.Input<String> type;

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
      dataLakeName: (map['dataLakeName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

