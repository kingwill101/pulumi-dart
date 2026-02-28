// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_dlp_job_args_doc}
/// Arguments for getDlpJob.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_dlp_job_args_doc}
class GetDlpJobArgs {
  final pulumi.Input<String> dlpJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDlpJobArgs].
  /// [dlpJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDlpJobArgs({
    required String dlpJobId,
    required String location,
    String? project,
  })  : dlpJobId = pulumi.Input.asInput<String>(dlpJobId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dlpJobId'] = dlpJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDlpJobArgs.fromMap(Map<String, dynamic> map) {
    return GetDlpJobArgs(
      dlpJobId: map['dlpJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
