// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_hadoop_data_source_hadoop_data_source_args_doc}
/// The set of arguments for HadoopDataSource.
/// {@endtemplate}
/// {@macro pulumi_gpdb_hadoop_data_source_hadoop_data_source_args_doc}
class HadoopDataSourceArgs {
  /// Data Source Description
  final pulumi.Input<String>? dataSourceDescription;
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
  final pulumi.Input<String> dbInstanceId;
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
  /// The string that specifies the content of the Hadoop yarn-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  final pulumi.Input<String>? yarnConf;

  /// Creates a new [HadoopDataSourceArgs].
  /// [dataSourceDescription] Data Source Description
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
  /// [yarnConf] The string that specifies the content of the Hadoop yarn-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  HadoopDataSourceArgs({
    this.dataSourceDescription,
    this.dataSourceName,
    this.dataSourceType,
    required this.dbInstanceId,
    this.emrInstanceId,
    this.hadoopCoreConf,
    this.hadoopCreateType,
    this.hadoopHostsAddress,
    this.hdfsConf,
    this.hiveConf,
    this.mapReduceConf,
    this.yarnConf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceDescription': ?dataSourceDescription,
      'dataSourceName': ?dataSourceName,
      'dataSourceType': ?dataSourceType,
      'dbInstanceId': dbInstanceId,
      'emrInstanceId': ?emrInstanceId,
      'hadoopCoreConf': ?hadoopCoreConf,
      'hadoopCreateType': ?hadoopCreateType,
      'hadoopHostsAddress': ?hadoopHostsAddress,
      'hdfsConf': ?hdfsConf,
      'hiveConf': ?hiveConf,
      'mapReduceConf': ?mapReduceConf,
      'yarnConf': ?yarnConf,
    };
  }

  factory HadoopDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return HadoopDataSourceArgs(
      dataSourceDescription: map['dataSourceDescription'] == null ? null : (map['dataSourceDescription']! as String).input(),
      dataSourceName: map['dataSourceName'] == null ? null : (map['dataSourceName']! as String).input(),
      dataSourceType: map['dataSourceType'] == null ? null : (map['dataSourceType']! as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      emrInstanceId: map['emrInstanceId'] == null ? null : (map['emrInstanceId']! as String).input(),
      hadoopCoreConf: map['hadoopCoreConf'] == null ? null : (map['hadoopCoreConf']! as String).input(),
      hadoopCreateType: map['hadoopCreateType'] == null ? null : (map['hadoopCreateType']! as String).input(),
      hadoopHostsAddress: map['hadoopHostsAddress'] == null ? null : (map['hadoopHostsAddress']! as String).input(),
      hdfsConf: map['hdfsConf'] == null ? null : (map['hdfsConf']! as String).input(),
      hiveConf: map['hiveConf'] == null ? null : (map['hiveConf']! as String).input(),
      mapReduceConf: map['mapReduceConf'] == null ? null : (map['mapReduceConf']! as String).input(),
      yarnConf: map['yarnConf'] == null ? null : (map['yarnConf']! as String).input(),
    );
  }
}

