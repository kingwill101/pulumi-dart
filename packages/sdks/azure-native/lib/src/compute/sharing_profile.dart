// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_gallery_info.dart';

/// Profile for gallery sharing to subscription or tenant
class SharingProfile {
  /// Information of community gallery if current gallery is shared to community.
  final pulumi.Input<CommunityGalleryInfo>? communityGalleryInfo;
  /// This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  final pulumi.Input<String>? permissions;

  /// Creates a new [SharingProfile].
  /// [communityGalleryInfo] Information of community gallery if current gallery is shared to community.
  /// [permissions] This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  const SharingProfile({
    this.communityGalleryInfo,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryInfo': ?pulumi.Input.mapOptionalInputValue<CommunityGalleryInfo, Map<String, dynamic>>(communityGalleryInfo, (value) => value.toMap()),
      'permissions': ?permissions,
    };
  }

  factory SharingProfile.fromMap(Map<String, dynamic> map) {
    return SharingProfile(
      communityGalleryInfo: (() { final guardedValue = map['communityGalleryInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommunityGalleryInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

