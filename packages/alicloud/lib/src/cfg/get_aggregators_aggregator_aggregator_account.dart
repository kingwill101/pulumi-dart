// ignore_for_file: unused_element, unnecessary_cast


class GetAggregatorsAggregatorAggregatorAccount {
  /// Aggregator account uid.
  final String accountId;
  /// Aggregator account name.
  final String accountName;
  /// Aggregator account source type.
  final String accountType;

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
      accountId: map['accountId'] as String,
      accountName: map['accountName'] as String,
      accountType: map['accountType'] as String,
    );
  }
}

