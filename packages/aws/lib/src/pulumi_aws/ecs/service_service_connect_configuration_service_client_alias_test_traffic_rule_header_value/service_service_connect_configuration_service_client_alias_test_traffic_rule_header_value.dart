// ignore_for_file: unused_element, unnecessary_cast

class ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue {
  /// Exact string value to match in the header.
  final String exact;

  ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue(
      exact: map['exact'] as String,
    );
  }
}
