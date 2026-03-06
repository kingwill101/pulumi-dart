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
  const ActionIpCommunityProperties({
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
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpCommunityIdList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpCommunityIdList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      set: (() { final guardedValue = map['set']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpCommunityIdList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

