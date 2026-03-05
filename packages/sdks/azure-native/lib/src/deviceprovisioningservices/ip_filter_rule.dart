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
      'action': pulumi.Input.mapInputValue<IpFilterActionType, String>(action, (value) => value.wireValue),
      'filterName': filterName,
      'ipMask': ipMask,
      'target': ?pulumi.Input.mapOptionalInputValue<IpFilterTargetType, String>(target, (value) => value.wireValue),
    };
  }

  factory IpFilterRule.fromMap(Map<String, dynamic> map) {
    return IpFilterRule(
      action: pulumi.Input.fromValue(IpFilterActionType.fromValue(map['action']! as String)),
      filterName: pulumi.Input.fromValue(map['filterName'] as String),
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpFilterTargetType.fromValue(guardedValue as String)); })(),
    );
  }
}

