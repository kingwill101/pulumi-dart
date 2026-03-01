// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDestinationMonitorAccount {
  /// The resource ID of the Monitor Account.
  final String monitorAccountId;
  /// Specifies the name of the Data Collection Rule.
  final String name;

  /// Creates a new [GetDataCollectionRuleDestinationMonitorAccount].
  /// [monitorAccountId] The resource ID of the Monitor Account.
  /// [name] Specifies the name of the Data Collection Rule.
  GetDataCollectionRuleDestinationMonitorAccount({
    required this.monitorAccountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorAccountId': monitorAccountId,
      'name': name,
    };
  }

  factory GetDataCollectionRuleDestinationMonitorAccount.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationMonitorAccount(
      monitorAccountId: map['monitorAccountId'] as String,
      name: map['name'] as String,
    );
  }
}

