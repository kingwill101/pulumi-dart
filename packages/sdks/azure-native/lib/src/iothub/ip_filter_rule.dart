// ignore_for_file: unused_element, unnecessary_cast

import 'ip_filter_action_type.dart';

/// The IP filter rules for the IoT hub.
class IpFilterRule {
  /// The desired action for requests captured by this rule.
  final IpFilterActionType action;
  /// The name of the IP filter rule.
  final String filterName;
  /// A string that contains the IP address range in CIDR notation for the rule.
  final String ipMask;

  /// Creates a new [IpFilterRule].
  /// [action] The desired action for requests captured by this rule.
  /// [filterName] The name of the IP filter rule.
  /// [ipMask] A string that contains the IP address range in CIDR notation for the rule.
  IpFilterRule({
    required this.action,
    required this.filterName,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.value,
      'filterName': filterName,
      'ipMask': ipMask,
    };
  }

  factory IpFilterRule.fromMap(Map<String, dynamic> map) {
    return IpFilterRule(
      action: IpFilterActionType.fromValue(map['action'] as String),
      filterName: map['filterName'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

