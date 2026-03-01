// ignore_for_file: unused_element, unnecessary_cast


/// Group connectivity details.
class GroupConnectivityInformation {
  /// List of customer visible FQDNs.
  final List<String>? customerVisibleFqdns;
  /// PrivateLinkService ARM region.
  final String? privateLinkServiceArmRegion;
  /// Redirect map ID.
  final String? redirectMapId;

  /// Creates a new [GroupConnectivityInformation].
  /// [customerVisibleFqdns] List of customer visible FQDNs.
  /// [privateLinkServiceArmRegion] PrivateLinkService ARM region.
  /// [redirectMapId] Redirect map ID.
  GroupConnectivityInformation({
    this.customerVisibleFqdns,
    this.privateLinkServiceArmRegion,
    this.redirectMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerVisibleFqdns': ?customerVisibleFqdns,
      'privateLinkServiceArmRegion': ?privateLinkServiceArmRegion,
      'redirectMapId': ?redirectMapId,
    };
  }

  factory GroupConnectivityInformation.fromMap(Map<String, dynamic> map) {
    return GroupConnectivityInformation(
      customerVisibleFqdns: map['customerVisibleFqdns'] == null ? null : (map['customerVisibleFqdns'] as List).cast<String>(),
      privateLinkServiceArmRegion: map['privateLinkServiceArmRegion'] == null ? null : map['privateLinkServiceArmRegion'] as String,
      redirectMapId: map['redirectMapId'] == null ? null : map['redirectMapId'] as String,
    );
  }
}

