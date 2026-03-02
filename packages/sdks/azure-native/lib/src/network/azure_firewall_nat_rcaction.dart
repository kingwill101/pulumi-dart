// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureFirewall NAT Rule Collection Action.
class AzureFirewallNatRCAction {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [AzureFirewallNatRCAction].
  /// [type] The type of action.
  AzureFirewallNatRCAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AzureFirewallNatRCAction.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRCAction(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

