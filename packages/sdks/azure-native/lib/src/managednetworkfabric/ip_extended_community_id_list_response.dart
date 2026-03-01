// ignore_for_file: unused_element, unnecessary_cast


/// IP Extended Community Id list properties.
class IpExtendedCommunityIdListResponse {
  /// List of IP Extended Community resource IDs.
  final List<String>? ipExtendedCommunityIds;

  /// Creates a new [IpExtendedCommunityIdListResponse].
  /// [ipExtendedCommunityIds] List of IP Extended Community resource IDs.
  IpExtendedCommunityIdListResponse({
    this.ipExtendedCommunityIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipExtendedCommunityIds': ?ipExtendedCommunityIds,
    };
  }

  factory IpExtendedCommunityIdListResponse.fromMap(Map<String, dynamic> map) {
    return IpExtendedCommunityIdListResponse(
      ipExtendedCommunityIds: map['ipExtendedCommunityIds'] == null ? null : (map['ipExtendedCommunityIds'] as List).cast<String>(),
    );
  }
}

