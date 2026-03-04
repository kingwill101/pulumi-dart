// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MigrationJob resources.
class MigrationJobState {
  /// Start time in Unix timestamp format.
  final pulumi.Input<String>? checkpoint;

  /// Whether to execute DTS supports schema migration.
  final pulumi.Input<bool>? dataInitialization;

  /// Whether to perform incremental data migration.
  final pulumi.Input<bool>? dataSynchronization;

  /// Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, migration or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  final pulumi.Input<String>? dbList;

  /// The name of migrate the database.
  final pulumi.Input<String>? destinationEndpointDatabaseName;

  /// The type of destination database. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  final pulumi.Input<String>? destinationEndpointEngineName;

  /// The ID of destination instance.
  final pulumi.Input<String>? destinationEndpointInstanceId;

  /// The type of destination instance. Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String>? destinationEndpointInstanceType;

  /// The ip of source endpoint.
  final pulumi.Input<String>? destinationEndpointIp;

  /// The SID of Oracle database.
  final pulumi.Input<String>? destinationEndpointOracleSid;

  /// The password of database account.
  final pulumi.Input<String>? destinationEndpointPassword;

  /// The port of source endpoint.
  final pulumi.Input<String>? destinationEndpointPort;

  /// The region of destination instance.
  final pulumi.Input<String>? destinationEndpointRegion;

  /// The username of database account.
  final pulumi.Input<String>? destinationEndpointUserName;

  /// The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  final pulumi.Input<String>? dtsInstanceId;

  /// The name of migration job.
  final pulumi.Input<String>? dtsJobName;

  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  final pulumi.Input<String>? instanceClass;

  /// The name of migrate the database.
  final pulumi.Input<String>? sourceEndpointDatabaseName;

  /// The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  final pulumi.Input<String>? sourceEndpointEngineName;

  /// The ID of source instance.
  final pulumi.Input<String>? sourceEndpointInstanceId;

  /// The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String>? sourceEndpointInstanceType;

  /// The ip of source endpoint.
  final pulumi.Input<String>? sourceEndpointIp;

  /// The SID of Oracle database.
  final pulumi.Input<String>? sourceEndpointOracleSid;

  /// The Alibaba Cloud account ID to which the source instance belongs.
  final pulumi.Input<String>? sourceEndpointOwnerId;

  /// The password of database account.
  final pulumi.Input<String>? sourceEndpointPassword;

  /// The port of source endpoint.
  final pulumi.Input<String>? sourceEndpointPort;

  /// The region of source instance.
  final pulumi.Input<String>? sourceEndpointRegion;

  /// The name of the role configured for the cloud account to which the source instance belongs.
  final pulumi.Input<String>? sourceEndpointRole;

  /// The username of database account.
  final pulumi.Input<String>? sourceEndpointUserName;

  /// The status of the resource. Valid values: `Migrating`, `Suspending`. You can suspend the task by specifying `Suspending` and start the task by specifying `Migrating`.
  final pulumi.Input<String>? status;

  /// Whether to perform a database table structure to migrate.
  final pulumi.Input<bool>? structureInitialization;

