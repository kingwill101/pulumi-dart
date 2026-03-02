// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_filter_action_type.dart';
import 'ip_filter_target_type.dart';

/// The IP filter rules for a provisioning Service.
class IpFilterRule {
  /// The desired action for requests captured by this rule.
  final pulumi.Input<IpFilterActionType> action;
  /// The name of the IP filter rule.
  final pulumi.Input<String> filterName;
  /// A string that contains the IP address range in CIDR notation for the rule.
  final pulumi.Input<String> ipMask;
  /// Target for requests captured by this rule.
  final pulumi.Input<IpFilterTargetType>? target;

  /// Creates a new [IpFilterRule].
  /// [action] The desired action for requests captured by this rule.
  /// [filterName] The name of the IP filter rule.
  /// [ipMask] A string that contains the IP address range in CIDR notation for the rule.
  /// [target] Target for requests captured by this rule.
  IpFilterRule({
    required this.action,
    required this.filterName,
    required this.ipMask,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<IpFilterActionType, String>(action, (value) => value.value),
      'filterName': filterName,
      'ipMask': ipMask,
      'target': ?pulumi.Input.mapOptionalInputValue<IpFilterTargetType, String>(target, (value) => value.value),
    };
  }

  factory IpFilterRule.fromMap(Map<String, dynamic> map) {
    return IpFilterRule(
      action: (IpFilterActionType.fromValue(map['action'] as String)).input(),
      filterName: (map['filterName'] as String).input(),
      ipMask: (map['ipMask'] as String).input(),
      target: map['target'] == null ? null : (IpFilterTargetType.fromValue(map['target']! as String)).input(),
    );
  }
}

