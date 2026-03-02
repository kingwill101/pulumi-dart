// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_defined_column.dart';
import 'table_primary_key.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// Whether allow data update operations. Default value is true. Skipping the resource state refresh step may result in unnecessary execution plan when upgrading from an earlier version.
  final pulumi.Input<bool>? allowUpdate;
  /// The property of `TableMeta` which indicates the structure information of a table. It describes the attribute value of defined column. The number of `defined_column` should not be more than 32. See `defined_column` below.
  final pulumi.Input<List<TableDefinedColumn>>? definedColumns;
  /// The max version offset of the table. The valid value is 1-9223372036854775807. Defaults to 86400.
  final pulumi.Input<String>? deviationCellVersionInSec;
  /// Whether enable OTS server side encryption. Default value is false.
  final pulumi.Input<bool>? enableSse;
  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String>? instanceName;
  /// The maximum number of versions stored in this table. The valid value is 1-2147483647.
  final pulumi.Input<int>? maxVersion;
  /// The property of `TableMeta` which indicates the structure information of a table. It describes the attribute value of primary key. The number of `primary_key` should not be less than one and not be more than four. See `primary_key` below.
  final pulumi.Input<List<TablePrimaryKey>>? primaryKeys;
  /// . The key ID of secret. `sse_key_id` is valid only when `sse_key_type` is set to `SSE_BYOK`.
  final pulumi.Input<String>? sseKeyId;
  /// The key type of OTS server side encryption. `SSE_KMS_SERVICE`, `SSE_BYOK` is allowed.
  final pulumi.Input<String>? sseKeyType;
  /// The arn of role that can access kms service. `sse_role_arn` is valid only when `sse_key_type` is set to `SSE_BYOK`.
  final pulumi.Input<String>? sseRoleArn;
  /// The table name of the OTS instance. If changed, a new table would be created.
  final pulumi.Input<String>? tableName;
  /// The retention time of data stored in this table (unit: second). The value maximum is 2147483647 and -1 means never expired.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [TableState].
  /// [allowUpdate] Whether allow data update operations. Default value is true. Skipping the resource state refresh step may result in unnecessary execution plan when upgrading from an earlier version.
  /// [definedColumns] The property of `TableMeta` which indicates the structure information of a table. It describes the attribute value of defined column. The number of `defined_column` should not be more than 32. See `defined_column` below.
  /// [deviationCellVersionInSec] The max version offset of the table. The valid value is 1-9223372036854775807. Defaults to 86400.
  /// [enableSse] Whether enable OTS server side encryption. Default value is false.
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [maxVersion] The maximum number of versions stored in this table. The valid value is 1-2147483647.
  /// [primaryKeys] The property of `TableMeta` which indicates the structure information of a table. It describes the attribute value of primary key. The number of `primary_key` should not be less than one and not be more than four. See `primary_key` below.
  /// [sseKeyId] . The key ID of secret. `sse_key_id` is valid only when `sse_key_type` is set to `SSE_BYOK`.
  /// [sseKeyType] The key type of OTS server side encryption. `SSE_KMS_SERVICE`, `SSE_BYOK` is allowed.
  /// [sseRoleArn] The arn of role that can access kms service. `sse_role_arn` is valid only when `sse_key_type` is set to `SSE_BYOK`.
  /// [tableName] The table name of the OTS instance. If changed, a new table would be created.
  /// [timeToLive] The retention time of data stored in this table (unit: second). The value maximum is 2147483647 and -1 means never expired.
  TableState({
    this.allowUpdate,
    this.definedColumns,
    this.deviationCellVersionInSec,
    this.enableSse,
    this.instanceName,
    this.maxVersion,
    this.primaryKeys,
    this.sseKeyId,
    this.sseKeyType,
    this.sseRoleArn,
    this.tableName,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUpdate': ?allowUpdate,
      'definedColumns': ?pulumi.Input.mapOptionalInputValue<List<TableDefinedColumn>, List<Map<String, dynamic>>>(definedColumns, (value) => pulumi.Input.encodeList<TableDefinedColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviationCellVersionInSec': ?deviationCellVersionInSec,
      'enableSse': ?enableSse,
      'instanceName': ?instanceName,
      'maxVersion': ?maxVersion,
      'primaryKeys': ?pulumi.Input.mapOptionalInputValue<List<TablePrimaryKey>, List<Map<String, dynamic>>>(primaryKeys, (value) => pulumi.Input.encodeList<TablePrimaryKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sseKeyId': ?sseKeyId,
      'sseKeyType': ?sseKeyType,
      'sseRoleArn': ?sseRoleArn,
      'tableName': ?tableName,
      'timeToLive': ?timeToLive,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      allowUpdate: map['allowUpdate'] == null ? null : (map['allowUpdate'] as bool).input(),
      definedColumns: map['definedColumns'] == null ? null : (pulumi.Input.decodeList<TableDefinedColumn>(map['definedColumns'], (value) => TableDefinedColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deviationCellVersionInSec: map['deviationCellVersionInSec'] == null ? null : (map['deviationCellVersionInSec'] as String).input(),
      enableSse: map['enableSse'] == null ? null : (map['enableSse'] as bool).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      maxVersion: map['maxVersion'] == null ? null : (map['maxVersion'] as int).input(),
      primaryKeys: map['primaryKeys'] == null ? null : (pulumi.Input.decodeList<TablePrimaryKey>(map['primaryKeys'], (value) => TablePrimaryKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sseKeyId: map['sseKeyId'] == null ? null : (map['sseKeyId'] as String).input(),
      sseKeyType: map['sseKeyType'] == null ? null : (map['sseKeyType'] as String).input(),
      sseRoleArn: map['sseRoleArn'] == null ? null : (map['sseRoleArn'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName'] as String).input(),
      timeToLive: map['timeToLive'] == null ? null : (map['timeToLive'] as int).input(),
    );
  }
}

