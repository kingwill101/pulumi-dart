// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_extended_community_id_list.dart';

/// IP Extended Community Properties.
class ActionIpExtendedCommunityProperties {
  /// List of IP Extended Community IDs.
  final pulumi.Input<IpExtendedCommunityIdList>? add;
  /// List of IP Extended Community IDs.
  final pulumi.Input<IpExtendedCommunityIdList>? delete;
  /// List of IP Extended Community IDs.
  final pulumi.Input<IpExtendedCommunityIdList>? set;

  /// Creates a new [ActionIpExtendedCommunityProperties].
  /// [add] List of IP Extended Community IDs.
  /// [delete] List of IP Extended Community IDs.
  /// [set] List of IP Extended Community IDs.
  const ActionIpExtendedCommunityProperties({
    this.add,
    this.delete,
    this.set,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?pulumi.Input.mapOptionalInputValue<IpExtendedCommunityIdList, Map<String, dynamic>>(add, (value) => value.toMap()),
      'delete': ?pulumi.Input.mapOptionalInputValue<IpExtendedCommunityIdList, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'set': ?pulumi.Input.mapOptionalInputValue<IpExtendedCommunityIdList, Map<String, dynamic>>(set, (value) => value.toMap()),
    };
  }

  factory ActionIpExtendedCommunityProperties.fromMap(Map<String, dynamic> map) {
    return ActionIpExtendedCommunityProperties(
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpExtendedCommunityIdList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpExtendedCommunityIdList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      set: (() { final guardedValue = map['set']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpExtendedCommunityIdList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

