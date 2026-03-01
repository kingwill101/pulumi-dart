// ignore_for_file: unused_element, unnecessary_cast


/// AzureFirewall NAT Rule Collection Action.
class AzureFirewallNatRCActionResponse {
  /// The type of action.
  final String? type;

  /// Creates a new [AzureFirewallNatRCActionResponse].
  /// [type] The type of action.
  AzureFirewallNatRCActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AzureFirewallNatRCActionResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRCActionResponse(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

