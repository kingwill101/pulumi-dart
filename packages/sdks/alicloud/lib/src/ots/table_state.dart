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
    pulumi.Output<bool>? allowUpdate,
    pulumi.Output<List<TableDefinedColumn>>? definedColumns,
    pulumi.Output<String>? deviationCellVersionInSec,
    pulumi.Output<bool>? enableSse,
    pulumi.Output<String>? instanceName,
    pulumi.Output<int>? maxVersion,
    pulumi.Output<List<TablePrimaryKey>>? primaryKeys,
    pulumi.Output<String>? sseKeyId,
    pulumi.Output<String>? sseKeyType,
    pulumi.Output<String>? sseRoleArn,
    pulumi.Output<String>? tableName,
    pulumi.Output<int>? timeToLive,
  }) :
      allowUpdate = pulumi.Input.asOptionalInput<bool>(allowUpdate),
      definedColumns = pulumi.Input.asOptionalInput<List<TableDefinedColumn>>(definedColumns),
      deviationCellVersionInSec = pulumi.Input.asOptionalInput<String>(deviationCellVersionInSec),
      enableSse = pulumi.Input.asOptionalInput<bool>(enableSse),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      maxVersion = pulumi.Input.asOptionalInput<int>(maxVersion),
      primaryKeys = pulumi.Input.asOptionalInput<List<TablePrimaryKey>>(primaryKeys),
      sseKeyId = pulumi.Input.asOptionalInput<String>(sseKeyId),
      sseKeyType = pulumi.Input.asOptionalInput<String>(sseKeyType),
      sseRoleArn = pulumi.Input.asOptionalInput<String>(sseRoleArn),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      timeToLive = pulumi.Input.asOptionalInput<int>(timeToLive);

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
      allowUpdate: map['allowUpdate'] == null ? null : pulumi.Output.create<bool>(map['allowUpdate'] as bool),
      definedColumns: map['definedColumns'] == null ? null : pulumi.Output.create<List<TableDefinedColumn>>(pulumi.Input.decodeList<TableDefinedColumn>(map['definedColumns'], (value) => TableDefinedColumn.fromMap((value as Map).cast<String, dynamic>()))),
      deviationCellVersionInSec: map['deviationCellVersionInSec'] == null ? null : pulumi.Output.create<String>(map['deviationCellVersionInSec'] as String),
      enableSse: map['enableSse'] == null ? null : pulumi.Output.create<bool>(map['enableSse'] as bool),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      maxVersion: map['maxVersion'] == null ? null : pulumi.Output.create<int>(map['maxVersion'] as int),
      primaryKeys: map['primaryKeys'] == null ? null : pulumi.Output.create<List<TablePrimaryKey>>(pulumi.Input.decodeList<TablePrimaryKey>(map['primaryKeys'], (value) => TablePrimaryKey.fromMap((value as Map).cast<String, dynamic>()))),
      sseKeyId: map['sseKeyId'] == null ? null : pulumi.Output.create<String>(map['sseKeyId'] as String),
      sseKeyType: map['sseKeyType'] == null ? null : pulumi.Output.create<String>(map['sseKeyType'] as String),
      sseRoleArn: map['sseRoleArn'] == null ? null : pulumi.Output.create<String>(map['sseRoleArn'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
      timeToLive: map['timeToLive'] == null ? null : pulumi.Output.create<int>(map['timeToLive'] as int),
    );
  }
}

