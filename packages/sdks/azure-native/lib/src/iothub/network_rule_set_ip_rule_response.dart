// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Rule to be applied as part of Network Rule Set
class NetworkRuleSetIpRuleResponse {
  /// IP Filter Action
  final pulumi.Input<String>? action;
  /// Name of the IP filter rule.
  final pulumi.Input<String> filterName;
  /// A string that contains the IP address range in CIDR notation for the rule.
  final pulumi.Input<String> ipMask;

  /// Creates a new [NetworkRuleSetIpRuleResponse].
  /// [action] IP Filter Action
  /// [filterName] Name of the IP filter rule.
  /// [ipMask] A string that contains the IP address range in CIDR notation for the rule.
  NetworkRuleSetIpRuleResponse({
    this.action,
    required this.filterName,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'filterName': filterName,
      'ipMask': ipMask,
    };
  }

  factory NetworkRuleSetIpRuleResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetIpRuleResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      filterName: (map['filterName'] as String).input(),
      ipMask: (map['ipMask'] as String).input(),
    );
  }
}

