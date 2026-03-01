// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_instance_classes_get_instance_classes_args_doc}
/// Arguments for getInstanceClasses.
/// {@endtemplate}
/// {@macro pulumi_rds_get_instance_classes_get_instance_classes_args_doc}
class GetInstanceClassesArgs {
  /// DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`, `serverless_basic`, `serverless_standard`, `serverless_ha`, `cluster`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  final pulumi.Input<String>? category;
  /// The commodity code of the instance. Valid values:
  /// * **bards**: The instance is a pay-as-you-go primary instance. This value is available on the China site (aliyun.com).
  /// * **rds**: The instance is a subscription primary instance. This value is available on the China site (aliyun.com).
  /// * **rords**: The instance is a pay-as-you-go read-only instance. This value is available on the China site (aliyun.com).
  /// * **rds_rordspre_public_cn**: The instance is a subscription read-only instance. This value is available on the China site (aliyun.com).
  /// * **bards_intl**: The instance is a pay-as-you-go primary instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_intl**: The instance is a subscription primary instance. This value is available on the International site (alibabacloud.com).
  /// * **rords_intl**: The instance is a pay-as-you-go read-only instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_rordspre_public_intl**: The instance is a subscription read-only instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_serverless_public_cn**: The instance is a subscription serverless instance. This value is available on the China site (aliyun.com).
  /// * **rds_serverless_public_intl**: The instance is a subscription serverless instance. This value is available on the International site (alibabacloud.com).
  ///
  /// > **NOTE**: The field `db_instance_id` will be ignored when `commodity_code` is not a read-only type.
  final pulumi.Input<String>? commodityCode;
  /// The DB instance class type by the user.
  final pulumi.Input<String>? dbInstanceClass;
  /// The ID of the instance.
  ///
  /// > **NOTE**: The field `db_instance_id` will be ignored when `commodity_code` is not a read-only type.
  final pulumi.Input<String>? dbInstanceId;
  /// The DB instance storage space required by the user. Valid values: "cloud_ssd", "local_ssd", "cloud_essd", "cloud_essd2", "cloud_essd3", "general_essd".
  final pulumi.Input<String>? dbInstanceStorageType;
  /// Database type. Valid values:"MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  final pulumi.Input<String>? engine;
  /// Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  final pulumi.Input<String>? engineVersion;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid` and `Serverless`. Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// Whether to show multi available zone. Default false to not show multi availability zone.
  final pulumi.Input<bool>? multiZone;
  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;
  /// Sort the results by specified fields. The supported value is' Price '. Modifying this field will trigger resource reconstruction.
  final pulumi.Input<String>? sortedBy;
  /// It has been deprecated from version 1.134.0+ and using `db_instance_storage_type` instead.
  final pulumi.Input<String>? storageType;
  /// The Zone to launch the DB instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstanceClassesArgs].
  /// [category] DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`, `serverless_basic`, `serverless_standard`, `serverless_ha`, `cluster`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  /// [commodityCode] The commodity code of the instance. Valid values:
  /// [dbInstanceClass] The DB instance class type by the user.
  /// [dbInstanceId] The ID of the instance.
  /// [dbInstanceStorageType] The DB instance storage space required by the user. Valid values: "cloud_ssd", "local_ssd", "cloud_essd", "cloud_essd2", "cloud_essd3", "general_essd".
  /// [engine] Database type. Valid values:"MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  /// [engineVersion] Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid` and `Serverless`. Default to `PostPaid`.
  /// [multiZone] Whether to show multi available zone. Default false to not show multi availability zone.
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  /// [sortedBy] Sort the results by specified fields. The supported value is' Price '. Modifying this field will trigger resource reconstruction.
  /// [storageType] It has been deprecated from version 1.134.0+ and using `db_instance_storage_type` instead.
  /// [zoneId] The Zone to launch the DB instance.
  GetInstanceClassesArgs({
    pulumi.Output<String>? category,
    pulumi.Output<String>? commodityCode,
    pulumi.Output<String>? dbInstanceClass,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? dbInstanceStorageType,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<bool>? multiZone,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? sortedBy,
    pulumi.Output<String>? storageType,
    pulumi.Output<String>? zoneId,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      commodityCode = pulumi.Input.asOptionalInput<String>(commodityCode),
      dbInstanceClass = pulumi.Input.asOptionalInput<String>(dbInstanceClass),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      dbInstanceStorageType = pulumi.Input.asOptionalInput<String>(dbInstanceStorageType),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      multiZone = pulumi.Input.asOptionalInput<bool>(multiZone),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sortedBy = pulumi.Input.asOptionalInput<String>(sortedBy),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'commodityCode': ?commodityCode,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceId': ?dbInstanceId,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceChargeType': ?instanceChargeType,
      'multiZone': ?multiZone,
      'outputFile': ?outputFile,
      'sortedBy': ?sortedBy,
      'storageType': ?storageType,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceClassesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesArgs(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      commodityCode: map['commodityCode'] == null ? null : pulumi.Output.create<String>(map['commodityCode'] as String),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : pulumi.Output.create<String>(map['dbInstanceClass'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      multiZone: map['multiZone'] == null ? null : pulumi.Output.create<bool>(map['multiZone'] as bool),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sortedBy: map['sortedBy'] == null ? null : pulumi.Output.create<String>(map['sortedBy'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

