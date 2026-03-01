// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_batch_args_doc}
/// Arguments for getBatch.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_batch_args_doc}
class GetBatchArgs {
  final pulumi.Input<String> batchId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBatchArgs].
  /// [batchId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBatchArgs({
    required String batchId,
    required String location,
    String? project,
  }) : batchId = pulumi.Input.asInput<String>(batchId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': batchId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBatchArgs.fromMap(Map<String, dynamic> map) {
    return GetBatchArgs(
      batchId: map['batchId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
