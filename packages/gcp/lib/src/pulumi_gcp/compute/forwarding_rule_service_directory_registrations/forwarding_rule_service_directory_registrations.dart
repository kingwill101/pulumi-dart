// ignore_for_file: unused_element, unnecessary_cast

class ForwardingRuleServiceDirectoryRegistrations {
  /// Service Directory namespace to register the forwarding rule under.
  final String? namespace;

  /// Service Directory service to register the forwarding rule under.
  final String? service;

  ForwardingRuleServiceDirectoryRegistrations({
    this.namespace,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory ForwardingRuleServiceDirectoryRegistrations.fromMap(
      Map<String, dynamic> map) {
    return ForwardingRuleServiceDirectoryRegistrations(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
