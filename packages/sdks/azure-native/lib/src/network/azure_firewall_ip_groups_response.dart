// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IpGroups associated with azure firewall.
class AzureFirewallIpGroupsResponse {
  /// The iteration number.
  final pulumi.Input<String> changeNumber;
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [AzureFirewallIpGroupsResponse].
  /// [changeNumber] The iteration number.
  /// [id] Resource ID.
  AzureFirewallIpGroupsResponse({
    required this.changeNumber,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeNumber': changeNumber,
      'id': id,
    };
  }

  factory AzureFirewallIpGroupsResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallIpGroupsResponse(
      changeNumber: (map['changeNumber'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