  /// Creates a new [MigrationJobState].
  /// [checkpoint] Start time in Unix timestamp format.
  /// [dataInitialization] Whether to execute DTS supports schema migration.
  /// [dataSynchronization] Whether to perform incremental data migration.
  /// [dbList] Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, migration or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  /// [destinationEndpointDatabaseName] The name of migrate the database.
  /// [destinationEndpointEngineName] The type of destination database. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  /// [destinationEndpointInstanceId] The ID of destination instance.
  /// [destinationEndpointInstanceType] The type of destination instance. Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [destinationEndpointIp] The ip of source endpoint.
  /// [destinationEndpointOracleSid] The SID of Oracle database.
  /// [destinationEndpointPassword] The password of database account.
  /// [destinationEndpointPort] The port of source endpoint.
  /// [destinationEndpointRegion] The region of destination instance.
  /// [destinationEndpointUserName] The username of database account.
  /// [dtsInstanceId] The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  /// [dtsJobName] The name of migration job.
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  /// [sourceEndpointDatabaseName] The name of migrate the database.
  /// [sourceEndpointEngineName] The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  /// [sourceEndpointInstanceId] The ID of source instance.
  /// [sourceEndpointInstanceType] The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [sourceEndpointIp] The ip of source endpoint.
  /// [sourceEndpointOracleSid] The SID of Oracle database.
  /// [sourceEndpointOwnerId] The Alibaba Cloud account ID to which the source instance belongs.
  /// [sourceEndpointPassword] The password of database account.
  /// [sourceEndpointPort] The port of source endpoint.
  /// [sourceEndpointRegion] The region of source instance.
  /// [sourceEndpointRole] The name of the role configured for the cloud account to which the source instance belongs.
  /// [sourceEndpointUserName] The username of database account.
  /// [status] The status of the resource. Valid values: `Migrating`, `Suspending`. You can suspend the task by specifying `Suspending` and start the task by specifying `Migrating`.
  /// [structureInitialization] Whether to perform a database table structure to migrate.
  MigrationJobState({
    this.checkpoint,
    this.dataInitialization,
    this.dataSynchronization,
    this.dbList,
    this.destinationEndpointDatabaseName,
    this.destinationEndpointEngineName,
    this.destinationEndpointInstanceId,
    this.destinationEndpointInstanceType,
    this.destinationEndpointIp,
    this.destinationEndpointOracleSid,
    this.destinationEndpointPassword,
    this.destinationEndpointPort,
    this.destinationEndpointRegion,
    this.destinationEndpointUserName,
    this.dtsInstanceId,
    this.dtsJobName,
    this.instanceClass,
    this.sourceEndpointDatabaseName,
    this.sourceEndpointEngineName,
    this.sourceEndpointInstanceId,
    this.sourceEndpointInstanceType,
    this.sourceEndpointIp,
    this.sourceEndpointOracleSid,
    this.sourceEndpointOwnerId,
    this.sourceEndpointPassword,
    this.sourceEndpointPort,
    this.sourceEndpointRegion,
    this.sourceEndpointRole,
    this.sourceEndpointUserName,
    this.status,
    this.structureInitialization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoint': ?checkpoint,
      'dataInitialization': ?dataInitialization,
      'dataSynchronization': ?dataSynchronization,
      'dbList': ?dbList,
      'destinationEndpointDatabaseName': ?destinationEndpointDatabaseName,
      'destinationEndpointEngineName': ?destinationEndpointEngineName,
      'destinationEndpointInstanceId': ?destinationEndpointInstanceId,
      'destinationEndpointInstanceType': ?destinationEndpointInstanceType,
      'destinationEndpointIp': ?destinationEndpointIp,
      'destinationEndpointOracleSid': ?destinationEndpointOracleSid,
      'destinationEndpointPassword': ?destinationEndpointPassword,
      'destinationEndpointPort': ?destinationEndpointPort,
      'destinationEndpointRegion': ?destinationEndpointRegion,
      'destinationEndpointUserName': ?destinationEndpointUserName,
      'dtsInstanceId': ?dtsInstanceId,
      'dtsJobName': ?dtsJobName,
      'instanceClass': ?instanceClass,
      'sourceEndpointDatabaseName': ?sourceEndpointDatabaseName,
      'sourceEndpointEngineName': ?sourceEndpointEngineName,
      'sourceEndpointInstanceId': ?sourceEndpointInstanceId,
      'sourceEndpointInstanceType': ?sourceEndpointInstanceType,
      'sourceEndpointIp': ?sourceEndpointIp,
      'sourceEndpointOracleSid': ?sourceEndpointOracleSid,
      'sourceEndpointOwnerId': ?sourceEndpointOwnerId,
      'sourceEndpointPassword': ?sourceEndpointPassword,
      'sourceEndpointPort': ?sourceEndpointPort,
      'sourceEndpointRegion': ?sourceEndpointRegion,
      'sourceEndpointRole': ?sourceEndpointRole,
      'sourceEndpointUserName': ?sourceEndpointUserName,
      'status': ?status,
      'structureInitialization': ?structureInitialization,
    };
  }

  factory MigrationJobState.fromMap(Map<String, dynamic> map) {
    return MigrationJobState(
      checkpoint: (() {
        final guardedValue = map['checkpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataInitialization: (() {
        final guardedValue = map['dataInitialization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataSynchronization: (() {
        final guardedValue = map['dataSynchronization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dbList: (() {
        final guardedValue = map['dbList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointDatabaseName: (() {
        final guardedValue = map['destinationEndpointDatabaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointEngineName: (() {
        final guardedValue = map['destinationEndpointEngineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointInstanceId: (() {
        final guardedValue = map['destinationEndpointInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointInstanceType: (() {
        final guardedValue = map['destinationEndpointInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointIp: (() {
        final guardedValue = map['destinationEndpointIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointOracleSid: (() {
        final guardedValue = map['destinationEndpointOracleSid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointPassword: (() {
        final guardedValue = map['destinationEndpointPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointPort: (() {
        final guardedValue = map['destinationEndpointPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointRegion: (() {
        final guardedValue = map['destinationEndpointRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointUserName: (() {
        final guardedValue = map['destinationEndpointUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dtsInstanceId: (() {
        final guardedValue = map['dtsInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dtsJobName: (() {
        final guardedValue = map['dtsJobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceClass: (() {
        final guardedValue = map['instanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointDatabaseName: (() {
        final guardedValue = map['sourceEndpointDatabaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointEngineName: (() {
        final guardedValue = map['sourceEndpointEngineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointInstanceId: (() {
        final guardedValue = map['sourceEndpointInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointInstanceType: (() {
        final guardedValue = map['sourceEndpointInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointIp: (() {
        final guardedValue = map['sourceEndpointIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointOracleSid: (() {
        final guardedValue = map['sourceEndpointOracleSid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointOwnerId: (() {
        final guardedValue = map['sourceEndpointOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointPassword: (() {
        final guardedValue = map['sourceEndpointPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointPort: (() {
        final guardedValue = map['sourceEndpointPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointRegion: (() {
        final guardedValue = map['sourceEndpointRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointRole: (() {
        final guardedValue = map['sourceEndpointRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointUserName: (() {
        final guardedValue = map['sourceEndpointUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      structureInitialization: (() {
        final guardedValue = map['structureInitialization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
