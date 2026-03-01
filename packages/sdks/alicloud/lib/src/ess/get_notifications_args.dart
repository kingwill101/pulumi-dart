// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_notifications_get_notifications_args_doc}
/// Arguments for getNotifications.
/// {@endtemplate}
/// {@macro pulumi_ess_get_notifications_get_notifications_args_doc}
class GetNotificationsArgs {
  /// A list of notification ids.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Scaling group id the notifications belong to.
  final pulumi.Input<String> scalingGroupId;

  /// Creates a new [GetNotificationsArgs].
  /// [ids] A list of notification ids.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scalingGroupId] Scaling group id the notifications belong to.
  GetNotificationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> scalingGroupId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      scalingGroupId = pulumi.Input.asInput<String>(scalingGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory GetNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      scalingGroupId: pulumi.Output.create<String>(map['scalingGroupId'] as String),
    );
  }
}

