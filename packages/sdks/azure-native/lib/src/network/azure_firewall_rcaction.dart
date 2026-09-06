// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the AzureFirewallRCAction.
class AzureFirewallRCAction {
  /// The type of action.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [AzureFirewallRCAction].
  /// [type] The type of action.
  const AzureFirewallRCAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AzureFirewallRCAction.fromMap(Map<String, dynamic> map) {
    return AzureFirewallRCAction(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
