// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_scoped_action_resource_row_scope_group.dart';

class AccessGrantScopedActionResource {
  /// Up to 5 resource ARNs or ARN patterns the actions are limited to. Defaults to all resources of the type.
  final pulumi.Input<List<String>?>? resourceArns;
  /// Resource type name, for example `DataSet` or `OmniDashboard`.
  final pulumi.Input<String> resourceType;
  /// Row-level filter group. A row is visible when it matches every `rowScope` in any one group. Up to 20 blocks. Must be specified together with `signalTypes`, on a `DataSet` resource scope. See below.
  final pulumi.Input<List<AccessGrantScopedActionResourceRowScopeGroup>?>? rowScopeGroups;
  /// Signal types the row filtering applies to. Valid values are `LOGS` and `TRACES`. Must be specified together with `rowScopeGroup`, on a `DataSet` resource scope.
  final pulumi.Input<List<String>?>? signalTypes;
  /// Map of up to 3 tag key-value pairs. Access applies only to resources carrying all of these tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessGrantScopedActionResource].
  /// [resourceArns] Up to 5 resource ARNs or ARN patterns the actions are limited to. Defaults to all resources of the type.
  /// [resourceType] Resource type name, for example `DataSet` or `OmniDashboard`.
  /// [rowScopeGroups] Row-level filter group. A row is visible when it matches every `rowScope` in any one group. Up to 20 blocks. Must be specified together with `signalTypes`, on a `DataSet` resource scope. See below.
  /// [signalTypes] Signal types the row filtering applies to. Valid values are `LOGS` and `TRACES`. Must be specified together with `rowScopeGroup`, on a `DataSet` resource scope.
  /// [tags] Map of up to 3 tag key-value pairs. Access applies only to resources carrying all of these tags.
  const AccessGrantScopedActionResource({
    this.resourceArns,
    required this.resourceType,
    this.rowScopeGroups,
    this.signalTypes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArns': ?resourceArns,
      'resourceType': resourceType,
      'rowScopeGroups': ?pulumi.Input.mapOptionalInputValue<List<AccessGrantScopedActionResourceRowScopeGroup>, List<Map<String, dynamic>>>(rowScopeGroups, (value) => pulumi.Input.encodeList<AccessGrantScopedActionResourceRowScopeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'signalTypes': ?signalTypes,
      'tags': ?tags,
    };
  }

  factory AccessGrantScopedActionResource.fromMap(Map<String, dynamic> map) {
    return AccessGrantScopedActionResource(
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      rowScopeGroups: (() { final guardedValue = map['rowScopeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGrantScopedActionResourceRowScopeGroup>(guardedValue, (value) => AccessGrantScopedActionResourceRowScopeGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      signalTypes: (() { final guardedValue = map['signalTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
