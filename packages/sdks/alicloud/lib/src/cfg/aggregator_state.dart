// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregator_aggregator_account.dart';

/// Input properties used for looking up and filtering Aggregator resources.
class AggregatorState {
  /// The member accounts of the account group. See `aggregator_accounts` below.
  /// > **NOTE:** If `aggregator_type` is set to `CUSTOM`, `aggregator_accounts` is required.
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
      aggregatorAccounts: map['aggregatorAccounts'] == null ? null : (pulumi.Input.decodeList<AggregatorAggregatorAccount>(map['aggregatorAccounts']!, (value) => AggregatorAggregatorAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      aggregatorName: map['aggregatorName'] == null ? null : (map['aggregatorName']! as String).input(),
      aggregatorType: map['aggregatorType'] == null ? null : (map['aggregatorType']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folderId: map['folderId'] == null ? null : (map['folderId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

