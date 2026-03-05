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
      customerVisibleFqdns: (() { final guardedValue = map['customerVisibleFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      internalFqdn: pulumi.Input.fromValue(map['internalFqdn'] as String),
      memberName: pulumi.Input.fromValue(map['memberName'] as String),
      privateLinkServiceArmRegion: (() { final guardedValue = map['privateLinkServiceArmRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectMapId: (() { final guardedValue = map['redirectMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

