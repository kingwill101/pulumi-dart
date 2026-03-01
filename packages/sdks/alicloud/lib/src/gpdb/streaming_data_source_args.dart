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
    required pulumi.Output<String> dataSourceConfig,
    pulumi.Output<String>? dataSourceDescription,
    required pulumi.Output<String> dataSourceName,
    required pulumi.Output<String> dataSourceType,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<int> serviceId,
  }) :
      dataSourceConfig = pulumi.Input.asInput<String>(dataSourceConfig),
      dataSourceDescription = pulumi.Input.asOptionalInput<String>(dataSourceDescription),
      dataSourceName = pulumi.Input.asInput<String>(dataSourceName),
      dataSourceType = pulumi.Input.asInput<String>(dataSourceType),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      serviceId = pulumi.Input.asInput<int>(serviceId);

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
      dataSourceConfig: pulumi.Output.create<String>(map['dataSourceConfig'] as String),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : pulumi.Output.create<String>(map['dataSourceDescription'] as String),
      dataSourceName: pulumi.Output.create<String>(map['dataSourceName'] as String),
      dataSourceType: pulumi.Output.create<String>(map['dataSourceType'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      serviceId: pulumi.Output.create<int>(map['serviceId'] as int),
    );
  }
}

