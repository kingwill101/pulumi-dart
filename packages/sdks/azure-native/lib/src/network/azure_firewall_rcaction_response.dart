// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the AzureFirewallRCAction.
class AzureFirewallRCActionResponse {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [AzureFirewallRCActionResponse].
  /// [type] The type of action.
  AzureFirewallRCActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AzureFirewallRCActionResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallRCActionResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

