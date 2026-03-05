// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_community_id_list_response.dart';

/// IP Community Properties.
class ActionIpCommunityPropertiesResponse {
  /// List of IP Community IDs.
  final pulumi.Input<IpCommunityIdListResponse>? add;
  /// List of IP Community IDs.
  final pulumi.Input<IpCommunityIdListResponse>? delete;
  /// List of IP Community IDs.
  final pulumi.Input<IpCommunityIdListResponse>? set;

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
      'add': ?pulumi.Input.mapOptionalInputValue<IpCommunityIdListResponse, Map<String, dynamic>>(add, (value) => value.toMap()),
      'delete': ?pulumi.Input.mapOptionalInputValue<IpCommunityIdListResponse, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'set': ?pulumi.Input.mapOptionalInputValue<IpCommunityIdListResponse, Map<String, dynamic>>(set, (value) => value.toMap()),
    };
  }

  factory ActionIpCommunityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActionIpCommunityPropertiesResponse(
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpCommunityIdListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpCommunityIdListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      set: (() { final guardedValue = map['set']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpCommunityIdListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

