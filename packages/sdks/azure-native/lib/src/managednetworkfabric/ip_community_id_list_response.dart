// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Community ID list properties.
class IpCommunityIdListResponse {
  /// List of IP Community resource IDs.
  final pulumi.Input<List<String>>? ipCommunityIds;

  /// Creates a new [IpCommunityIdListResponse].
  /// [ipCommunityIds] List of IP Community resource IDs.
  IpCommunityIdListResponse({
    this.ipCommunityIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCommunityIds': ?ipCommunityIds,
    };
  }

  factory IpCommunityIdListResponse.fromMap(Map<String, dynamic> map) {
    return IpCommunityIdListResponse(
      ipCommunityIds: (() { final guardedValue = map['ipCommunityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

