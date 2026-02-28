// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_custom_job_aiplatform_v1beta1_args_doc}
/// Arguments for getCustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_custom_job_aiplatform_v1beta1_args_doc}
class GetCustomJobAiplatformV1beta1Args {
  final pulumi.Input<String> customJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomJobAiplatformV1beta1Args].
  /// [customJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCustomJobAiplatformV1beta1Args({
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

  factory GetCustomJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetCustomJobAiplatformV1beta1Args(
      customJobId: map['customJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
