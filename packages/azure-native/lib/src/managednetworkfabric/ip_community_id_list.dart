// ignore_for_file: unused_element, unnecessary_cast


/// IP Community ID list properties.
class IpCommunityIdList {
  /// List of IP Community resource IDs.
  final List<String>? ipCommunityIds;

  /// Creates a new [IpCommunityIdList].
  /// [ipCommunityIds] List of IP Community resource IDs.
  IpCommunityIdList({
    this.ipCommunityIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCommunityIds': ?ipCommunityIds,
    };
  }

  factory IpCommunityIdList.fromMap(Map<String, dynamic> map) {
    return IpCommunityIdList(
      ipCommunityIds: map['ipCommunityIds'] == null ? null : (map['ipCommunityIds'] as List).cast<String>(),
    );
  }
}

