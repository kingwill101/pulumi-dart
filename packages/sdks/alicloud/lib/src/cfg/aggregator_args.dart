// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregator_aggregator_account.dart';

/// {@template pulumi_cfg_aggregator_aggregator_args_doc}
/// The set of arguments for Aggregator.
/// {@endtemplate}
/// {@macro pulumi_cfg_aggregator_aggregator_args_doc}
class AggregatorArgs {
  /// The member accounts of the account group. See `aggregator_accounts` below.
  /// &gt; **NOTE:** If `aggregator_type` is set to `CUSTOM`, `aggregator_accounts` is required.
  final pulumi.Input<List<AggregatorAggregatorAccount>>? aggregatorAccounts;
  /// The name of the account group.
  final pulumi.Input<String> aggregatorName;
  /// The type of the account group. Default value: `CUSTOM`. Valid values:
  /// - `RD`: Global account group.
  /// - `FOLDER`: Folder account group.
  /// - `CUSTOM`: Custom account group.
  final pulumi.Input<String>? aggregatorType;
  /// The description of the account group.
  final pulumi.Input<String> description;
  /// The ID of the attached folder. You can specify multiple folder IDs. Separate the IDs with commas (,). **NOTE:** If `aggregator_type` is set to `FOLDER`, `folder_id` is required.
  final pulumi.Input<String>? folderId;

  /// Creates a new [AggregatorArgs].
  /// [aggregatorAccounts] The member accounts of the account group. See `aggregator_accounts` below.
  /// [aggregatorName] The name of the account group.
  /// [aggregatorType] The type of the account group. Default value: `CUSTOM`. Valid values:
  /// [description] The description of the account group.
  /// [folderId] The ID of the attached folder. You can specify multiple folder IDs. Separate the IDs with commas (,). **NOTE:** If `aggregator_type` is set to `FOLDER`, `folder_id` is required.
  const AggregatorArgs({
    this.aggregatorAccounts,
    required this.aggregatorName,
    this.aggregatorType,
    required this.description,
    this.folderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorAccounts': ?pulumi.Input.mapOptionalInputValue<List<AggregatorAggregatorAccount>, List<Map<String, dynamic>>>(aggregatorAccounts, (value) => pulumi.Input.encodeList<AggregatorAggregatorAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aggregatorName': aggregatorName,
      'aggregatorType': ?aggregatorType,
      'description': description,
      'folderId': ?folderId,
    };
  }

  factory AggregatorArgs.fromMap(Map<String, dynamic> map) {
    return AggregatorArgs(
      aggregatorAccounts: (() { final guardedValue = map['aggregatorAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregatorAggregatorAccount>(guardedValue, (value) => AggregatorAggregatorAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aggregatorName: pulumi.Input.fromValue(map['aggregatorName'] as String),
      aggregatorType: (() { final guardedValue = map['aggregatorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

