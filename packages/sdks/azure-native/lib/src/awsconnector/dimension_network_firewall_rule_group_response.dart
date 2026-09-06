// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Dimension
class DimensionNetworkFirewallRuleGroupResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [DimensionNetworkFirewallRuleGroupResponse].
  /// [value] Property value
  const DimensionNetworkFirewallRuleGroupResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DimensionNetworkFirewallRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return DimensionNetworkFirewallRuleGroupResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
