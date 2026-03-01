// ignore_for_file: unused_element, unnecessary_cast


/// The IP filter rules for the IoT hub.
class IpFilterRuleResponse {
  /// The desired action for requests captured by this rule.
  final String action;
  /// The name of the IP filter rule.
  final String filterName;
  /// A string that contains the IP address range in CIDR notation for the rule.
  final String ipMask;

  /// Creates a new [IpFilterRuleResponse].
  /// [action] The desired action for requests captured by this rule.
  /// [filterName] The name of the IP filter rule.
  /// [ipMask] A string that contains the IP address range in CIDR notation for the rule.
  IpFilterRuleResponse({
    required this.action,
    required this.filterName,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'filterName': filterName,
      'ipMask': ipMask,
    };
  }

  factory IpFilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpFilterRuleResponse(
      action: map['action'] as String,
      filterName: map['filterName'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

