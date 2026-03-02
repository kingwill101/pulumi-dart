// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Group connectivity details.
class GroupConnectivityInformation {
  /// List of customer visible FQDNs.
  final pulumi.Input<List<String>>? customerVisibleFqdns;
  /// PrivateLinkService ARM region.
  final pulumi.Input<String>? privateLinkServiceArmRegion;
  /// Redirect map ID.
  final pulumi.Input<String>? redirectMapId;

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
      customerVisibleFqdns: map['customerVisibleFqdns'] == null ? null : ((map['customerVisibleFqdns'] as List).cast<String>()).input(),
      privateLinkServiceArmRegion: map['privateLinkServiceArmRegion'] == null ? null : (map['privateLinkServiceArmRegion'] as String).input(),
      redirectMapId: map['redirectMapId'] == null ? null : (map['redirectMapId'] as String).input(),
    );
  }
}

