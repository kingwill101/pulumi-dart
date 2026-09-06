import 'package:pulumi/pulumi.dart' as pulumi;

/// SessionPersistence: Default (5-tuple), SourceIP(2-tuple), sourceIPProtocol(3-tuple)
enum LoadBalancerRuleSessionPersistenceType implements pulumi.PulumiEnum<String> {
  default_("Default"),
  sourceIP("SourceIP"),
  sourceIPProtocol("SourceIPProtocol");

  const LoadBalancerRuleSessionPersistenceType(this.wireValue);
  @override
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
