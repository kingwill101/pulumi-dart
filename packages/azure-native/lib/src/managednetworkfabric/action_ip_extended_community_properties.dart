// ignore_for_file: unused_element, unnecessary_cast

import 'ip_extended_community_id_list.dart';

/// IP Extended Community Properties.
class ActionIpExtendedCommunityProperties {
  /// List of IP Extended Community IDs.
  final IpExtendedCommunityIdList? add;
  /// List of IP Extended Community IDs.
  final IpExtendedCommunityIdList? delete;
  /// List of IP Extended Community IDs.
  final IpExtendedCommunityIdList? set;

  /// Creates a new [ActionIpExtendedCommunityProperties].
  /// [add] List of IP Extended Community IDs.
  /// [delete] List of IP Extended Community IDs.
  /// [set] List of IP Extended Community IDs.
  ActionIpExtendedCommunityProperties({
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

  factory ActionIpExtendedCommunityProperties.fromMap(Map<String, dynamic> map) {
    return ActionIpExtendedCommunityProperties(
      add: map['add'] == null ? null : IpExtendedCommunityIdList.fromMap((map['add'] as Map).cast<String, dynamic>()),
      delete: map['delete'] == null ? null : IpExtendedCommunityIdList.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      set: map['set'] == null ? null : IpExtendedCommunityIdList.fromMap((map['set'] as Map).cast<String, dynamic>()),
    );
  }
}

