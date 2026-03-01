// ignore_for_file: unused_element, unnecessary_cast


/// Rule to filter client IP address.
class IPRuleResponse {
  /// Action when client IP address is matched.
  final String action;
  /// IPv4 address, or IPv4 address range in CIDR format.
  final String value;

  /// Creates a new [IPRuleResponse].
  /// [action] Action when client IP address is matched.
  /// [value] IPv4 address, or IPv4 address range in CIDR format.
  IPRuleResponse({
    required this.action,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'value': value,
    };
  }

  factory IPRuleResponse.fromMap(Map<String, dynamic> map) {
    return IPRuleResponse(
      action: map['action'] as String,
      value: map['value'] as String,
    );
  }
}

