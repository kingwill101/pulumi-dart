// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_nas_job_args_doc}
/// Arguments for getNasJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_nas_job_args_doc}
class GetNasJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nasJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNasJobArgs].
  /// [location] Required.
  /// [nasJobId] Required.
  /// [project] Optional.
  GetNasJobArgs({
    required String location,
    required String nasJobId,
    String? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      nasJobId = pulumi.Input.asInput<String>(nasJobId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nasJobId': nasJobId,
      'project': ?project,
    };
  }

  factory GetNasJobArgs.fromMap(Map<String, dynamic> map) {
    return GetNasJobArgs(
      location: map['location'] as String,
      nasJobId: map['nasJobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

