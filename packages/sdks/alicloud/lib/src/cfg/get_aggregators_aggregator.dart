// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregators_aggregator_aggregator_account.dart';

class GetAggregatorsAggregator {
  /// Aggregator account uid.
  final pulumi.Input<String> accountId;

  /// Account information in aggregator.
  final pulumi.Input<List<GetAggregatorsAggregatorAggregatorAccount>>
  aggregatorAccounts;

  /// The id of aggregator.
  final pulumi.Input<String> aggregatorId;

  /// The name of aggregator.
  final pulumi.Input<String> aggregatorName;

  /// The type of aggregator.
  final pulumi.Input<String> aggregatorType;

  /// The description of aggregator.
  final pulumi.Input<String> description;

  /// The id of the aggregator.
  final pulumi.Input<String> id;

  /// The status of the resource. Valid Values:  `0`: creating `1`: normal `2`: deleting.
  final pulumi.Input<String> status;

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
      'aggregatorAccounts':
          pulumi.Input.mapInputValue<
            List<GetAggregatorsAggregatorAggregatorAccount>,
            List<Map<String, dynamic>>
          >(
            aggregatorAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  GetAggregatorsAggregatorAggregatorAccount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aggregatorAccounts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAggregatorsAggregatorAggregatorAccount>(
          map['aggregatorAccounts']!,
          (value) => GetAggregatorsAggregatorAggregatorAccount.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      aggregatorId: pulumi.Input.fromValue(map['aggregatorId'] as String),
      aggregatorName: pulumi.Input.fromValue(map['aggregatorName'] as String),
      aggregatorType: pulumi.Input.fromValue(map['aggregatorType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
