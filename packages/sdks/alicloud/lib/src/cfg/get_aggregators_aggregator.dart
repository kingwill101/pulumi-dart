// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregators_aggregator_aggregator_account.dart';

class GetAggregatorsAggregator {
  /// Aggregator account uid.
  final String accountId;
  /// Account information in aggregator.
  final List<GetAggregatorsAggregatorAggregatorAccount> aggregatorAccounts;
  /// The id of aggregator.
  final String aggregatorId;
  /// The name of aggregator.
  final String aggregatorName;
  /// The type of aggregator.
  final String aggregatorType;
  /// The description of aggregator.
  final String description;
  /// The id of the aggregator.
  final String id;
  /// The status of the resource. Valid Values:  `0`: creating `1`: normal `2`: deleting.
  final String status;

  /// Creates a new [GetAggregatorsAggregator].
  /// [accountId] Aggregator account uid.
  /// [aggregatorAccounts] Account information in aggregator.
  /// [aggregatorId] The id of aggregator.
  /// [aggregatorName] The name of aggregator.
  /// [aggregatorType] The type of aggregator.
  /// [description] The description of aggregator.
  /// [id] The id of the aggregator.
  /// [status] The status of the resource. Valid Values:  `0`: creating `1`: normal `2`: deleting.
  GetAggregatorsAggregator({
    required this.accountId,
    required this.aggregatorAccounts,
    required this.aggregatorId,
    required this.aggregatorName,
    required this.aggregatorType,
    required this.description,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aggregatorAccounts': pulumi.Input.encodeList<GetAggregatorsAggregatorAggregatorAccount, Map<String, dynamic>>(aggregatorAccounts, (value) => value.toMap()),
      'aggregatorId': aggregatorId,
      'aggregatorName': aggregatorName,
      'aggregatorType': aggregatorType,
      'description': description,
      'id': id,
      'status': status,
    };
  }

  factory GetAggregatorsAggregator.fromMap(Map<String, dynamic> map) {
    return GetAggregatorsAggregator(
      accountId: map['accountId'] as String,
      aggregatorAccounts: pulumi.Input.decodeList<GetAggregatorsAggregatorAggregatorAccount>(map['aggregatorAccounts'], (value) => GetAggregatorsAggregatorAggregatorAccount.fromMap((value as Map).cast<String, dynamic>())),
      aggregatorId: map['aggregatorId'] as String,
      aggregatorName: map['aggregatorName'] as String,
      aggregatorType: map['aggregatorType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

