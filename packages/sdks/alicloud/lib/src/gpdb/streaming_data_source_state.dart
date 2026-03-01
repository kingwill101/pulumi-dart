// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamingDataSource resources.
class StreamingDataSourceState {
  /// Creation time
  final pulumi.Input<String>? createTime;
  /// The configurations of the data source.
  final pulumi.Input<String>? dataSourceConfig;
  /// The description of the data source.
  final pulumi.Input<String>? dataSourceDescription;
  /// The data source ID.
  final pulumi.Input<String>? dataSourceId;
  /// Data Source Name
  final pulumi.Input<String>? dataSourceName;
  /// Data Source Type
  final pulumi.Input<String>? dataSourceType;
  /// The instance ID.
  ///
  /// > **NOTE:**   You can call the [DescribeDBInstances](https://www.alibabacloud.com/help/en/doc-detail/196830.html) operation to query the information about all AnalyticDB for PostgreSQL instances within a region, including instance IDs.
  final pulumi.Input<String>? dbInstanceId;
  /// The real-time data service ID.
  final pulumi.Input<int>? serviceId;
  /// Service Status:
  final pulumi.Input<String>? status;

  /// Creates a new [StreamingDataSourceState].
  /// [createTime] Creation time
  /// [dataSourceConfig] The configurations of the data source.
  /// [dataSourceDescription] The description of the data source.
  /// [dataSourceId] The data source ID.
  /// [dataSourceName] Data Source Name
  /// [dataSourceType] Data Source Type
  /// [dbInstanceId] The instance ID.
  /// [serviceId] The real-time data service ID.
  /// [status] Service Status:
  StreamingDataSourceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSourceConfig,
    pulumi.Output<String>? dataSourceDescription,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<String>? dataSourceName,
    pulumi.Output<String>? dataSourceType,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<int>? serviceId,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSourceConfig = pulumi.Input.asOptionalInput<String>(dataSourceConfig),
      dataSourceDescription = pulumi.Input.asOptionalInput<String>(dataSourceDescription),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      dataSourceType = pulumi.Input.asOptionalInput<String>(dataSourceType),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      serviceId = pulumi.Input.asOptionalInput<int>(serviceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSourceConfig': ?dataSourceConfig,
      'dataSourceDescription': ?dataSourceDescription,
      'dataSourceId': ?dataSourceId,
      'dataSourceName': ?dataSourceName,
      'dataSourceType': ?dataSourceType,
      'dbInstanceId': ?dbInstanceId,
      'serviceId': ?serviceId,
      'status': ?status,
    };
  }

  factory StreamingDataSourceState.fromMap(Map<String, dynamic> map) {
    return StreamingDataSourceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSourceConfig: map['dataSourceConfig'] == null ? null : pulumi.Output.create<String>(map['dataSourceConfig'] as String),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : pulumi.Output.create<String>(map['dataSourceDescription'] as String),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      dataSourceType: map['dataSourceType'] == null ? null : pulumi.Output.create<String>(map['dataSourceType'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<int>(map['serviceId'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

