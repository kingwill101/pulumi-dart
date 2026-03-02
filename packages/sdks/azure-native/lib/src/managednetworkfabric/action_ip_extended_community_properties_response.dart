// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_extended_community_id_list_response.dart';

/// IP Extended Community Properties.
class ActionIpExtendedCommunityPropertiesResponse {
  /// List of IP Extended Community IDs.
  final pulumi.Input<IpExtendedCommunityIdListResponse>? add;
  /// List of IP Extended Community IDs.
  final pulumi.Input<IpExtendedCommunityIdListResponse>? delete;
  /// List of IP Extended Community IDs.
  final pulumi.Input<IpExtendedCommunityIdListResponse>? set;

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
      'add': ?pulumi.Input.mapOptionalInputValue<IpExtendedCommunityIdListResponse, Map<String, dynamic>>(add, (value) => value.toMap()),
      'delete': ?pulumi.Input.mapOptionalInputValue<IpExtendedCommunityIdListResponse, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'set': ?pulumi.Input.mapOptionalInputValue<IpExtendedCommunityIdListResponse, Map<String, dynamic>>(set, (value) => value.toMap()),
    };
  }

  factory ActionIpExtendedCommunityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActionIpExtendedCommunityPropertiesResponse(
      add: map['add'] == null ? null : (IpExtendedCommunityIdListResponse.fromMap((map['add']! as Map).cast<String, dynamic>())).input(),
      delete: map['delete'] == null ? null : (IpExtendedCommunityIdListResponse.fromMap((map['delete']! as Map).cast<String, dynamic>())).input(),
      set: map['set'] == null ? null : (IpExtendedCommunityIdListResponse.fromMap((map['set']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

