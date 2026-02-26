// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_launch_flex_template_parameter.dart';

/// A request to launch a Dataflow job from a Flex Template.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest {
  /// Parameter to launch a job from a Flex Template.
  final GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter launchParameter;

  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.
  final String location;

  /// The ID of the Cloud Platform project that the job belongs to.
  final String project;

  /// If true, the request is validated but not actually executed. Defaults to false.
  final bool? validateOnly;

  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest({
    required this.launchParameter,
    required this.location,
    required this.project,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['launchParameter'] = launchParameter.toMap();
    map['location'] = location;
    map['project'] = project;
    final validateOnlyValue = validateOnly;
    if (validateOnlyValue != null) {
      map['validateOnly'] = validateOnlyValue;
    }
    return map;
  }

  factory GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(
      launchParameter:
          GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromMap(
              (map['launchParameter'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      project: map['project'] as String,
      validateOnly:
          map['validateOnly'] == null ? null : map['validateOnly'] as bool,
    );
  }
}
