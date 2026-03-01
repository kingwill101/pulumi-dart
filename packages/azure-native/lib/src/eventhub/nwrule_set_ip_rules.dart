// ignore_for_file: unused_element, unnecessary_cast


/// The response from the List namespace operation.
class NWRuleSetIpRules {
  /// The IP Filter Action
  final String? action;
  /// IP Mask
  final String? ipMask;

  /// Creates a new [NWRuleSetIpRules].
  /// [action] The IP Filter Action
  /// [ipMask] IP Mask
  NWRuleSetIpRules({
    this.action,
    this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ?ipMask,
    };
  }

  factory NWRuleSetIpRules.fromMap(Map<String, dynamic> map) {
    return NWRuleSetIpRules(
      action: map['action'] == null ? null : map['action'] as String,
      ipMask: map['ipMask'] == null ? null : map['ipMask'] as String,
    );
  }
}

