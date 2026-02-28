// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2_get_queue_args_doc}
class GetQueueArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQueueArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  GetQueueArgs({
    required String location,
    String? project,
    required String queueId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        queueId = pulumi.Input.asInput<String>(queueId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['queueId'] = queueId;
    return map;
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      queueId: map['queueId'] as String,
    );
  }
}
