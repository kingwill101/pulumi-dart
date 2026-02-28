// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_custom_job_args_doc}
/// Arguments for getCustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_custom_job_args_doc}
class GetCustomJobArgs {
  final pulumi.Input<String> customJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomJobArgs].
  /// [customJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCustomJobArgs({
    required String customJobId,
    required String location,
    String? project,
  })  : customJobId = pulumi.Input.asInput<String>(customJobId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customJobId'] = customJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomJobArgs(
      customJobId: map['customJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
