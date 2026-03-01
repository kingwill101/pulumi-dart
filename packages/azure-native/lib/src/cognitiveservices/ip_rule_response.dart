// ignore_for_file: unused_element, unnecessary_cast


/// A rule governing the accessibility from a specific ip address or ip range.
class IpRuleResponse {
  /// An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  final String value;

  /// Creates a new [IpRuleResponse].
  /// [value] An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  IpRuleResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory IpRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpRuleResponse(
      value: map['value'] as String,
    );
  }
}

