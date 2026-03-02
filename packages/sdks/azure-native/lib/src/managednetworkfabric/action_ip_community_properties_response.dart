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
      add: map['add'] == null ? null : (IpCommunityIdListResponse.fromMap((map['add']! as Map).cast<String, dynamic>())).input(),
      delete: map['delete'] == null ? null : (IpCommunityIdListResponse.fromMap((map['delete']! as Map).cast<String, dynamic>())).input(),
      set: map['set'] == null ? null : (IpCommunityIdListResponse.fromMap((map['set']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

