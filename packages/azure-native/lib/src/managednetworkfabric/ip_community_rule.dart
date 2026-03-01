// ignore_for_file: unused_element, unnecessary_cast


/// IP Community patchable properties.
class IpCommunityRule {
  /// Action to be taken on the configuration. Example: Permit | Deny.
  final String action;
  /// List the community members of IP Community.
  final List<String> communityMembers;
  /// Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  final double sequenceNumber;
  /// Supported well known Community List.
  final List<String>? wellKnownCommunities;

  /// Creates a new [IpCommunityRule].
  /// [action] Action to be taken on the configuration. Example: Permit | Deny.
  /// [communityMembers] List the community members of IP Community.
  /// [sequenceNumber] Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  /// [wellKnownCommunities] Supported well known Community List.
  IpCommunityRule({
    required this.action,
    required this.communityMembers,
    required this.sequenceNumber,
    this.wellKnownCommunities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'communityMembers': communityMembers,
      'sequenceNumber': sequenceNumber,
      'wellKnownCommunities': ?wellKnownCommunities,
    };
  }

  factory IpCommunityRule.fromMap(Map<String, dynamic> map) {
    return IpCommunityRule(
      action: map['action'] as String,
      communityMembers: (map['communityMembers'] as List).cast<String>(),
      sequenceNumber: map['sequenceNumber'] as double,
      wellKnownCommunities: map['wellKnownCommunities'] == null ? null : (map['wellKnownCommunities'] as List).cast<String>(),
    );
  }
}

