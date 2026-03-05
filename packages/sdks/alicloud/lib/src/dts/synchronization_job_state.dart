// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SynchronizationJob resources.
class SynchronizationJobState {
  /// The start point or synchronization point of incremental data migration, the format is Unix timestamp, and the unit is seconds.
  final pulumi.Input<String>? checkpoint;
  /// The data verification task of the migration or synchronization instance, in the format of a JSON string, such as parameter limits or alarm configurations. For more information, see the DataCheckConfigure parameter description [datacheckconfigure-parameter](https://help.aliyun.com/zh/dts/developer-reference/datacheckconfigure-parameter).
  final pulumi.Input<String>? dataCheckConfigure;
  /// Whether to perform full data migration or full data initialization. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dataInitialization;
  /// Whether to perform incremental data migration or synchronization. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dataSynchronization;
  /// Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, synchronization or subscription objects](https://help.aliyun.com/document_detail/209545.html). **NOTE:** From version 1.173.0, `db_list` can be modified.
  final pulumi.Input<String>? dbList;
  /// When the ID of the dedicated cluster is input, the task is scheduled to the corresponding cluster.
  final pulumi.Input<String>? dedicatedClusterId;
  /// The delay notice. Valid values: `true`, `false`.
  final pulumi.Input<bool>? delayNotice;
  /// The delay phone. The mobile phone number of the contact who delayed the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  final pulumi.Input<String>? delayPhone;
  /// The delay rule time. When `delay_notice` is set to `true`, this parameter must be passed in. The threshold for triggering the delay alarm. The unit is second and needs to be an integer. The threshold can be set according to business needs. It is recommended to set it above 10 seconds to avoid delay fluctuations caused by network and database load.
  final pulumi.Input<String>? delayRuleTime;
  /// The name of the database to which the migration object belongs in the target instance. Note: when the target instance or target database type is PolarDB O engine, AnalyticDB PostgreSQL, PostgreSQL, MongoDB database, this parameter is available and must be passed in.
  final pulumi.Input<String>? destinationEndpointDatabaseName;
  /// The type of destination database. The default value is MYSQL. For the correspondence between supported target libraries and source libraries, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the database type of the target instance is KAFKA or MONGODB, you also need to pass in some information in the reserved parameter `reserve`. For the configuration method, see the description of `reserve` parameters. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`,` POLARDB_PG`, `MARIADB`, `POLARDBX10`, `ODPS`, `Tablestore`, `ELK`, `REDIS`.
  final pulumi.Input<String>? destinationEndpointEngineName;
  /// The ID of destination instance. If the target instance is a cloud database (such as RDS MySQL), you need to pass in the instance ID of the cloud database (such as the instance ID of RDS MySQL). If the target instance is a self-built database, the value of this parameter changes according to the value of `destination_endpoint_instance_type`. For example, the value of `destination_endpoint_instance_type` is:
  /// ** `ECS`, then this parameter needs to be passed into the instance ID of ECS.
  /// ** `DG`, then this parameter needs to be passed into the ID of database gateway.
  /// ** `EXPRESS`, `CEN`, then this parameter needs to be passed in the ID of VPC that has been interconnected with the source database. **Note**: when the value is `CEN`, you also need to pass in the ID of CEN instance in the cloud enterprise network with the reserved parameter `reserve`.
  final pulumi.Input<String>? destinationEndpointInstanceId;
  /// The type of destination instance. If the target instance is a PolarDB O engine cluster, the target instance type needs to be `OTHER` or `EXPRESS` as a self-built database, and access via public IP or dedicated line. If the target instance is the Kafka version of Message Queuing, the target instance type needs to be `ECS` or `EXPRESS` as a self-built database, and access via ECS or dedicated line. For the correspondence between supported targets and source instances, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the target instance is a self-built database, you also need to perform corresponding preparations, please refer to the [overview of preparations](https://help.aliyun.com/document_detail/146958.htm). Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String>? destinationEndpointInstanceType;
  /// The IP of source endpoint. When `destination_endpoint_instance_type` is `OTHER`, `EXPRESS`, `DG`, `CEN`, this parameter is available and must be passed in.
  final pulumi.Input<String>? destinationEndpointIp;
  /// The SID of Oracle database. Note: when the value of DestinationEndpointEngineName is Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  final pulumi.Input<String>? destinationEndpointOracleSid;
  /// The ID of the Alibaba Cloud account to which the target RDS MySQL instance belongs. can be configured only when the target instance is RDS MySQL. This parameter is used to migrate or synchronize data across Alibaba Cloud accounts. You also need to enter the **destinationendpointrle** parameter.
  final pulumi.Input<String>? destinationEndpointOwnerId;
  /// The password of database account.
  final pulumi.Input<String>? destinationEndpointPassword;
  /// The port of source endpoint. When the target instance is a self-built database, this parameter is available and must be passed in.
  final pulumi.Input<String>? destinationEndpointPort;
  /// The region of destination instance. For the target instance region, please refer to the [list of supported regions](https://help.aliyun.com/document_detail/141033.htm). Note: if the target is an Alibaba Cloud database, this parameter must be passed in.
  final pulumi.Input<String>? destinationEndpointRegion;
  /// The role name of the Alibaba Cloud account to which the target instance belongs. This parameter must be entered when data migration or synchronization across Alibaba Cloud accounts is performed. For the permissions and authorization methods required by this role.
  final pulumi.Input<String>? destinationEndpointRole;
  /// The username of database account. Note: in most cases, you need to pass in the database account of the source library. The permissions required for migrating or synchronizing different databases are different. For specific permission requirements, see [Preparing database accounts for data migration](https://help.aliyun.com/document_detail/175878.htm) and [Preparing database accounts for data synchronization](https://help.aliyun.com/document_detail/213152.htm).
  final pulumi.Input<String>? destinationEndpointUserName;
  /// The environment label of the DTS instance. The value is: **normal**, **online**.
  ///
  /// &gt; **NOTE:** From the status of `NotStarted` to `Synchronizing`, the resource goes through the `Prechecking` and `Initializing` phases. Because of the `Initializing` phase takes too long, and once the resource passes to the status of `Prechecking`, it can be considered that the task can be executed normally. Therefore, we treat the status of `Initializing` as an equivalent to `Synchronizing`.
  ///
  /// &gt; **NOTE:** If you want to upgrade the synchronization job specifications by the property `instance_class`, you must also modify the property `instance_class` of it's instance to keep them consistent.
  final pulumi.Input<String>? dtsBisLabel;
  /// The ID of synchronization instance, it must be an ID of `alicloud.dts.SynchronizationInstance`.
  final pulumi.Input<String>? dtsInstanceId;
  /// The name of synchronization job.
  final pulumi.Input<String>? dtsJobName;
  /// The error notice. Valid values: `true`, `false`.
  final pulumi.Input<bool>? errorNotice;
  /// The error phone. The mobile phone number of the contact who error the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  final pulumi.Input<String>? errorPhone;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  final pulumi.Input<String>? instanceClass;
  /// DTS modifiable runtime parameters, you can modify the parameters of a running DTS (Data Transmission Service) task by providing a JSON array. This allows for real-time adjustments to the task's behavior.Please note that you can only modify these parameters while the task is active; they are not available during the initial setup. For more information, please refer to the parameter [description of the Runtime parameter](https://help.aliyun.com/zh/dts/developer-reference/parameter-description).
  final pulumi.Input<String>? jobParameters;
  /// DTS reserves parameters, the format is a JSON string, you can pass in this parameter to complete the source and target database information (such as the data storage format of the target Kafka database, the instance ID of the cloud enterprise network CEN). For more information, please refer to the parameter [description of the Reserve parameter](https://help.aliyun.com/document_detail/273111.html).
  final pulumi.Input<String>? reserve;
  /// The name of the database to which the migration object belongs in the source instance. Note: this parameter is only available and must be passed in when the source instance, or the database type of the source instance is PolarDB O engine, PostgreSQL, or MongoDB database.
  final pulumi.Input<String>? sourceEndpointDatabaseName;
  /// The type of source database. The default value is `MySQL`. For the correspondence between supported source libraries and target libraries, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the database type of the source instance is `MONGODB`, you also need to pass in some information in the reserved parameter `Reserve`, for the configuration method, see the description of Reserve parameters. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`, `POLARDB_PG`, `MARIADB`, `POLARDBX10`, `TiDB`, `REDIS`.
  final pulumi.Input<String>? sourceEndpointEngineName;
  /// The ID of source instance. If the source instance is a cloud database (such as RDS MySQL), you need to pass in the instance ID of the cloud database (such as the instance ID of RDS MySQL). If the source instance is a self-built database, the value of this parameter changes according to the value of `source_endpoint_instance_type`. For example, the value of `source_endpoint_instance_type` is:
  /// ** `ECS`, then this parameter needs to be passed into the instance ID of ECS.
  /// ** `DG`, then this parameter needs to be passed into the ID of database gateway.
  /// ** `EXPRESS`, `CEN`, then this parameter needs to be passed in the ID of VPC that has been interconnected with the source database. **Note**: when the value is `CEN`, you also need to pass in the ID of CEN instance in the cloud enterprise network with the reserved parameter `reserve`.
  final pulumi.Input<String>? sourceEndpointInstanceId;
  /// The type of source instance. If the source instance is a `PolarDB O` engine cluster, the source instance type needs to be `OTHER` or `EXPRESS` as a self-built database, and access via public IP or dedicated line. For the correspondence between supported source and target instances, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the source instance is a self-built database, you also need to perform corresponding preparations, for details, see [Preparations Overview](https://help.aliyun.com/document_detail/146958.htm). Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String>? sourceEndpointInstanceType;
  /// The IP of source endpoint. When `source_endpoint_instance_type` is `OTHER`, `EXPRESS`, `DG`, `CEN`, this parameter is available and must be passed in.
  final pulumi.Input<String>? sourceEndpointIp;
  /// The SID of Oracle database. When the value of SourceEndpointEngineName is Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  final pulumi.Input<String>? sourceEndpointOracleSid;
  /// The ID of Alibaba Cloud account to which the source instance belongs. Note: passing in this parameter means performing data migration or synchronization across Alibaba Cloud accounts, and you also need to pass in the `source_endpoint_role` parameter.
  final pulumi.Input<String>? sourceEndpointOwnerId;
  /// The password of database account.
  final pulumi.Input<String>? sourceEndpointPassword;
  /// The port of source endpoint. When the source instance is a self-built database, this parameter is available and must be passed in.
  final pulumi.Input<String>? sourceEndpointPort;
  /// Source instance area, please refer to the [list of supported areas](https://help.aliyun.com/document_detail/141033.htm) for details. Note if the source is an Alibaba Cloud database, this parameter must be passed in.
  final pulumi.Input<String>? sourceEndpointRegion;
  /// The name of the role configured for the cloud account to which the source instance belongs. Note: this parameter must be passed in when performing cross Alibaba Cloud account data migration or synchronization. For the permissions and authorization methods required by this role, please refer to [How to configure RAM authorization when cross-Alibaba Cloud account data migration or synchronization](https://help.aliyun.com/document_detail/48468.htm).
  final pulumi.Input<String>? sourceEndpointRole;
  /// The username of database account. Note: in most cases, you need to pass in the database account of the source library. The permissions required for migrating or synchronizing different databases are different. For specific permission requirements, see [Preparing database accounts for data migration](https://help.aliyun.com/document_detail/175878.htm) and [Preparing database accounts for data synchronization](https://help.aliyun.com/document_detail/213152.htm).
  final pulumi.Input<String>? sourceEndpointUserName;
  /// Data Delivery link switch instance id
  final pulumi.Input<String>? sourceEndpointVswitchId;
  /// The status of the resource. Valid values: `Synchronizing`, `Suspending`. You can stop the task by specifying `Suspending` and start the task by specifying `Synchronizing`.
  final pulumi.Input<String>? status;
  /// Whether to perform library table structure migration or initialization. Valid values: `true`, `false`.
  final pulumi.Input<bool>? structureInitialization;
  /// Synchronization direction. Valid values: `Forward`, `Reverse`. Only when the property `sync_architecture` of the `alicloud.dts.SynchronizationInstance` was `bidirectional` this parameter should be passed, otherwise this parameter should not be specified.
  final pulumi.Input<String>? synchronizationDirection;

