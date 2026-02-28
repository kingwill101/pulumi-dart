// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tpu_v2alpha1_get_queued_resource_args_doc}
/// Arguments for getQueuedResource.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2alpha1_get_queued_resource_args_doc}
class GetQueuedResourceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queuedResourceId;

  /// Creates a new [GetQueuedResourceArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [queuedResourceId] Required.
  GetQueuedResourceArgs({
    required String location,
    String? project,
    required String queuedResourceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      queuedResourceId = pulumi.Input.asInput<String>(queuedResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queuedResourceId': queuedResourceId,
    };
  }

  factory GetQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetQueuedResourceArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      queuedResourceId: map['queuedResourceId'] as String,
    );
  }
}

