// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_streaming_data_source_streaming_data_source_args_doc}
/// The set of arguments for StreamingDataSource.
/// {@endtemplate}
/// {@macro pulumi_gpdb_streaming_data_source_streaming_data_source_args_doc}
class StreamingDataSourceArgs {
  /// The configurations of the data source.
  final pulumi.Input<String> dataSourceConfig;
  /// The description of the data source.
  final pulumi.Input<String>? dataSourceDescription;
  /// Data Source Name
  final pulumi.Input<String> dataSourceName;
  /// Data Source Type
  final pulumi.Input<String> dataSourceType;
  /// The instance ID.
  ///
  /// > **NOTE:**   You can call the [DescribeDBInstances](https://www.alibabacloud.com/help/en/doc-detail/196830.html) operation to query the information about all AnalyticDB for PostgreSQL instances within a region, including instance IDs.
  final pulumi.Input<String> dbInstanceId;
  /// The real-time data service ID.
  final pulumi.Input<int> serviceId;

  /// Creates a new [StreamingDataSourceArgs].
  /// [dataSourceConfig] The configurations of the data source.
  /// [dataSourceDescription] The description of the data source.
  /// [dataSourceName] Data Source Name
  /// [dataSourceType] Data Source Type
  /// [dbInstanceId] The instance ID.
  /// [serviceId] The real-time data service ID.
  StreamingDataSourceArgs({
    required this.dataSourceConfig,
    this.dataSourceDescription,
    required this.dataSourceName,
    required this.dataSourceType,
    required this.dbInstanceId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceConfig': dataSourceConfig,
      'dataSourceDescription': ?dataSourceDescription,
      'dataSourceName': dataSourceName,
      'dataSourceType': dataSourceType,
      'dbInstanceId': dbInstanceId,
      'serviceId': serviceId,
    };
  }

  factory StreamingDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return StreamingDataSourceArgs(
      dataSourceConfig: (map['dataSourceConfig'] as String).input(),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : (map['dataSourceDescription']! as String).input(),
      dataSourceName: (map['dataSourceName'] as String).input(),
      dataSourceType: (map['dataSourceType'] as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      serviceId: (map['serviceId'] as int).input(),
    );
  }
}

