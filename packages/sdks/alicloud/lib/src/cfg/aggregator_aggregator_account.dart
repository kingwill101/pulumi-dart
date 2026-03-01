// ignore_for_file: unused_element, unnecessary_cast


class AggregatorAggregatorAccount {
  /// The member ID.
  final String? accountId;
  /// The member name.
  final String? accountName;
  /// The affiliation of the member. Valid values: `ResourceDirectory`.
  final String? accountType;

  /// Creates a new [AggregatorAggregatorAccount].
  /// [accountId] The member ID.
  /// [accountName] The member name.
  /// [accountType] The affiliation of the member. Valid values: `ResourceDirectory`.
  AggregatorAggregatorAccount({
    this.accountId,
    this.accountName,
    this.accountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'accountType': ?accountType,
    };
  }

  factory AggregatorAggregatorAccount.fromMap(Map<String, dynamic> map) {
    return AggregatorAggregatorAccount(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      accountType: map['accountType'] == null ? null : map['accountType'] as String,
    );
  }
}

