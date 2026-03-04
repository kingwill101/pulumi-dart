// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_hooks_hook.dart';

/// Result data returned by getLifecycleHooks.
class GetLifecycleHooksResult {
  /// A list of lifecycle hooks. Each element contains the following attributes:
  final List<GetLifecycleHooksHook> hooks;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of lifecycle hook ids.
  final List<String> ids;
  final String? nameRegex;

  /// A list of lifecycle hook names.
  final List<String> names;
  final String? outputFile;

  /// ID of the scaling group.
  final String? scalingGroupId;

  /// Creates a new [GetLifecycleHooksResult].
  /// [hooks] A list of lifecycle hooks. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of lifecycle hook ids.
  /// [nameRegex] Optional.
  /// [names] A list of lifecycle hook names.
  /// [outputFile] Optional.
  /// [scalingGroupId] ID of the scaling group.
  GetLifecycleHooksResult({
    required this.hooks,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hooks':
          pulumi.Input.encodeList<GetLifecycleHooksHook, Map<String, dynamic>>(
            hooks,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory GetLifecycleHooksResult.fromMap(Map<String, dynamic> map) {
    return GetLifecycleHooksResult(
      hooks: pulumi.Input.decodeList<GetLifecycleHooksHook>(
        map['hooks']!,
        (value) => GetLifecycleHooksHook.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      scalingGroupId: (() {
        final guardedValue = map['scalingGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