  /// Creates a new [SynchronizationJobState].
  /// [checkpoint] The start point or synchronization point of incremental data migration, the format is Unix timestamp, and the unit is seconds.
  /// [dataCheckConfigure] The data verification task of the migration or synchronization instance, in the format of a JSON string, such as parameter limits or alarm configurations. For more information, see the DataCheckConfigure parameter description [datacheckconfigure-parameter](https://help.aliyun.com/zh/dts/developer-reference/datacheckconfigure-parameter).
  /// [dataInitialization] Whether to perform full data migration or full data initialization. Valid values: `true`, `false`.
  /// [dataSynchronization] Whether to perform incremental data migration or synchronization. Valid values: `true`, `false`.
  /// [dbList] Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, synchronization or subscription objects](https://help.aliyun.com/document_detail/209545.html). **NOTE:** From version 1.173.0, `db_list` can be modified.
  /// [dedicatedClusterId] When the ID of the dedicated cluster is input, the task is scheduled to the corresponding cluster.
  /// [delayNotice] The delay notice. Valid values: `true`, `false`.
  /// [delayPhone] The delay phone. The mobile phone number of the contact who delayed the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  /// [delayRuleTime] The delay rule time. When `delay_notice` is set to `true`, this parameter must be passed in. The threshold for triggering the delay alarm. The unit is second and needs to be an integer. The threshold can be set according to business needs. It is recommended to set it above 10 seconds to avoid delay fluctuations caused by network and database load.
  /// [destinationEndpointDatabaseName] The name of the database to which the migration object belongs in the target instance. Note: when the target instance or target database type is PolarDB O engine, AnalyticDB PostgreSQL, PostgreSQL, MongoDB database, this parameter is available and must be passed in.
  /// [destinationEndpointEngineName] The type of destination database. The default value is MYSQL. For the correspondence between supported target libraries and source libraries, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the database type of the target instance is KAFKA or MONGODB, you also need to pass in some information in the reserved parameter `reserve`. For the configuration method, see the description of `reserve` parameters. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`,` POLARDB_PG`, `MARIADB`, `POLARDBX10`, `ODPS`, `Tablestore`, `ELK`, `REDIS`.
  /// [destinationEndpointInstanceId] The ID of destination instance. If the target instance is a cloud database (such as RDS MySQL), you need to pass in the instance ID of the cloud database (such as the instance ID of RDS MySQL). If the target instance is a self-built database, the value of this parameter changes according to the value of `destination_endpoint_instance_type`. For example, the value of `destination_endpoint_instance_type` is:
  /// [destinationEndpointInstanceType] The type of destination instance. If the target instance is a PolarDB O engine cluster, the target instance type needs to be `OTHER` or `EXPRESS` as a self-built database, and access via public IP or dedicated line. If the target instance is the Kafka version of Message Queuing, the target instance type needs to be `ECS` or `EXPRESS` as a self-built database, and access via ECS or dedicated line. For the correspondence between supported targets and source instances, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the target instance is a self-built database, you also need to perform corresponding preparations, please refer to the [overview of preparations](https://help.aliyun.com/document_detail/146958.htm). Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [destinationEndpointIp] The IP of source endpoint. When `destination_endpoint_instance_type` is `OTHER`, `EXPRESS`, `DG`, `CEN`, this parameter is available and must be passed in.
  /// [destinationEndpointOracleSid] The SID of Oracle database. Note: when the value of DestinationEndpointEngineName is Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  /// [destinationEndpointOwnerId] The ID of the Alibaba Cloud account to which the target RDS MySQL instance belongs. can be configured only when the target instance is RDS MySQL. This parameter is used to migrate or synchronize data across Alibaba Cloud accounts. You also need to enter the **destinationendpointrle** parameter.
  /// [destinationEndpointPassword] The password of database account.
  /// [destinationEndpointPort] The port of source endpoint. When the target instance is a self-built database, this parameter is available and must be passed in.
  /// [destinationEndpointRegion] The region of destination instance. For the target instance region, please refer to the [list of supported regions](https://help.aliyun.com/document_detail/141033.htm). Note: if the target is an Alibaba Cloud database, this parameter must be passed in.
  /// [destinationEndpointRole] The role name of the Alibaba Cloud account to which the target instance belongs. This parameter must be entered when data migration or synchronization across Alibaba Cloud accounts is performed. For the permissions and authorization methods required by this role.
  /// [destinationEndpointUserName] The username of database account. Note: in most cases, you need to pass in the database account of the source library. The permissions required for migrating or synchronizing different databases are different. For specific permission requirements, see [Preparing database accounts for data migration](https://help.aliyun.com/document_detail/175878.htm) and [Preparing database accounts for data synchronization](https://help.aliyun.com/document_detail/213152.htm).
  /// [dtsBisLabel] The environment label of the DTS instance. The value is: **normal**, **online**.
  /// [dtsInstanceId] The ID of synchronization instance, it must be an ID of `alicloud.dts.SynchronizationInstance`.
  /// [dtsJobName] The name of synchronization job.
  /// [errorNotice] The error notice. Valid values: `true`, `false`.
  /// [errorPhone] The error phone. The mobile phone number of the contact who error the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  /// [jobParameters] DTS modifiable runtime parameters, you can modify the parameters of a running DTS (Data Transmission Service) task by providing a JSON array. This allows for real-time adjustments to the task's behavior.Please note that you can only modify these parameters while the task is active; they are not available during the initial setup. For more information, please refer to the parameter [description of the Runtime parameter](https://help.aliyun.com/zh/dts/developer-reference/parameter-description).
  /// [reserve] DTS reserves parameters, the format is a JSON string, you can pass in this parameter to complete the source and target database information (such as the data storage format of the target Kafka database, the instance ID of the cloud enterprise network CEN). For more information, please refer to the parameter [description of the Reserve parameter](https://help.aliyun.com/document_detail/273111.html).
  /// [sourceEndpointDatabaseName] The name of the database to which the migration object belongs in the source instance. Note: this parameter is only available and must be passed in when the source instance, or the database type of the source instance is PolarDB O engine, PostgreSQL, or MongoDB database.
  /// [sourceEndpointEngineName] The type of source database. The default value is `MySQL`. For the correspondence between supported source libraries and target libraries, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the database type of the source instance is `MONGODB`, you also need to pass in some information in the reserved parameter `Reserve`, for the configuration method, see the description of Reserve parameters. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`, `POLARDB_PG`, `MARIADB`, `POLARDBX10`, `TiDB`, `REDIS`.
  /// [sourceEndpointInstanceId] The ID of source instance. If the source instance is a cloud database (such as RDS MySQL), you need to pass in the instance ID of the cloud database (such as the instance ID of RDS MySQL). If the source instance is a self-built database, the value of this parameter changes according to the value of `source_endpoint_instance_type`. For example, the value of `source_endpoint_instance_type` is:
  /// [sourceEndpointInstanceType] The type of source instance. If the source instance is a `PolarDB O` engine cluster, the source instance type needs to be `OTHER` or `EXPRESS` as a self-built database, and access via public IP or dedicated line. For the correspondence between supported source and target instances, see [Supported Databases](https://help.aliyun.com/document_detail/131497.htm). When the source instance is a self-built database, you also need to perform corresponding preparations, for details, see [Preparations Overview](https://help.aliyun.com/document_detail/146958.htm). Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [sourceEndpointIp] The IP of source endpoint. When `source_endpoint_instance_type` is `OTHER`, `EXPRESS`, `DG`, `CEN`, this parameter is available and must be passed in.
  /// [sourceEndpointOracleSid] The SID of Oracle database. When the value of SourceEndpointEngineName is Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  /// [sourceEndpointOwnerId] The ID of Alibaba Cloud account to which the source instance belongs. Note: passing in this parameter means performing data migration or synchronization across Alibaba Cloud accounts, and you also need to pass in the `source_endpoint_role` parameter.
  /// [sourceEndpointPassword] The password of database account.
  /// [sourceEndpointPort] The port of source endpoint. When the source instance is a self-built database, this parameter is available and must be passed in.
  /// [sourceEndpointRegion] Source instance area, please refer to the [list of supported areas](https://help.aliyun.com/document_detail/141033.htm) for details. Note if the source is an Alibaba Cloud database, this parameter must be passed in.
  /// [sourceEndpointRole] The name of the role configured for the cloud account to which the source instance belongs. Note: this parameter must be passed in when performing cross Alibaba Cloud account data migration or synchronization. For the permissions and authorization methods required by this role, please refer to [How to configure RAM authorization when cross-Alibaba Cloud account data migration or synchronization](https://help.aliyun.com/document_detail/48468.htm).
  /// [sourceEndpointUserName] The username of database account. Note: in most cases, you need to pass in the database account of the source library. The permissions required for migrating or synchronizing different databases are different. For specific permission requirements, see [Preparing database accounts for data migration](https://help.aliyun.com/document_detail/175878.htm) and [Preparing database accounts for data synchronization](https://help.aliyun.com/document_detail/213152.htm).
  /// [sourceEndpointVswitchId] Data Delivery link switch instance id
  /// [status] The status of the resource. Valid values: `Synchronizing`, `Suspending`. You can stop the task by specifying `Suspending` and start the task by specifying `Synchronizing`.
  /// [structureInitialization] Whether to perform library table structure migration or initialization. Valid values: `true`, `false`.
  /// [synchronizationDirection] Synchronization direction. Valid values: `Forward`, `Reverse`. Only when the property `sync_architecture` of the `alicloud.dts.SynchronizationInstance` was `bidirectional` this parameter should be passed, otherwise this parameter should not be specified.
  SynchronizationJobState({
    this.checkpoint,
    this.dataCheckConfigure,
    this.dataInitialization,
    this.dataSynchronization,
    this.dbList,
    this.dedicatedClusterId,
    this.delayNotice,
    this.delayPhone,
    this.delayRuleTime,
    this.destinationEndpointDatabaseName,
    this.destinationEndpointEngineName,
    this.destinationEndpointInstanceId,
    this.destinationEndpointInstanceType,
    this.destinationEndpointIp,
    this.destinationEndpointOracleSid,
    this.destinationEndpointOwnerId,
    this.destinationEndpointPassword,
    this.destinationEndpointPort,
    this.destinationEndpointRegion,
    this.destinationEndpointRole,
    this.destinationEndpointUserName,
    this.dtsBisLabel,
    this.dtsInstanceId,
    this.dtsJobName,
    this.errorNotice,
    this.errorPhone,
    this.instanceClass,
    this.jobParameters,
    this.reserve,
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
    this.sourceEndpointVswitchId,
    this.status,
    this.structureInitialization,
    this.synchronizationDirection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoint': ?checkpoint,
      'dataCheckConfigure': ?dataCheckConfigure,
      'dataInitialization': ?dataInitialization,
      'dataSynchronization': ?dataSynchronization,
      'dbList': ?dbList,
      'dedicatedClusterId': ?dedicatedClusterId,
      'delayNotice': ?delayNotice,
      'delayPhone': ?delayPhone,
      'delayRuleTime': ?delayRuleTime,
      'destinationEndpointDatabaseName': ?destinationEndpointDatabaseName,
      'destinationEndpointEngineName': ?destinationEndpointEngineName,
      'destinationEndpointInstanceId': ?destinationEndpointInstanceId,
      'destinationEndpointInstanceType': ?destinationEndpointInstanceType,
      'destinationEndpointIp': ?destinationEndpointIp,
      'destinationEndpointOracleSid': ?destinationEndpointOracleSid,
      'destinationEndpointOwnerId': ?destinationEndpointOwnerId,
      'destinationEndpointPassword': ?destinationEndpointPassword,
      'destinationEndpointPort': ?destinationEndpointPort,
      'destinationEndpointRegion': ?destinationEndpointRegion,
      'destinationEndpointRole': ?destinationEndpointRole,
      'destinationEndpointUserName': ?destinationEndpointUserName,
      'dtsBisLabel': ?dtsBisLabel,
      'dtsInstanceId': ?dtsInstanceId,
      'dtsJobName': ?dtsJobName,
      'errorNotice': ?errorNotice,
      'errorPhone': ?errorPhone,
      'instanceClass': ?instanceClass,
      'jobParameters': ?jobParameters,
      'reserve': ?reserve,
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
      'sourceEndpointVswitchId': ?sourceEndpointVswitchId,
      'status': ?status,
      'structureInitialization': ?structureInitialization,
      'synchronizationDirection': ?synchronizationDirection,
    };
  }

