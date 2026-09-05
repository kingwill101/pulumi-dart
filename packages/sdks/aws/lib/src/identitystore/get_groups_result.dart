// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  /// List of Identity Store Groups
  final List<GetGroupsGroup>? groups;
  final String? identityStoreId;
  final String? region;

  /// Creates a new [GetGroupsResult].
  /// [groups] List of Identity Store Groups
  /// [identityStoreId] Optional.
  /// [region] Optional.
  const GetGroupsResult({
    this.groups,
    this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?(() { final guardedValue = groups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'identityStoreId': ?identityStoreId,
      'region': ?region,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupsGroup>(guardedValue, (value) => GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
