// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the AzureFirewallRCAction.
class AzureFirewallRCAction {
  /// The type of action.
  final String? type;

  /// Creates a new [AzureFirewallRCAction].
  /// [type] The type of action.
  AzureFirewallRCAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AzureFirewallRCAction.fromMap(Map<String, dynamic> map) {
    return AzureFirewallRCAction(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