  factory SynchronizationJobState.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobState(
      checkpoint: (() { final guardedValue = map['checkpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCheckConfigure: (() { final guardedValue = map['dataCheckConfigure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataInitialization: (() { final guardedValue = map['dataInitialization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataSynchronization: (() { final guardedValue = map['dataSynchronization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dbList: (() { final guardedValue = map['dbList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedClusterId: (() { final guardedValue = map['dedicatedClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delayNotice: (() { final guardedValue = map['delayNotice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delayPhone: (() { final guardedValue = map['delayPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delayRuleTime: (() { final guardedValue = map['delayRuleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointDatabaseName: (() { final guardedValue = map['destinationEndpointDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointEngineName: (() { final guardedValue = map['destinationEndpointEngineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointInstanceId: (() { final guardedValue = map['destinationEndpointInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointInstanceType: (() { final guardedValue = map['destinationEndpointInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointIp: (() { final guardedValue = map['destinationEndpointIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointOracleSid: (() { final guardedValue = map['destinationEndpointOracleSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointOwnerId: (() { final guardedValue = map['destinationEndpointOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointPassword: (() { final guardedValue = map['destinationEndpointPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointPort: (() { final guardedValue = map['destinationEndpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointRegion: (() { final guardedValue = map['destinationEndpointRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointRole: (() { final guardedValue = map['destinationEndpointRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointUserName: (() { final guardedValue = map['destinationEndpointUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dtsBisLabel: (() { final guardedValue = map['dtsBisLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dtsInstanceId: (() { final guardedValue = map['dtsInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dtsJobName: (() { final guardedValue = map['dtsJobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorNotice: (() { final guardedValue = map['errorNotice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      errorPhone: (() { final guardedValue = map['errorPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobParameters: (() { final guardedValue = map['jobParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reserve: (() { final guardedValue = map['reserve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointDatabaseName: (() { final guardedValue = map['sourceEndpointDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointEngineName: (() { final guardedValue = map['sourceEndpointEngineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointInstanceId: (() { final guardedValue = map['sourceEndpointInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointInstanceType: (() { final guardedValue = map['sourceEndpointInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointIp: (() { final guardedValue = map['sourceEndpointIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointOracleSid: (() { final guardedValue = map['sourceEndpointOracleSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointOwnerId: (() { final guardedValue = map['sourceEndpointOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointPassword: (() { final guardedValue = map['sourceEndpointPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointPort: (() { final guardedValue = map['sourceEndpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointRegion: (() { final guardedValue = map['sourceEndpointRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointRole: (() { final guardedValue = map['sourceEndpointRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointUserName: (() { final guardedValue = map['sourceEndpointUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointVswitchId: (() { final guardedValue = map['sourceEndpointVswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structureInitialization: (() { final guardedValue = map['structureInitialization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      synchronizationDirection: (() { final guardedValue = map['synchronizationDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

