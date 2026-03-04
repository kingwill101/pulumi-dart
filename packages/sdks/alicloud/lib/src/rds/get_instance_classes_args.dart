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
  /// &gt; **NOTE**: The field `db_instance_id` will be ignored when `commodity_code` is not a read-only type.
  final pulumi.Input<String>? commodityCode;

  /// The DB instance class type by the user.
  final pulumi.Input<String>? dbInstanceClass;

  /// The ID of the instance.
  ///
  /// &gt; **NOTE**: The field `db_instance_id` will be ignored when `commodity_code` is not a read-only type.
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
    this.category,
    this.commodityCode,
    this.dbInstanceClass,
    this.dbInstanceId,
    this.dbInstanceStorageType,
    this.engine,
    this.engineVersion,
    this.instanceChargeType,
    this.multiZone,
    this.outputFile,
    this.sortedBy,
    this.storageType,
    this.zoneId,
  });

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
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      commodityCode: (() {
        final guardedValue = map['commodityCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceClass: (() {
        final guardedValue = map['dbInstanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceStorageType: (() {
        final guardedValue = map['dbInstanceStorageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiZone: (() {
        final guardedValue = map['multiZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortedBy: (() {
        final guardedValue = map['sortedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
