// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_lifecycle_hooks_get_lifecycle_hooks_args_doc}
/// Arguments for getLifecycleHooks.
/// {@endtemplate}
/// {@macro pulumi_ess_get_lifecycle_hooks_get_lifecycle_hooks_args_doc}
class GetLifecycleHooksArgs {
  /// A list of lifecycle hook IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter resulting lifecycle hook by name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Scaling group id the lifecycle hooks belong to.
  final pulumi.Input<String>? scalingGroupId;

  /// Creates a new [GetLifecycleHooksArgs].
  /// [ids] A list of lifecycle hook IDs.
  /// [nameRegex] A regex string to filter resulting lifecycle hook by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scalingGroupId] Scaling group id the lifecycle hooks belong to.
  GetLifecycleHooksArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory GetLifecycleHooksArgs.fromMap(Map<String, dynamic> map) {
    return GetLifecycleHooksArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingGroupId: (() {
        final guardedValue = map['scalingGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
