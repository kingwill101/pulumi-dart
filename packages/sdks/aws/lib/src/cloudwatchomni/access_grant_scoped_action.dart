// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_scoped_action_resource.dart';

class AccessGrantScopedAction {
  /// 1-50 actions this group applies to, each in `vendor-code:Action` form, for example `cloudwatch:GetRecords`. Wildcards are not permitted.
  final pulumi.Input<List<String>> actions;
  /// Resource scope constraining these actions to specific resources. Up to 10 blocks. See below.
  final pulumi.Input<List<AccessGrantScopedActionResource>?>? resources;

  /// Creates a new [AccessGrantScopedAction].
  /// [actions] 1-50 actions this group applies to, each in `vendor-code:Action` form, for example `cloudwatch:GetRecords`. Wildcards are not permitted.
  /// [resources] Resource scope constraining these actions to specific resources. Up to 10 blocks. See below.
  const AccessGrantScopedAction({
    required this.actions,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<AccessGrantScopedActionResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<AccessGrantScopedActionResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessGrantScopedAction.fromMap(Map<String, dynamic> map) {
    return AccessGrantScopedAction(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGrantScopedActionResource>(guardedValue, (value) => AccessGrantScopedActionResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
