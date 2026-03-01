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
    pulumi.Output<List<AggregatorAggregatorAccount>>? aggregatorAccounts,
    pulumi.Output<String>? aggregatorName,
    pulumi.Output<String>? aggregatorType,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folderId,
    pulumi.Output<String>? status,
  }) :
      aggregatorAccounts = pulumi.Input.asOptionalInput<List<AggregatorAggregatorAccount>>(aggregatorAccounts),
      aggregatorName = pulumi.Input.asOptionalInput<String>(aggregatorName),
      aggregatorType = pulumi.Input.asOptionalInput<String>(aggregatorType),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      folderId = pulumi.Input.asOptionalInput<String>(folderId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      aggregatorAccounts: map['aggregatorAccounts'] == null ? null : pulumi.Output.create<List<AggregatorAggregatorAccount>>(pulumi.Input.decodeList<AggregatorAggregatorAccount>(map['aggregatorAccounts'], (value) => AggregatorAggregatorAccount.fromMap((value as Map).cast<String, dynamic>()))),
      aggregatorName: map['aggregatorName'] == null ? null : pulumi.Output.create<String>(map['aggregatorName'] as String),
      aggregatorType: map['aggregatorType'] == null ? null : pulumi.Output.create<String>(map['aggregatorType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folderId: map['folderId'] == null ? null : pulumi.Output.create<String>(map['folderId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

