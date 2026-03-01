// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDestinationAzureMonitorMetric {
  /// Specifies the name of the Data Collection Rule.
  final String name;

  /// Creates a new [GetDataCollectionRuleDestinationAzureMonitorMetric].
  /// [name] Specifies the name of the Data Collection Rule.
  GetDataCollectionRuleDestinationAzureMonitorMetric({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetDataCollectionRuleDestinationAzureMonitorMetric.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationAzureMonitorMetric(
      name: map['name'] as String,
    );
  }
}

