// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Group connectivity details.
class GroupConnectivityInformationResponse {
  /// List of customer visible FQDNs.
  final pulumi.Input<List<String>>? customerVisibleFqdns;
  /// Group ID.
  final pulumi.Input<String> groupId;
  /// Internal FQDN.
  final pulumi.Input<String> internalFqdn;
  /// Member name.
  final pulumi.Input<String> memberName;
  /// PrivateLinkService ARM region.
  final pulumi.Input<String>? privateLinkServiceArmRegion;
  /// Redirect map ID.
  final pulumi.Input<String>? redirectMapId;

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
      customerVisibleFqdns: map['customerVisibleFqdns'] == null ? null : ((map['customerVisibleFqdns'] as List).cast<String>()).input(),
      groupId: (map['groupId'] as String).input(),
      internalFqdn: (map['internalFqdn'] as String).input(),
      memberName: (map['memberName'] as String).input(),
      privateLinkServiceArmRegion: map['privateLinkServiceArmRegion'] == null ? null : (map['privateLinkServiceArmRegion'] as String).input(),
      redirectMapId: map['redirectMapId'] == null ? null : (map['redirectMapId'] as String).input(),
    );
  }
}

