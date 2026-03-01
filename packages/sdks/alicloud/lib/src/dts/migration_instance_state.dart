// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MigrationInstance resources.
class MigrationInstanceState {
  /// [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  final pulumi.Input<int>? computeUnit;
  /// The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  final pulumi.Input<int>? databaseCount;
  /// The type of destination engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  final pulumi.Input<String>? destinationEndpointEngineName;
  /// The region of destination instance. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  final pulumi.Input<String>? destinationEndpointRegion;
  /// The ID of the Migration Instance.
  final pulumi.Input<String>? dtsInstanceId;
  /// The instance class. Valid values: `large`, `medium`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  final pulumi.Input<String>? instanceClass;
  /// The payment type of the resource. Valid values: `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The type of source endpoint engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  final pulumi.Input<String>? sourceEndpointEngineName;
  /// The region of source instance.
  final pulumi.Input<String>? sourceEndpointRegion;
  /// The status.
  final pulumi.Input<String>? status;
  /// The sync architecture. Valid values: `oneway`.
  final pulumi.Input<String>? syncArchitecture;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MigrationInstanceState].
  /// [computeUnit] [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  /// [databaseCount] The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  /// [destinationEndpointEngineName] The type of destination engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  /// [destinationEndpointRegion] The region of destination instance. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  /// [dtsInstanceId] The ID of the Migration Instance.
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`.
  /// [sourceEndpointEngineName] The type of source endpoint engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  /// [sourceEndpointRegion] The region of source instance.
  /// [status] The status.
  /// [syncArchitecture] The sync architecture. Valid values: `oneway`.
  /// [tags] A mapping of tags to assign to the resource.
  MigrationInstanceState({
    pulumi.Output<int>? computeUnit,
    pulumi.Output<int>? databaseCount,
    pulumi.Output<String>? destinationEndpointEngineName,
    pulumi.Output<String>? destinationEndpointRegion,
    pulumi.Output<String>? dtsInstanceId,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? sourceEndpointEngineName,
    pulumi.Output<String>? sourceEndpointRegion,
    pulumi.Output<String>? status,
    pulumi.Output<String>? syncArchitecture,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      computeUnit = pulumi.Input.asOptionalInput<int>(computeUnit),
      databaseCount = pulumi.Input.asOptionalInput<int>(databaseCount),
      destinationEndpointEngineName = pulumi.Input.asOptionalInput<String>(destinationEndpointEngineName),
      destinationEndpointRegion = pulumi.Input.asOptionalInput<String>(destinationEndpointRegion),
      dtsInstanceId = pulumi.Input.asOptionalInput<String>(dtsInstanceId),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      sourceEndpointEngineName = pulumi.Input.asOptionalInput<String>(sourceEndpointEngineName),
      sourceEndpointRegion = pulumi.Input.asOptionalInput<String>(sourceEndpointRegion),
      status = pulumi.Input.asOptionalInput<String>(status),
      syncArchitecture = pulumi.Input.asOptionalInput<String>(syncArchitecture),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeUnit': ?computeUnit,
      'databaseCount': ?databaseCount,
      'destinationEndpointEngineName': ?destinationEndpointEngineName,
      'destinationEndpointRegion': ?destinationEndpointRegion,
      'dtsInstanceId': ?dtsInstanceId,
      'instanceClass': ?instanceClass,
      'paymentType': ?paymentType,
      'sourceEndpointEngineName': ?sourceEndpointEngineName,
      'sourceEndpointRegion': ?sourceEndpointRegion,
      'status': ?status,
      'syncArchitecture': ?syncArchitecture,
      'tags': ?tags,
    };
  }

  factory MigrationInstanceState.fromMap(Map<String, dynamic> map) {
    return MigrationInstanceState(
      computeUnit: map['computeUnit'] == null ? null : pulumi.Output.create<int>(map['computeUnit'] as int),
      databaseCount: map['databaseCount'] == null ? null : pulumi.Output.create<int>(map['databaseCount'] as int),
      destinationEndpointEngineName: map['destinationEndpointEngineName'] == null ? null : pulumi.Output.create<String>(map['destinationEndpointEngineName'] as String),
      destinationEndpointRegion: map['destinationEndpointRegion'] == null ? null : pulumi.Output.create<String>(map['destinationEndpointRegion'] as String),
      dtsInstanceId: map['dtsInstanceId'] == null ? null : pulumi.Output.create<String>(map['dtsInstanceId'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      sourceEndpointEngineName: map['sourceEndpointEngineName'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointEngineName'] as String),
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointRegion'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      syncArchitecture: map['syncArchitecture'] == null ? null : pulumi.Output.create<String>(map['syncArchitecture'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

