// ignore_for_file: unused_element, unnecessary_cast


class ResourceHydrationAccount {
  /// The account name.
  final String? accountName;
  /// The encrypted key.
  final String? encryptedKey;
  /// The max child resource consistency job limit.
  final double? maxChildResourceConsistencyJobLimit;
  /// The subscription id.
  final String? subscriptionId;

  /// Creates a new [ResourceHydrationAccount].
  /// [accountName] The account name.
  /// [encryptedKey] The encrypted key.
  /// [maxChildResourceConsistencyJobLimit] The max child resource consistency job limit.
  /// [subscriptionId] The subscription id.
  ResourceHydrationAccount({
    this.accountName,
    this.encryptedKey,
    this.maxChildResourceConsistencyJobLimit,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'encryptedKey': ?encryptedKey,
      'maxChildResourceConsistencyJobLimit': ?maxChildResourceConsistencyJobLimit,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory ResourceHydrationAccount.fromMap(Map<String, dynamic> map) {
    return ResourceHydrationAccount(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      encryptedKey: map['encryptedKey'] == null ? null : map['encryptedKey'] as String,
      maxChildResourceConsistencyJobLimit: map['maxChildResourceConsistencyJobLimit'] == null ? null : map['maxChildResourceConsistencyJobLimit'] as double,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

