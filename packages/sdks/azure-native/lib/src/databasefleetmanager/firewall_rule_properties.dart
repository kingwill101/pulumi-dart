// ignore_for_file: unused_element, unnecessary_cast


/// A Firewall rule properties.
class FirewallRuleProperties {
  /// End IP address.
  final String? endIpAddress;
  /// Start IP address.
  final String? startIpAddress;

  /// Creates a new [FirewallRuleProperties].
  /// [endIpAddress] End IP address.
  /// [startIpAddress] Start IP address.
  FirewallRuleProperties({
    this.endIpAddress,
    this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRuleProperties.fromMap(Map<String, dynamic> map) {
    return FirewallRuleProperties(
      endIpAddress: map['endIpAddress'] == null ? null : map['endIpAddress'] as String,
      startIpAddress: map['startIpAddress'] == null ? null : map['startIpAddress'] as String,
    );
  }
}

