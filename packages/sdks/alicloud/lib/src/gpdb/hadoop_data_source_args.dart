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
      dataSourceDescription: (() { final guardedValue = map['dataSourceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceName: (() { final guardedValue = map['dataSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceType: (() { final guardedValue = map['dataSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      emrInstanceId: (() { final guardedValue = map['emrInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hadoopCoreConf: (() { final guardedValue = map['hadoopCoreConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hadoopCreateType: (() { final guardedValue = map['hadoopCreateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hadoopHostsAddress: (() { final guardedValue = map['hadoopHostsAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hdfsConf: (() { final guardedValue = map['hdfsConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiveConf: (() { final guardedValue = map['hiveConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapReduceConf: (() { final guardedValue = map['mapReduceConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yarnConf: (() { final guardedValue = map['yarnConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

