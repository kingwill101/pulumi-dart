// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Dimension
class DimensionNetworkFirewallFirewallPolicyResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DimensionNetworkFirewallFirewallPolicyResponse].
  /// [value] Property value
  const DimensionNetworkFirewallFirewallPolicyResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DimensionNetworkFirewallFirewallPolicyResponse.fromMap(Map<String, dynamic> map) {
    return DimensionNetworkFirewallFirewallPolicyResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
