// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HadoopDataSource resources.
class HadoopDataSourceState {
  /// Creation time
  final pulumi.Input<String>? createTime;
  /// Data Source Description
  final pulumi.Input<String>? dataSourceDescription;
  /// The data source ID.
  final pulumi.Input<int>? dataSourceId;
  /// Data Source Name
  final pulumi.Input<String>? dataSourceName;
  /// The type of the data source. Valid values:
  ///
  /// *   mysql
  /// - postgresql
  ///
  /// *   hdfs
  /// - hive
  final pulumi.Input<String>? dataSourceType;
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;
  /// The ID of the Emr instance.
  final pulumi.Input<String>? emrInstanceId;
  /// The string that specifies the content of the Hadoop core-site.xml file.
  final pulumi.Input<String>? hadoopCoreConf;
  /// The type of the external service. Valid values:
  /// - emr: E-MapReduce (EMR) Hadoop cluster.
  /// - selfCreate: self-managed Hadoop cluster.
  final pulumi.Input<String>? hadoopCreateType;
  /// The IP address and hostname of the Hadoop cluster (data source) in the /etc/hosts file.
  final pulumi.Input<String>? hadoopHostsAddress;
  /// The string that specifies the content of the Hadoop hdfs-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  final pulumi.Input<String>? hdfsConf;
  /// The string that specifies the content of the Hadoop hive-site.xml file. This parameter must be specified when DataSourceType is set to Hive.
  final pulumi.Input<String>? hiveConf;
  /// The content of the Hadoop mapred-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  final pulumi.Input<String>? mapReduceConf;
  /// Data Source Status
  final pulumi.Input<String>? status;
  /// The string that specifies the content of the Hadoop yarn-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  final pulumi.Input<String>? yarnConf;

  /// Creates a new [HadoopDataSourceState].
  /// [createTime] Creation time
  /// [dataSourceDescription] Data Source Description
  /// [dataSourceId] The data source ID.
  /// [dataSourceName] Data Source Name
  /// [dataSourceType] The type of the data source. Valid values:
  /// [dbInstanceId] The instance ID.
  /// [emrInstanceId] The ID of the Emr instance.
  /// [hadoopCoreConf] The string that specifies the content of the Hadoop core-site.xml file.
  /// [hadoopCreateType] The type of the external service. Valid values:
  /// [hadoopHostsAddress] The IP address and hostname of the Hadoop cluster (data source) in the /etc/hosts file.
  /// [hdfsConf] The string that specifies the content of the Hadoop hdfs-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  /// [hiveConf] The string that specifies the content of the Hadoop hive-site.xml file. This parameter must be specified when DataSourceType is set to Hive.
  /// [mapReduceConf] The content of the Hadoop mapred-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  /// [status] Data Source Status
  /// [yarnConf] The string that specifies the content of the Hadoop yarn-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  HadoopDataSourceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSourceDescription,
    pulumi.Output<int>? dataSourceId,
    pulumi.Output<String>? dataSourceName,
    pulumi.Output<String>? dataSourceType,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? emrInstanceId,
    pulumi.Output<String>? hadoopCoreConf,
    pulumi.Output<String>? hadoopCreateType,
    pulumi.Output<String>? hadoopHostsAddress,
    pulumi.Output<String>? hdfsConf,
    pulumi.Output<String>? hiveConf,
    pulumi.Output<String>? mapReduceConf,
    pulumi.Output<String>? status,
    pulumi.Output<String>? yarnConf,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSourceDescription = pulumi.Input.asOptionalInput<String>(dataSourceDescription),
      dataSourceId = pulumi.Input.asOptionalInput<int>(dataSourceId),
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      dataSourceType = pulumi.Input.asOptionalInput<String>(dataSourceType),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      emrInstanceId = pulumi.Input.asOptionalInput<String>(emrInstanceId),
      hadoopCoreConf = pulumi.Input.asOptionalInput<String>(hadoopCoreConf),
      hadoopCreateType = pulumi.Input.asOptionalInput<String>(hadoopCreateType),
      hadoopHostsAddress = pulumi.Input.asOptionalInput<String>(hadoopHostsAddress),
      hdfsConf = pulumi.Input.asOptionalInput<String>(hdfsConf),
      hiveConf = pulumi.Input.asOptionalInput<String>(hiveConf),
      mapReduceConf = pulumi.Input.asOptionalInput<String>(mapReduceConf),
      status = pulumi.Input.asOptionalInput<String>(status),
      yarnConf = pulumi.Input.asOptionalInput<String>(yarnConf);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSourceDescription': ?dataSourceDescription,
      'dataSourceId': ?dataSourceId,
      'dataSourceName': ?dataSourceName,
      'dataSourceType': ?dataSourceType,
      'dbInstanceId': ?dbInstanceId,
      'emrInstanceId': ?emrInstanceId,
      'hadoopCoreConf': ?hadoopCoreConf,
      'hadoopCreateType': ?hadoopCreateType,
      'hadoopHostsAddress': ?hadoopHostsAddress,
      'hdfsConf': ?hdfsConf,
      'hiveConf': ?hiveConf,
      'mapReduceConf': ?mapReduceConf,
      'status': ?status,
      'yarnConf': ?yarnConf,
    };
  }

  factory HadoopDataSourceState.fromMap(Map<String, dynamic> map) {
    return HadoopDataSourceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : pulumi.Output.create<String>(map['dataSourceDescription'] as String),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<int>(map['dataSourceId'] as int),
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      dataSourceType: map['dataSourceType'] == null ? null : pulumi.Output.create<String>(map['dataSourceType'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      emrInstanceId: map['emrInstanceId'] == null ? null : pulumi.Output.create<String>(map['emrInstanceId'] as String),
      hadoopCoreConf: map['hadoopCoreConf'] == null ? null : pulumi.Output.create<String>(map['hadoopCoreConf'] as String),
      hadoopCreateType: map['hadoopCreateType'] == null ? null : pulumi.Output.create<String>(map['hadoopCreateType'] as String),
      hadoopHostsAddress: map['hadoopHostsAddress'] == null ? null : pulumi.Output.create<String>(map['hadoopHostsAddress'] as String),
      hdfsConf: map['hdfsConf'] == null ? null : pulumi.Output.create<String>(map['hdfsConf'] as String),
      hiveConf: map['hiveConf'] == null ? null : pulumi.Output.create<String>(map['hiveConf'] as String),
      mapReduceConf: map['mapReduceConf'] == null ? null : pulumi.Output.create<String>(map['mapReduceConf'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      yarnConf: map['yarnConf'] == null ? null : pulumi.Output.create<String>(map['yarnConf'] as String),
    );
  }
}

