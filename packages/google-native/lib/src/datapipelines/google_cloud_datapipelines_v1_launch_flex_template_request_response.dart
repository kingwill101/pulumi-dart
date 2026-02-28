// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_launch_flex_template_parameter_response.dart';

/// A request to launch a Dataflow job from a Flex Template.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse {
  /// Parameter to launch a job from a Flex Template.
  final GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse launchParameter;
  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.
  final String location;
  /// The ID of the Cloud Platform project that the job belongs to.
  final String project;
  /// If true, the request is validated but not actually executed. Defaults to false.
  final bool validateOnly;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse].
  /// [launchParameter] Parameter to launch a job from a Flex Template.
  /// [location] The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.
  /// [project] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] If true, the request is validated but not actually executed. Defaults to false.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse({
    required this.launchParameter,
    required this.location,
    required this.project,
    required this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchParameter': launchParameter.toMap(),
      'location': location,
      'project': project,
      'validateOnly': validateOnly,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse(
      launchParameter: GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse.fromMap((map['launchParameter'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      project: map['project'] as String,
      validateOnly: map['validateOnly'] as bool,
    );
  }
}

