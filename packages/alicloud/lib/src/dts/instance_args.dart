// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_dts_instance_instance_args_doc}
class InstanceArgs {
  /// Whether to automatically renew the fee when it expires. Valid values:
  /// - **false**: No, the default value.
  /// - **true**: Yes.
  final pulumi.Input<bool>? autoPay;
  /// Whether to start the task automatically after the purchase is completed. Value:
  /// - **false**: No, the default value.
  /// - **true**: Yes.
  final pulumi.Input<bool>? autoStart;
  /// Specifications of ETL. The unit is compute unit (CU),1CU = 1vCPU +4GB of memory. The value range is an integer greater than or equal to 2. **NOTE:** Enter this parameter and enable ETL to clean and convert data.
  final pulumi.Input<int>? computeUnit;
  /// The number of private custom RDS instances in the PolarDB-X. The default value is **1**. **NOTE:** This parameter is required only when **source_endpoint_engine_name** is **DRDS**.
  final pulumi.Input<int>? databaseCount;
  /// The target database engine type.
  /// - **MySQL**:MySQL databases (including RDS MySQL and self-built MySQL).
  /// - **PolarDB**:PolarDB MySQL.
  /// - **polardb_o**:PolarDB O engine.
  /// - **polardb_pg**:PolarDB PostgreSQL.
  /// - **Redis**:Redis databases (including apsaradb for Redis and user-created Redis).
  /// - **DRDS**: cloud-native distributed database PolarDB-X 1.0 and 2.0.
  /// - **PostgreSQL**: User-created PostgreSQL.
  /// - **odps**: MaxCompute project.
  /// - **oracle**: self-built Oracle.
  /// - **mongodb**:MongoDB databases (including apsaradb for MongoDB and user-created MongoDB).
  /// - **tidb**:TiDB database.
  /// - **ADS**: Cloud native data warehouse AnalyticDB MySQL 2.0.
  /// - **ADB30**: Cloud native data warehouse AnalyticDB MySQL 3.0.
  /// - **Greenplum**: Cloud native data warehouse AnalyticDB PostgreSQL.
  /// - **MSSQL**:SQL Server databases (including RDS SQL Server and self-built SQL Server).
  /// - **kafka**:Kafka databases (including Kafka and self-built Kafka).
  /// - **DataHub**: DataHub, an Alibaba cloud streaming data service.
  /// - **clickhouse**: ClickHouse.
  /// - **DB2**: self-built DB2 LUW.
  /// - **as400**:AS/400.
  /// - **Tablestore**: Tablestore.
  /// - **NOTE:**
  /// - The default value is **MySQL**.
  /// - For more information about the supported source and destination databases, see [Database, Synchronization Initialization Type, and Synchronization Topology](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-synchronization-scenarios-1) and [Supported Database and Migration Type](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-migration-scenarios).
  /// - This parameter or **job_id** must be passed in.
  final pulumi.Input<String>? destinationEndpointEngineName;
  /// The target instance region. For more information, see [List of supported regions](https://www.alibabacloud.com/help/en/data-transmission-service/latest/list-of-supported-regions). **NOTE:** This parameter or **job_id** must be passed in.
  final pulumi.Input<String>? destinationRegion;
  /// Assign a specified number of DU resources to DTS tasks in the DTS exclusive cluster. Valid values: **1** ~ **100**. **NOTE:** The value of this parameter must be within the range of the number of DUs available for the DTS dedicated cluster.
  final pulumi.Input<int>? du;
  /// Subscription billing type, Valid values: `ONLY_CONFIGURATION_FEE`: charges only configuration fees; `CONFIGURATION_FEE_AND_DATA_FEE`: charges configuration fees and data traffic fees.
  final pulumi.Input<String>? feeType;
  /// The type of the migration or synchronization instance.
  /// - The specifications of the migration instance: **xxlarge**, **xlarge**, **large**, **medium**, **small**.
  /// - The types of synchronization instances: **large**, **medium**, **small**, **micro**.
  /// - **NOTE:** For performance descriptions of different specifications, see [Data Migration Link Specifications](https://www.alibabacloud.com/help/en/data-transmission-service/latest/cd773b) and [Data Synchronization Link Specifications](https://www.alibabacloud.com/help/en/data-transmission-service/latest/6bce7c).
  final pulumi.Input<String>? instanceClass;
  /// The ID of the task obtained by calling the **ConfigureDtsJob** operation (**DtsJobId**).> After you pass in this parameter, you do not need to pass the **source_region**, **destination_region**, **type**, **source_endpoint_engine_name**, or **destination_endpoint_engine_name** parameters. Even if the input is passed in, the configuration in **job_id** shall prevail.
  final pulumi.Input<String>? jobId;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The billing method of the subscription instance. Value: `Year`, `Month`. **NOTE:** This parameter is valid and must be passed in only when `payment_type` is `Subscription`.
  final pulumi.Input<String>? period;
  /// Resource Group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// Source instance database engine type.
  /// - **MySQL**:MySQL databases (including RDS MySQL and self-built MySQL).
  /// - **PolarDB**:PolarDB MySQL.
  /// - **polardb_o**:PolarDB O engine.
  /// - **polardb_pg**:PolarDB PostgreSQL.
  /// - **Redis**:Redis databases (including apsaradb for Redis and user-created Redis).
  /// - **DRDS**: cloud-native distributed database PolarDB-X 1.0 and 2.0.
  /// - **PostgreSQL**: User-created PostgreSQL.
  /// - **odps**: MaxCompute project.
  /// - **oracle**: self-built Oracle.
  /// - **mongodb**:MongoDB databases (including apsaradb for MongoDB and user-created MongoDB).
  /// - **tidb**:TiDB database.
  /// - **ADS**: Cloud native data warehouse AnalyticDB MySQL 2.0.
  /// - **ADB30**: Cloud native data warehouse AnalyticDB MySQL 3.0.
  /// - **Greenplum**: Cloud native data warehouse AnalyticDB PostgreSQL.
  /// - **MSSQL**:SQL Server databases (including RDS SQL Server and self-built SQL Server).
  /// - **kafka**:Kafka databases (including Kafka and self-built Kafka).
  /// - **DataHub**: DataHub, an Alibaba cloud streaming data service.
  /// - **clickhouse**: ClickHouse.
  /// - **DB2**: self-built DB2 LUW.
  /// - **as400**:AS/400.
  /// - **Tablestore**: Tablestore.
  /// - **NOTE:**
  /// - The default value is **MySQL**.
  /// - For more information about the supported source and destination databases, see [Database, Synchronization Initialization Type, and Synchronization Topology](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-synchronization-scenarios-1) and [Supported Database and Migration Type](https://www.alibabacloud.com/help/en/data-transmission-service/latest/overview-of-data-migration-scenarios).
  /// - This parameter or **job_id** must be passed in.
  final pulumi.Input<String>? sourceEndpointEngineName;
  /// The source instance region. For more information, see [List of supported regions](https://www.alibabacloud.com/help/en/data-transmission-service/latest/list-of-supported-regions). **NOTE:** This parameter or **job_id** must be passed in.
  final pulumi.Input<String>? sourceRegion;
  /// Synchronization topology, value:
  /// - **oneway**: one-way synchronization, the default value.
  /// - **bidirectional**: two-way synchronization.
  final pulumi.Input<String>? syncArchitecture;
  /// The synchronization direction. Default value: `Forward`. Valid values:
  /// - `Forward`: Data is synchronized from the source database to the destination database.
  /// - `Reverse`: Data is synchronized from the destination database to the source database.
  /// - **NOTE:** You can set this parameter to Reverse to delete the reverse synchronization task only if the topology is two-way synchronization.
  final pulumi.Input<String>? synchronizationDirection;
  /// The tag value corresponding to the tag key.See the following `Block Tags`.
  final pulumi.Input<Map<String, String>>? tags;
  /// The instance type. Valid values:
  /// - **migration**: MIGRATION.
  /// - **sync**: synchronization.
  /// - **subscribe**: SUBSCRIBE.
  /// - **NOTE:** This parameter or **job_id** must be passed in.
  final pulumi.Input<String>? type;
  /// Prepaid instance purchase duration.
  /// - When **period** is **Month**, the values are: 1, 2, 3, 4, 5, 6, 7, 8, and 9.
  /// - When **Period** is **Year**, the values are 1, 2, 3, and 5.
  /// - **NOTE:**
  /// - This parameter is valid and must be passed in only when **payment_type** is `Subscription`.
  /// - The billing method of the subscription instance. You can set the parameter `period`.
  final pulumi.Input<int>? usedTime;

