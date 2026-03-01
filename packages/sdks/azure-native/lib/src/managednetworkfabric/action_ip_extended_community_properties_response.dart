// ignore_for_file: unused_element, unnecessary_cast

import 'ip_extended_community_id_list_response.dart';

/// IP Extended Community Properties.
class ActionIpExtendedCommunityPropertiesResponse {
  /// List of IP Extended Community IDs.
  final IpExtendedCommunityIdListResponse? add;
  /// List of IP Extended Community IDs.
  final IpExtendedCommunityIdListResponse? delete;
  /// List of IP Extended Community IDs.
  final IpExtendedCommunityIdListResponse? set;

  /// Creates a new [ActionIpExtendedCommunityPropertiesResponse].
  /// [add] List of IP Extended Community IDs.
  /// [delete] List of IP Extended Community IDs.
  /// [set] List of IP Extended Community IDs.
  ActionIpExtendedCommunityPropertiesResponse({
    this.add,
    this.delete,
    this.set,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add == null ? null : add!.toMap(),
      'delete': ?delete == null ? null : delete!.toMap(),
      'set': ?set == null ? null : set!.toMap(),
    };
  }

  factory ActionIpExtendedCommunityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActionIpExtendedCommunityPropertiesResponse(
      add: map['add'] == null ? null : IpExtendedCommunityIdListResponse.fromMap((map['add'] as Map).cast<String, dynamic>()),
      delete: map['delete'] == null ? null : IpExtendedCommunityIdListResponse.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      set: map['set'] == null ? null : IpExtendedCommunityIdListResponse.fromMap((map['set'] as Map).cast<String, dynamic>()),
    );
  }
}

