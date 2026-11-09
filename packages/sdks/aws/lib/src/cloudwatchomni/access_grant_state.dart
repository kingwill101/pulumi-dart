// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_principal.dart';
import 'access_grant_scoped_action.dart';

/// Input properties used for looking up and filtering AccessGrant resources.
class AccessGrantState {
  /// ARN of the access grant.
  final pulumi.Input<String?>? arn;
  /// ID of the CloudWatch Omni domain that contains the space. Changing this forces a new resource.
  final pulumi.Input<String?>? domainId;
  /// Unique ID of the access grant.
  final pulumi.Input<String?>? grantId;
  /// Who manages the access grant.
  final pulumi.Input<String?>? grantType;
  /// Name of the access grant. Must be 1-64 characters and contain only letters, numbers, underscores (`_`) and hyphens (`-`). Changing this forces a new resource.
  final pulumi.Input<String?>? name;
  /// Permission to grant. Valid values are `SPACE_ADMIN`, `READ`, `READ_WRITE_DELETE` and `CUSTOM`. Changing this forces a new resource.
  final pulumi.Input<String?>? permission;
  /// Principal receiving the grant. See below. Changing this forces a new resource.
  final pulumi.Input<AccessGrantPrincipal?>? principal;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Group of actions to allow, with the resource scopes and conditions that limit them. Up to 20 blocks. Required for the `CUSTOM` permission, and can also be used with the other permissions. See below. Changing this forces a new resource.
  final pulumi.Input<List<AccessGrantScopedAction>?>? scopedActions;
  /// ID of the CloudWatch Omni space to scope the grant to. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? spaceId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AccessGrantState].
  /// [arn] ARN of the access grant.
  /// [domainId] ID of the CloudWatch Omni domain that contains the space. Changing this forces a new resource.
  /// [grantId] Unique ID of the access grant.
  /// [grantType] Who manages the access grant.
  /// [name] Name of the access grant. Must be 1-64 characters and contain only letters, numbers, underscores (`_`) and hyphens (`-`). Changing this forces a new resource.
  /// [permission] Permission to grant. Valid values are `SPACE_ADMIN`, `READ`, `READ_WRITE_DELETE` and `CUSTOM`. Changing this forces a new resource.
  /// [principal] Principal receiving the grant. See below. Changing this forces a new resource.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [scopedActions] Group of actions to allow, with the resource scopes and conditions that limit them. Up to 20 blocks. Required for the `CUSTOM` permission, and can also be used with the other permissions. See below. Changing this forces a new resource.
  /// [spaceId] ID of the CloudWatch Omni space to scope the grant to. Changing this forces a new resource.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AccessGrantState({
    this.arn,
    this.domainId,
    this.grantId,
    this.grantType,
    this.name,
    this.permission,
    this.principal,
    this.region,
    this.scopedActions,
    this.spaceId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainId': ?domainId,
      'grantId': ?grantId,
      'grantType': ?grantType,
      'name': ?name,
      'permission': ?permission,
      'principal': ?pulumi.Input.mapOptionalInputValue<AccessGrantPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'region': ?region,
      'scopedActions': ?pulumi.Input.mapOptionalInputValue<List<AccessGrantScopedAction>, List<Map<String, dynamic>>>(scopedActions, (value) => pulumi.Input.encodeList<AccessGrantScopedAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spaceId': ?spaceId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccessGrantState.fromMap(Map<String, dynamic> map) {
    return AccessGrantState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantId: (() { final guardedValue = map['grantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantType: (() { final guardedValue = map['grantType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopedActions: (() { final guardedValue = map['scopedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGrantScopedAction>(guardedValue, (value) => AccessGrantScopedAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spaceId: (() { final guardedValue = map['spaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
