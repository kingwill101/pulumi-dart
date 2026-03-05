// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregator_aggregator_account.dart';

/// Input properties used for looking up and filtering Aggregator resources.
class AggregatorState {
  /// The member accounts of the account group. See `aggregator_accounts` below.
  /// &gt; **NOTE:** If `aggregator_type` is set to `CUSTOM`, `aggregator_accounts` is required.
  final pulumi.Input<List<AggregatorAggregatorAccount>>? aggregatorAccounts;
  /// The name of the account group.
  final pulumi.Input<String>? aggregatorName;
  /// The type of the account group. Default value: `CUSTOM`. Valid values:
  /// - `RD`: Global account group.
  /// - `FOLDER`: Folder account group.
  /// - `CUSTOM`: Custom account group.
  final pulumi.Input<String>? aggregatorType;
  /// (Available since v1.262.0) The timestamp when the account group was created.
  final pulumi.Input<int>? createTime;
  /// The description of the account group.
  final pulumi.Input<String>? description;
  /// The ID of the attached folder. You can specify multiple folder IDs. Separate the IDs with commas (,). **NOTE:** If `aggregator_type` is set to `FOLDER`, `folder_id` is required.
  final pulumi.Input<String>? folderId;
  /// The status of the account group.
  final pulumi.Input<String>? status;

  /// Creates a new [AggregatorState].
  /// [aggregatorAccounts] The member accounts of the account group. See `aggregator_accounts` below.
  /// [aggregatorName] The name of the account group.
  /// [aggregatorType] The type of the account group. Default value: `CUSTOM`. Valid values:
  /// [createTime] (Available since v1.262.0) The timestamp when the account group was created.
  /// [description] The description of the account group.
  /// [folderId] The ID of the attached folder. You can specify multiple folder IDs. Separate the IDs with commas (,). **NOTE:** If `aggregator_type` is set to `FOLDER`, `folder_id` is required.
  /// [status] The status of the account group.
  AggregatorState({
    this.aggregatorAccounts,
    this.aggregatorName,
    this.aggregatorType,
    this.createTime,
    this.description,
    this.folderId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorAccounts': ?pulumi.Input.mapOptionalInputValue<List<AggregatorAggregatorAccount>, List<Map<String, dynamic>>>(aggregatorAccounts, (value) => pulumi.Input.encodeList<AggregatorAggregatorAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aggregatorName': ?aggregatorName,
      'aggregatorType': ?aggregatorType,
      'createTime': ?createTime,
      'description': ?description,
      'folderId': ?folderId,
      'status': ?status,
    };
  }

  factory AggregatorState.fromMap(Map<String, dynamic> map) {
    return AggregatorState(
      aggregatorAccounts: (() { final guardedValue = map['aggregatorAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregatorAggregatorAccount>(guardedValue, (value) => AggregatorAggregatorAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aggregatorName: (() { final guardedValue = map['aggregatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregatorType: (() { final guardedValue = map['aggregatorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

