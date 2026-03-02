// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_community_id_list.dart';

/// IP Community Properties.
class ActionIpCommunityProperties {
  /// List of IP Community IDs.
  final pulumi.Input<IpCommunityIdList>? add;
  /// List of IP Community IDs.
  final pulumi.Input<IpCommunityIdList>? delete;
  /// List of IP Community IDs.
  final pulumi.Input<IpCommunityIdList>? set;

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
      'add': ?pulumi.Input.mapOptionalInputValue<IpCommunityIdList, Map<String, dynamic>>(add, (value) => value.toMap()),
      'delete': ?pulumi.Input.mapOptionalInputValue<IpCommunityIdList, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'set': ?pulumi.Input.mapOptionalInputValue<IpCommunityIdList, Map<String, dynamic>>(set, (value) => value.toMap()),
    };
  }

  factory ActionIpCommunityProperties.fromMap(Map<String, dynamic> map) {
    return ActionIpCommunityProperties(
      add: map['add'] == null ? null : (IpCommunityIdList.fromMap((map['add'] as Map).cast<String, dynamic>())).input(),
      delete: map['delete'] == null ? null : (IpCommunityIdList.fromMap((map['delete'] as Map).cast<String, dynamic>())).input(),
      set: map['set'] == null ? null : (IpCommunityIdList.fromMap((map['set'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

