// ignore_for_file: unused_element, unnecessary_cast


/// Route policy statement condition properties.
class StatementConditionProperties {
  /// List of IP Community resource IDs.
  final List<String>? ipCommunityIds;
  /// List of IP Extended Community resource IDs.
  final List<String>? ipExtendedCommunityIds;
  /// Arm Resource Id of IpPrefix.
  final String? ipPrefixId;
  /// Type of the condition used.
  final String? type;

  /// Creates a new [StatementConditionProperties].
  /// [ipCommunityIds] List of IP Community resource IDs.
  /// [ipExtendedCommunityIds] List of IP Extended Community resource IDs.
  /// [ipPrefixId] Arm Resource Id of IpPrefix.
  /// [type] Type of the condition used.
  StatementConditionProperties({
    this.ipCommunityIds,
    this.ipExtendedCommunityIds,
    this.ipPrefixId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCommunityIds': ?ipCommunityIds,
      'ipExtendedCommunityIds': ?ipExtendedCommunityIds,
      'ipPrefixId': ?ipPrefixId,
      'type': ?type,
    };
  }

  factory StatementConditionProperties.fromMap(Map<String, dynamic> map) {
    return StatementConditionProperties(
      ipCommunityIds: map['ipCommunityIds'] == null ? null : (map['ipCommunityIds'] as List).cast<String>(),
      ipExtendedCommunityIds: map['ipExtendedCommunityIds'] == null ? null : (map['ipExtendedCommunityIds'] as List).cast<String>(),
      ipPrefixId: map['ipPrefixId'] == null ? null : map['ipPrefixId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

