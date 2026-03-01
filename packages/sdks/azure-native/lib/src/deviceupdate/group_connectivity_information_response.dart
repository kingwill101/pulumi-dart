// ignore_for_file: unused_element, unnecessary_cast


/// Group connectivity details.
class GroupConnectivityInformationResponse {
  /// List of customer visible FQDNs.
  final List<String>? customerVisibleFqdns;
  /// Group ID.
  final String groupId;
  /// Internal FQDN.
  final String internalFqdn;
  /// Member name.
  final String memberName;
  /// PrivateLinkService ARM region.
  final String? privateLinkServiceArmRegion;
  /// Redirect map ID.
  final String? redirectMapId;

  /// Creates a new [GroupConnectivityInformationResponse].
  /// [customerVisibleFqdns] List of customer visible FQDNs.
  /// [groupId] Group ID.
  /// [internalFqdn] Internal FQDN.
  /// [memberName] Member name.
  /// [privateLinkServiceArmRegion] PrivateLinkService ARM region.
  /// [redirectMapId] Redirect map ID.
  GroupConnectivityInformationResponse({
    this.customerVisibleFqdns,
    required this.groupId,
    required this.internalFqdn,
    required this.memberName,
    this.privateLinkServiceArmRegion,
    this.redirectMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerVisibleFqdns': ?customerVisibleFqdns,
      'groupId': groupId,
      'internalFqdn': internalFqdn,
      'memberName': memberName,
      'privateLinkServiceArmRegion': ?privateLinkServiceArmRegion,
      'redirectMapId': ?redirectMapId,
    };
  }

  factory GroupConnectivityInformationResponse.fromMap(Map<String, dynamic> map) {
    return GroupConnectivityInformationResponse(
      customerVisibleFqdns: map['customerVisibleFqdns'] == null ? null : (map['customerVisibleFqdns'] as List).cast<String>(),
      groupId: map['groupId'] as String,
      internalFqdn: map['internalFqdn'] as String,
      memberName: map['memberName'] as String,
      privateLinkServiceArmRegion: map['privateLinkServiceArmRegion'] == null ? null : map['privateLinkServiceArmRegion'] as String,
      redirectMapId: map['redirectMapId'] == null ? null : map['redirectMapId'] as String,
    );
  }
}

