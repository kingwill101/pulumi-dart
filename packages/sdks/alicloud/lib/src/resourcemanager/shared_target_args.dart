// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_shared_target_shared_target_args_doc}
/// The set of arguments for SharedTarget.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_shared_target_shared_target_args_doc}
class SharedTargetArgs {
  /// The ID of the resource share.
  final pulumi.Input<String> resourceShareId;
  /// The ID of the principal.
  final pulumi.Input<String> targetId;

  /// Creates a new [SharedTargetArgs].
  /// [resourceShareId] The ID of the resource share.
  /// [targetId] The ID of the principal.
  SharedTargetArgs({
    required pulumi.Output<String> resourceShareId,
    required pulumi.Output<String> targetId,
  }) :
      resourceShareId = pulumi.Input.asInput<String>(resourceShareId),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceShareId': resourceShareId,
      'targetId': targetId,
    };
  }

  factory SharedTargetArgs.fromMap(Map<String, dynamic> map) {
    return SharedTargetArgs(
      resourceShareId: pulumi.Output.create<String>(map['resourceShareId'] as String),
      targetId: pulumi.Output.create<String>(map['targetId'] as String),
    );
  }
}

