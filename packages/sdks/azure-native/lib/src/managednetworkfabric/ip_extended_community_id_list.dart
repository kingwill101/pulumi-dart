// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Extended Community Id list properties.
class IpExtendedCommunityIdList {
  /// List of IP Extended Community resource IDs.
  final pulumi.Input<List<String>>? ipExtendedCommunityIds;

  /// Creates a new [IpExtendedCommunityIdList].
  /// [ipExtendedCommunityIds] List of IP Extended Community resource IDs.
  IpExtendedCommunityIdList({
    this.ipExtendedCommunityIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipExtendedCommunityIds': ?ipExtendedCommunityIds,
    };
  }

  factory IpExtendedCommunityIdList.fromMap(Map<String, dynamic> map) {
    return IpExtendedCommunityIdList(
      ipExtendedCommunityIds: map['ipExtendedCommunityIds'] == null ? null : ((map['ipExtendedCommunityIds']! as List).cast<String>()).input(),
    );
  }
}

