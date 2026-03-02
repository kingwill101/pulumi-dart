// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP filter rules for a provisioning Service.
class IpFilterRuleResponse {
  /// The desired action for requests captured by this rule.
  final pulumi.Input<String> action;
  /// The name of the IP filter rule.
  final pulumi.Input<String> filterName;
  /// A string that contains the IP address range in CIDR notation for the rule.
  final pulumi.Input<String> ipMask;
  /// Target for requests captured by this rule.
  final pulumi.Input<String>? target;

  /// Creates a new [IpFilterRuleResponse].
  /// [action] The desired action for requests captured by this rule.
  /// [filterName] The name of the IP filter rule.
  /// [ipMask] A string that contains the IP address range in CIDR notation for the rule.
  /// [target] Target for requests captured by this rule.
  IpFilterRuleResponse({
    required this.action,
    required this.filterName,
    required this.ipMask,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'filterName': filterName,
      'ipMask': ipMask,
      'target': ?target,
    };
  }

  factory IpFilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpFilterRuleResponse(
      action: (map['action'] as String).input(),
      filterName: (map['filterName'] as String).input(),
      ipMask: (map['ipMask'] as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

