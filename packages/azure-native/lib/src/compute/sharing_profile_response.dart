// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_gallery_info_response.dart';
import 'sharing_profile_group_response.dart';

/// Profile for gallery sharing to subscription or tenant
class SharingProfileResponse {
  /// Information of community gallery if current gallery is shared to community.
  final CommunityGalleryInfoResponse? communityGalleryInfo;
  /// A list of sharing profile groups.
  final List<SharingProfileGroupResponse> groups;
  /// This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  final String? permissions;

  /// Creates a new [SharingProfileResponse].
  /// [communityGalleryInfo] Information of community gallery if current gallery is shared to community.
  /// [groups] A list of sharing profile groups.
  /// [permissions] This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  SharingProfileResponse({
    this.communityGalleryInfo,
    required this.groups,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryInfo': ?communityGalleryInfo == null ? null : communityGalleryInfo!.toMap(),
      'groups': pulumi.Input.encodeList<SharingProfileGroupResponse, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'permissions': ?permissions,
    };
  }

  factory SharingProfileResponse.fromMap(Map<String, dynamic> map) {
    return SharingProfileResponse(
      communityGalleryInfo: map['communityGalleryInfo'] == null ? null : CommunityGalleryInfoResponse.fromMap((map['communityGalleryInfo'] as Map).cast<String, dynamic>()),
      groups: pulumi.Input.decodeList<SharingProfileGroupResponse>(map['groups'], (value) => SharingProfileGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      permissions: map['permissions'] == null ? null : map['permissions'] as String,
    );
  }
}

