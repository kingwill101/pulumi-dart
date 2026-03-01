// ignore_for_file: unused_element, unnecessary_cast


/// IpGroups associated with azure firewall.
class AzureFirewallIpGroupsResponse {
  /// The iteration number.
  final String changeNumber;
  /// Resource ID.
  final String id;

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
      changeNumber: map['changeNumber'] as String,
      id: map['id'] as String,
    );
  }
}

