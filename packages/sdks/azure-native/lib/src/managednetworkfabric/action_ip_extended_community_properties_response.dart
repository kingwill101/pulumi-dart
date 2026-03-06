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
  const ActionIpExtendedCommunityPropertiesResponse({
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
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpExtendedCommunityIdListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpExtendedCommunityIdListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      set: (() { final guardedValue = map['set']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpExtendedCommunityIdListResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

