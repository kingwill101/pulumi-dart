// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_synchronization_instance_synchronization_instance_args_doc}
/// The set of arguments for SynchronizationInstance.
/// {@endtemplate}
/// {@macro pulumi_dts_synchronization_instance_synchronization_instance_args_doc}
class SynchronizationInstanceArgs {
  /// Whether to automatically renew when it expires. Valid values: `true`, `false`.
  final pulumi.Input<String>? autoPay;
  /// Whether to automatically start the task after the purchase completed. Valid values: `true`, `false`.
  final pulumi.Input<String>? autoStart;
  /// [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  final pulumi.Input<int>? computeUnit;
  /// The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  final pulumi.Input<int>? databaseCount;
  /// The type of destination engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  final pulumi.Input<String> destinationEndpointEngineName;
  /// The region of destination instance. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  final pulumi.Input<String> destinationEndpointRegion;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  final pulumi.Input<String>? instanceClass;
  /// The duration of prepaid instance purchase. this parameter is required When `payment_type` equals `Subscription`.
  final pulumi.Input<int>? paymentDuration;
  /// The payment duration unit. Valid values: `Month`, `Year`. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  final pulumi.Input<String>? paymentDurationUnit;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  final pulumi.Input<String> paymentType;
  /// The number of instances purchased.
  final pulumi.Input<int>? quantity;
  /// The type of source endpoint engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  final pulumi.Input<String> sourceEndpointEngineName;
  /// The region of source instance.
  final pulumi.Input<String> sourceEndpointRegion;
  /// The sync architecture. Valid values: `oneway`, `bidirectional`.
  final pulumi.Input<String>? syncArchitecture;

  /// Creates a new [SynchronizationInstanceArgs].
  /// [autoPay] Whether to automatically renew when it expires. Valid values: `true`, `false`.
  /// [autoStart] Whether to automatically start the task after the purchase completed. Valid values: `true`, `false`.
  /// [computeUnit] [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  /// [databaseCount] The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  /// [destinationEndpointEngineName] The type of destination engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  /// [destinationEndpointRegion] The region of destination instance. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`. You can only upgrade the configuration, not downgrade the configuration. If you downgrade the instance, you need to [submit a ticket](https://selfservice.console.aliyun.com/ticket/category/dts/today).
  /// [paymentDuration] The duration of prepaid instance purchase. this parameter is required When `payment_type` equals `Subscription`.
  /// [paymentDurationUnit] The payment duration unit. Valid values: `Month`, `Year`. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  /// [quantity] The number of instances purchased.
  /// [sourceEndpointEngineName] The type of source endpoint engine. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`. For the correspondence between the supported source and target libraries, see [Supported Databases, Synchronization Initialization Types and Synchronization Topologies](https://help.aliyun.com/document_detail/130744.html), [Supported Databases and Migration Types](https://help.aliyun.com/document_detail/26618.html).
  /// [sourceEndpointRegion] The region of source instance.
  /// [syncArchitecture] The sync architecture. Valid values: `oneway`, `bidirectional`.
  SynchronizationInstanceArgs({
    this.autoPay,
    this.autoStart,
    this.computeUnit,
    this.databaseCount,
    required this.destinationEndpointEngineName,
    required this.destinationEndpointRegion,
    this.instanceClass,
    this.paymentDuration,
    this.paymentDurationUnit,
    required this.paymentType,
    this.quantity,
    required this.sourceEndpointEngineName,
    required this.sourceEndpointRegion,
    this.syncArchitecture,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoStart': ?autoStart,
      'computeUnit': ?computeUnit,
      'databaseCount': ?databaseCount,
      'destinationEndpointEngineName': destinationEndpointEngineName,
      'destinationEndpointRegion': destinationEndpointRegion,
      'instanceClass': ?instanceClass,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': paymentType,
      'quantity': ?quantity,
      'sourceEndpointEngineName': sourceEndpointEngineName,
      'sourceEndpointRegion': sourceEndpointRegion,
      'syncArchitecture': ?syncArchitecture,
    };
  }

  factory SynchronizationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SynchronizationInstanceArgs(
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as String).input(),
      autoStart: map['autoStart'] == null ? null : (map['autoStart']! as String).input(),
      computeUnit: map['computeUnit'] == null ? null : (map['computeUnit']! as int).input(),
      databaseCount: map['databaseCount'] == null ? null : (map['databaseCount']! as int).input(),
      destinationEndpointEngineName: (map['destinationEndpointEngineName'] as String).input(),
      destinationEndpointRegion: (map['destinationEndpointRegion'] as String).input(),
      instanceClass: map['instanceClass'] == null ? null : (map['instanceClass']! as String).input(),
      paymentDuration: map['paymentDuration'] == null ? null : (map['paymentDuration']! as int).input(),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : (map['paymentDurationUnit']! as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      quantity: map['quantity'] == null ? null : (map['quantity']! as int).input(),
      sourceEndpointEngineName: (map['sourceEndpointEngineName'] as String).input(),
      sourceEndpointRegion: (map['sourceEndpointRegion'] as String).input(),
      syncArchitecture: map['syncArchitecture'] == null ? null : (map['syncArchitecture']! as String).input(),
    );
  }
}

