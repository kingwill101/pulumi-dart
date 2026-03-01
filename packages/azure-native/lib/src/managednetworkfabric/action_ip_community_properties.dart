// ignore_for_file: unused_element, unnecessary_cast

import 'ip_community_id_list.dart';

/// IP Community Properties.
class ActionIpCommunityProperties {
  /// List of IP Community IDs.
  final IpCommunityIdList? add;
  /// List of IP Community IDs.
  final IpCommunityIdList? delete;
  /// List of IP Community IDs.
  final IpCommunityIdList? set;

  /// Creates a new [ActionIpCommunityProperties].
  /// [add] List of IP Community IDs.
  /// [delete] List of IP Community IDs.
  /// [set] List of IP Community IDs.
  ActionIpCommunityProperties({
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

  factory ActionIpCommunityProperties.fromMap(Map<String, dynamic> map) {
    return ActionIpCommunityProperties(
      add: map['add'] == null ? null : IpCommunityIdList.fromMap((map['add'] as Map).cast<String, dynamic>()),
      delete: map['delete'] == null ? null : IpCommunityIdList.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      set: map['set'] == null ? null : IpCommunityIdList.fromMap((map['set'] as Map).cast<String, dynamic>()),
    );
  }
}

