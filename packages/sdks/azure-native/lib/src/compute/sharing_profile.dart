// ignore_for_file: unused_element, unnecessary_cast

import 'community_gallery_info.dart';

/// Profile for gallery sharing to subscription or tenant
class SharingProfile {
  /// Information of community gallery if current gallery is shared to community.
  final CommunityGalleryInfo? communityGalleryInfo;
  /// This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  final String? permissions;

  /// Creates a new [SharingProfile].
  /// [communityGalleryInfo] Information of community gallery if current gallery is shared to community.
  /// [permissions] This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  SharingProfile({
    this.communityGalleryInfo,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryInfo': ?communityGalleryInfo == null ? null : communityGalleryInfo!.toMap(),
      'permissions': ?permissions,
    };
  }

  factory SharingProfile.fromMap(Map<String, dynamic> map) {
    return SharingProfile(
      communityGalleryInfo: map['communityGalleryInfo'] == null ? null : CommunityGalleryInfo.fromMap((map['communityGalleryInfo'] as Map).cast<String, dynamic>()),
      permissions: map['permissions'] == null ? null : map['permissions'] as String,
    );
  }
}

