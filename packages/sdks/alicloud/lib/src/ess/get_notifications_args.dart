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
    this.ids,
    this.outputFile,
    required this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory GetNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      scalingGroupId: (map['scalingGroupId'] as String).input(),
    );
  }
}

