// ignore_for_file: unused_element, unnecessary_cast

class GetForwardingRulesRuleServiceDirectoryRegistration {
  /// Service Directory namespace to register the forwarding rule under.
  final String namespace;

  /// Service Directory service to register the forwarding rule under.
  final String service;

  /// Creates a new [GetForwardingRulesRuleServiceDirectoryRegistration].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  GetForwardingRulesRuleServiceDirectoryRegistration({
    required this.namespace,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    map['service'] = service;
    return map;
  }

  factory GetForwardingRulesRuleServiceDirectoryRegistration.fromMap(
      Map<String, dynamic> map) {
    return GetForwardingRulesRuleServiceDirectoryRegistration(
      namespace: map['namespace'] as String,
      service: map['service'] as String,
    );
  }
}
