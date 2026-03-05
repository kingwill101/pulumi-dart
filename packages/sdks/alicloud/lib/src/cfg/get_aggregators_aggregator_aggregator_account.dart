// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAggregatorsAggregatorAggregatorAccount {
  /// Aggregator account uid.
  final pulumi.Input<String> accountId;
  /// Aggregator account name.
  final pulumi.Input<String> accountName;
  /// Aggregator account source type.
  final pulumi.Input<String> accountType;

  /// Creates a new [GetAggregatorsAggregatorAggregatorAccount].
  /// [accountId] Aggregator account uid.
  /// [accountName] Aggregator account name.
  /// [accountType] Aggregator account source type.
  GetAggregatorsAggregatorAggregatorAccount({
    required this.accountId,
    required this.accountName,
    required this.accountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'accountName': accountName,
      'accountType': accountType,
    };
  }

  factory GetAggregatorsAggregatorAggregatorAccount.fromMap(Map<String, dynamic> map) {
    return GetAggregatorsAggregatorAggregatorAccount(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountType: pulumi.Input.fromValue(map['accountType'] as String),
    );
  }
}

