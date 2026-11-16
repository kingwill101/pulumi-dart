// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_principal.dart';
import 'access_grant_scoped_action.dart';

/// {@template pulumi_cloudwatchomni_access_grant_access_grant_args_doc}
/// The set of arguments for AccessGrant.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_access_grant_access_grant_args_doc}
class AccessGrantArgs {
  /// ID of the CloudWatch Omni domain that contains the space. Changing this forces a new resource.
  final pulumi.Input<String> domainId;
  /// Name of the access grant. Must be 1-64 characters and contain only letters, numbers, underscores (`_`) and hyphens (`-`). Changing this forces a new resource.
  final pulumi.Input<String?>? name;
  /// Permission to grant. Valid values are `SPACE_ADMIN`, `READ`, `READ_WRITE_DELETE` and `CUSTOM`. Changing this forces a new resource.
  final pulumi.Input<String> permission;
  /// Principal receiving the grant. See below. Changing this forces a new resource.
  final pulumi.Input<AccessGrantPrincipal> principal;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Group of actions to allow, with the resource scopes and conditions that limit them. Up to 20 blocks. Required for the `CUSTOM` permission, and can also be used with the other permissions. See below. Changing this forces a new resource.
  final pulumi.Input<List<AccessGrantScopedAction>?>? scopedActions;
  /// ID of the CloudWatch Omni space to scope the grant to. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> spaceId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessGrantArgs].
  /// [domainId] ID of the CloudWatch Omni domain that contains the space. Changing this forces a new resource.
  /// [name] Name of the access grant. Must be 1-64 characters and contain only letters, numbers, underscores (`_`) and hyphens (`-`). Changing this forces a new resource.
  /// [permission] Permission to grant. Valid values are `SPACE_ADMIN`, `READ`, `READ_WRITE_DELETE` and `CUSTOM`. Changing this forces a new resource.
  /// [principal] Principal receiving the grant. See below. Changing this forces a new resource.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [scopedActions] Group of actions to allow, with the resource scopes and conditions that limit them. Up to 20 blocks. Required for the `CUSTOM` permission, and can also be used with the other permissions. See below. Changing this forces a new resource.
  /// [spaceId] ID of the CloudWatch Omni space to scope the grant to. Changing this forces a new resource.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AccessGrantArgs({
    required this.domainId,
    this.name,
    required this.permission,
    required this.principal,
    this.region,
    this.scopedActions,
    required this.spaceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'name': ?name,
      'permission': permission,
      'principal': pulumi.Input.mapInputValue<AccessGrantPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'region': ?region,
      'scopedActions': ?pulumi.Input.mapOptionalInputValue<List<AccessGrantScopedAction>, List<Map<String, dynamic>>>(scopedActions, (value) => pulumi.Input.encodeList<AccessGrantScopedAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spaceId': spaceId,
      'tags': ?tags,
    };
  }

  factory AccessGrantArgs.fromMap(Map<String, dynamic> map) {
    return AccessGrantArgs(
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: pulumi.Input.fromValue(map['permission'] as String),
      principal: pulumi.Input.fromValue(AccessGrantPrincipal.fromMap((map['principal']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopedActions: (() { final guardedValue = map['scopedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGrantScopedAction>(guardedValue, (value) => AccessGrantScopedAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spaceId: pulumi.Input.fromValue(map['spaceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
