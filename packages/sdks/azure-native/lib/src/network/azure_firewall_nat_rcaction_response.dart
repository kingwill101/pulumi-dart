// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureFirewall NAT Rule Collection Action.
class AzureFirewallNatRCActionResponse {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [AzureFirewallNatRCActionResponse].
  /// [type] The type of action.
  AzureFirewallNatRCActionResponse({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory AzureFirewallNatRCActionResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRCActionResponse(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
