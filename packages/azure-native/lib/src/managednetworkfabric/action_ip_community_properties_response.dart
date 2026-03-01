// ignore_for_file: unused_element, unnecessary_cast

import 'ip_community_id_list_response.dart';

/// IP Community Properties.
class ActionIpCommunityPropertiesResponse {
  /// List of IP Community IDs.
  final IpCommunityIdListResponse? add;
  /// List of IP Community IDs.
  final IpCommunityIdListResponse? delete;
  /// List of IP Community IDs.
  final IpCommunityIdListResponse? set;

  /// Creates a new [ActionIpCommunityPropertiesResponse].
  /// [add] List of IP Community IDs.
  /// [delete] List of IP Community IDs.
  /// [set] List of IP Community IDs.
  ActionIpCommunityPropertiesResponse({
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

  factory ActionIpCommunityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActionIpCommunityPropertiesResponse(
      add: map['add'] == null ? null : IpCommunityIdListResponse.fromMap((map['add'] as Map).cast<String, dynamic>()),
      delete: map['delete'] == null ? null : IpCommunityIdListResponse.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      set: map['set'] == null ? null : IpCommunityIdListResponse.fromMap((map['set'] as Map).cast<String, dynamic>()),
    );
  }
}

