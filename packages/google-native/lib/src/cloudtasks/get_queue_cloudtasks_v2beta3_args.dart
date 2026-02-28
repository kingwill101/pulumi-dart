// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2beta3_get_queue_cloudtasks_v2beta3_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta3_get_queue_cloudtasks_v2beta3_args_doc}
class GetQueueCloudtasksV2beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetQueueCloudtasksV2beta3Args].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  /// [readMask] Optional.
  GetQueueCloudtasksV2beta3Args({
    required String location,
    String? project,
    required String queueId,
    String? readMask,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      queueId = pulumi.Input.asInput<String>(queueId),
      readMask = pulumi.Input.asOptionalInput<String>(readMask);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queueId': queueId,
      'readMask': ?readMask,
    };
  }

  factory GetQueueCloudtasksV2beta3Args.fromMap(Map<String, dynamic> map) {
    return GetQueueCloudtasksV2beta3Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      queueId: map['queueId'] as String,
      readMask: map['readMask'] == null ? null : map['readMask'] as String,
    );
  }
}

