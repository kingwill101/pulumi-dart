// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents of a connection's group information.
class GroupConnectivityInformation {
  /// Gets or sets customer visible FQDNs.
  final pulumi.Input<List<String>>? customerVisibleFqdns;
  /// Gets or sets group id.
  final pulumi.Input<String>? groupId;
  /// Gets or sets Internal Fqdn.
  final pulumi.Input<String>? internalFqdn;
  /// Gets or sets member name.
  final pulumi.Input<String>? memberName;
  /// Gets or sets the private link service arm region.
  final pulumi.Input<String>? privateLinkServiceArmRegion;
  /// Gets or sets the redirect map id.
  final pulumi.Input<String>? redirectMapId;

  /// Creates a new [GroupConnectivityInformation].
  /// [customerVisibleFqdns] Gets or sets customer visible FQDNs.
  /// [groupId] Gets or sets group id.
  /// [internalFqdn] Gets or sets Internal Fqdn.
  /// [memberName] Gets or sets member name.
  /// [privateLinkServiceArmRegion] Gets or sets the private link service arm region.
  /// [redirectMapId] Gets or sets the redirect map id.
  GroupConnectivityInformation({
    this.customerVisibleFqdns,
    this.groupId,
    this.internalFqdn,
    this.memberName,
    this.privateLinkServiceArmRegion,
    this.redirectMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerVisibleFqdns': ?customerVisibleFqdns,
      'groupId': ?groupId,
      'internalFqdn': ?internalFqdn,
      'memberName': ?memberName,
      'privateLinkServiceArmRegion': ?privateLinkServiceArmRegion,
      'redirectMapId': ?redirectMapId,
    };
  }

  factory GroupConnectivityInformation.fromMap(Map<String, dynamic> map) {
    return GroupConnectivityInformation(
      customerVisibleFqdns: map['customerVisibleFqdns'] == null ? null : ((map['customerVisibleFqdns']! as List).cast<String>()).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      internalFqdn: map['internalFqdn'] == null ? null : (map['internalFqdn']! as String).input(),
      memberName: map['memberName'] == null ? null : (map['memberName']! as String).input(),
      privateLinkServiceArmRegion: map['privateLinkServiceArmRegion'] == null ? null : (map['privateLinkServiceArmRegion']! as String).input(),
      redirectMapId: map['redirectMapId'] == null ? null : (map['redirectMapId']! as String).input(),
    );
  }
}

