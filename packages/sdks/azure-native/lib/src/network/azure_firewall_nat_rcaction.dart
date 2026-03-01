// ignore_for_file: unused_element, unnecessary_cast


/// AzureFirewall NAT Rule Collection Action.
class AzureFirewallNatRCAction {
  /// The type of action.
  final String? type;

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
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

