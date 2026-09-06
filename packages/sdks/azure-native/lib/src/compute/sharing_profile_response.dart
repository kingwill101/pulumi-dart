// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_gallery_info_response.dart';
import 'sharing_profile_group_response.dart';

/// Profile for gallery sharing to subscription or tenant
class SharingProfileResponse {
  /// Information of community gallery if current gallery is shared to community.
  final pulumi.Input<CommunityGalleryInfoResponse?>? communityGalleryInfo;
  /// A list of sharing profile groups.
  final pulumi.Input<List<SharingProfileGroupResponse>> groups;
  /// This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  final pulumi.Input<String?>? permissions;

  /// Creates a new [SharingProfileResponse].
  /// [communityGalleryInfo] Information of community gallery if current gallery is shared to community.
  /// [groups] A list of sharing profile groups.
  /// [permissions] This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
  const SharingProfileResponse({
    this.communityGalleryInfo,
    required this.groups,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryInfo': ?pulumi.Input.mapOptionalInputValue<CommunityGalleryInfoResponse, Map<String, dynamic>>(communityGalleryInfo, (value) => value.toMap()),
      'groups': pulumi.Input.mapInputValue<List<SharingProfileGroupResponse>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<SharingProfileGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissions': ?permissions,
    };
  }

  factory SharingProfileResponse.fromMap(Map<String, dynamic> map) {
    return SharingProfileResponse(
      communityGalleryInfo: (() { final guardedValue = map['communityGalleryInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommunityGalleryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groups: pulumi.Input.fromValue(pulumi.Input.decodeList<SharingProfileGroupResponse>(map['groups']!, (value) => SharingProfileGroupResponse.fromMap((value as Map).cast<String, dynamic>()))),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
