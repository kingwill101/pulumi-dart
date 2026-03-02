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
    this.createTime,
    this.dataSourceConfig,
    this.dataSourceDescription,
    this.dataSourceId,
    this.dataSourceName,
    this.dataSourceType,
    this.dbInstanceId,
    this.serviceId,
    this.status,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dataSourceConfig: map['dataSourceConfig'] == null ? null : (map['dataSourceConfig']! as String).input(),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : (map['dataSourceDescription']! as String).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId']! as String).input(),
      dataSourceName: map['dataSourceName'] == null ? null : (map['dataSourceName']! as String).input(),
      dataSourceType: map['dataSourceType'] == null ? null : (map['dataSourceType']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