  /// Creates a new [InstanceArgs].
  /// [autoPay] Whether to automatically renew the fee when it expires. Valid values:
  /// [autoStart] Whether to start the task automatically after the purchase is completed. Value:
  /// [computeUnit] Specifications of ETL. The unit is compute unit (CU),1CU = 1vCPU +4GB of memory. The value range is an integer greater than or equal to 2. **NOTE:** Enter this parameter and enable ETL to clean and convert data.
  /// [databaseCount] The number of private custom RDS instances in the PolarDB-X. The default value is **1**. **NOTE:** This parameter is required only when **source_endpoint_engine_name** is **DRDS**.
  /// [destinationEndpointEngineName] The target database engine type.
  /// [destinationRegion] The target instance region. For more information, see [List of supported regions](https://www.alibabacloud.com/help/en/data-transmission-service/latest/list-of-supported-regions). **NOTE:** This parameter or **job_id** must be passed in.
  /// [du] Assign a specified number of DU resources to DTS tasks in the DTS exclusive cluster. Valid values: **1** ~ **100**. **NOTE:** The value of this parameter must be within the range of the number of DUs available for the DTS dedicated cluster.
  /// [feeType] Subscription billing type, Valid values: `ONLY_CONFIGURATION_FEE`: charges only configuration fees; `CONFIGURATION_FEE_AND_DATA_FEE`: charges configuration fees and data traffic fees.
  /// [instanceClass] The type of the migration or synchronization instance.
  /// [jobId] The ID of the task obtained by calling the **ConfigureDtsJob** operation (**DtsJobId**).> After you pass in this parameter, you do not need to pass the **source_region**, **destination_region**, **type**, **source_endpoint_engine_name**, or **destination_endpoint_engine_name** parameters. Even if the input is passed in, the configuration in **job_id** shall prevail.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  /// [period] The billing method of the subscription instance. Value: `Year`, `Month`. **NOTE:** This parameter is valid and must be passed in only when `payment_type` is `Subscription`.
  /// [resourceGroupId] Resource Group ID.
  /// [sourceEndpointEngineName] Source instance database engine type.
  /// [sourceRegion] The source instance region. For more information, see [List of supported regions](https://www.alibabacloud.com/help/en/data-transmission-service/latest/list-of-supported-regions). **NOTE:** This parameter or **job_id** must be passed in.
  /// [syncArchitecture] Synchronization topology, value:
  /// [synchronizationDirection] The synchronization direction. Default value: `Forward`. Valid values:
  /// [tags] The tag value corresponding to the tag key.See the following `Block Tags`.
  /// [type] The instance type. Valid values:
  /// [usedTime] Prepaid instance purchase duration.
  InstanceArgs({
    bool? autoPay,
    bool? autoStart,
    int? computeUnit,
    int? databaseCount,
    String? destinationEndpointEngineName,
    String? destinationRegion,
    int? du,
    String? feeType,
    String? instanceClass,
    String? jobId,
    String? paymentType,
    String? period,
    String? resourceGroupId,
    String? sourceEndpointEngineName,
    String? sourceRegion,
    String? syncArchitecture,
    String? synchronizationDirection,
    Map<String, String>? tags,
    String? type,
    int? usedTime,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoStart = pulumi.Input.asOptionalInput<bool>(autoStart),
      computeUnit = pulumi.Input.asOptionalInput<int>(computeUnit),
      databaseCount = pulumi.Input.asOptionalInput<int>(databaseCount),
      destinationEndpointEngineName = pulumi.Input.asOptionalInput<String>(destinationEndpointEngineName),
      destinationRegion = pulumi.Input.asOptionalInput<String>(destinationRegion),
      du = pulumi.Input.asOptionalInput<int>(du),
      feeType = pulumi.Input.asOptionalInput<String>(feeType),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sourceEndpointEngineName = pulumi.Input.asOptionalInput<String>(sourceEndpointEngineName),
      sourceRegion = pulumi.Input.asOptionalInput<String>(sourceRegion),
      syncArchitecture = pulumi.Input.asOptionalInput<String>(syncArchitecture),
      synchronizationDirection = pulumi.Input.asOptionalInput<String>(synchronizationDirection),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      usedTime = pulumi.Input.asOptionalInput<int>(usedTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoStart': ?autoStart,
      'computeUnit': ?computeUnit,
      'databaseCount': ?databaseCount,
      'destinationEndpointEngineName': ?destinationEndpointEngineName,
      'destinationRegion': ?destinationRegion,
      'du': ?du,
      'feeType': ?feeType,
      'instanceClass': ?instanceClass,
      'jobId': ?jobId,
      'paymentType': ?paymentType,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'sourceEndpointEngineName': ?sourceEndpointEngineName,
      'sourceRegion': ?sourceRegion,
      'syncArchitecture': ?syncArchitecture,
      'synchronizationDirection': ?synchronizationDirection,
      'tags': ?tags,
      'type': ?type,
      'usedTime': ?usedTime,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoPay: map['autoPay'] == null ? null : map['autoPay'] as bool,
      autoStart: map['autoStart'] == null ? null : map['autoStart'] as bool,
      computeUnit: map['computeUnit'] == null ? null : map['computeUnit'] as int,
      databaseCount: map['databaseCount'] == null ? null : map['databaseCount'] as int,
      destinationEndpointEngineName: map['destinationEndpointEngineName'] == null ? null : map['destinationEndpointEngineName'] as String,
      destinationRegion: map['destinationRegion'] == null ? null : map['destinationRegion'] as String,
      du: map['du'] == null ? null : map['du'] as int,
      feeType: map['feeType'] == null ? null : map['feeType'] as String,
      instanceClass: map['instanceClass'] == null ? null : map['instanceClass'] as String,
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sourceEndpointEngineName: map['sourceEndpointEngineName'] == null ? null : map['sourceEndpointEngineName'] as String,
      sourceRegion: map['sourceRegion'] == null ? null : map['sourceRegion'] as String,
      syncArchitecture: map['syncArchitecture'] == null ? null : map['syncArchitecture'] as String,
      synchronizationDirection: map['synchronizationDirection'] == null ? null : map['synchronizationDirection'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      usedTime: map['usedTime'] == null ? null : map['usedTime'] as int,
    );
  }
}

