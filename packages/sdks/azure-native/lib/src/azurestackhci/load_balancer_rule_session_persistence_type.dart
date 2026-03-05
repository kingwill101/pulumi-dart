/// SessionPersistence: Default (5-tuple), SourceIP(2-tuple), sourceIPProtocol(3-tuple)
enum LoadBalancerRuleSessionPersistenceType {
  default_("Default"),
  sourceIP("SourceIP"),
  sourceIPProtocol("SourceIPProtocol");

  const LoadBalancerRuleSessionPersistenceType(this.wireValue);
  final String wireValue;

  static LoadBalancerRuleSessionPersistenceType fromValue(String value) {
    for (final item in LoadBalancerRuleSessionPersistenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerRuleSessionPersistenceType value: $value');
  }
}

