// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_execution_template.dart';
import 'job_launch_stage.dart';

/// The set of arguments for Job.
class JobArgs11 {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  final Input<GoogleCloudRunV2BinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final Input<String>? clientVersion;

  /// Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.
  final Input<String> jobId;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  final Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final Input<JobLaunchStage>? launchStage;
  final Input<String>? location;

  /// The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  final Input<String>? name;
  final Input<String>? project;

  /// The template used to create executions for this Job.
  final Input<GoogleCloudRunV2ExecutionTemplate> template;

  JobArgs11({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    required this.jobId,
    this.labels,
    this.launchStage,
    this.location,
    this.name,
    this.project,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              GoogleCloudRunV2BinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clientValue = client;
    if (clientValue != null) {
      map['client'] = clientValue;
    }
    final clientVersionValue = clientVersion;
    if (clientVersionValue != null) {
      map['clientVersion'] = clientVersionValue;
    }
    map['jobId'] = jobId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] = Input.mapOptionalInputValue<JobLaunchStage, String>(
          launchStageValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['template'] = Input.mapInputValue<GoogleCloudRunV2ExecutionTemplate,
        Map<String, dynamic>>(template, (value) => value.toMap());
    return map;
  }

  factory JobArgs11.fromMap(Map<String, dynamic> map) {
    return JobArgs11(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization:
          Input.asOptionalInput<GoogleCloudRunV2BinaryAuthorization>(
              map['binaryAuthorization']),
      client: Input.asOptionalInput<String>(map['client']),
      clientVersion: Input.asOptionalInput<String>(map['clientVersion']),
      jobId: Input.asInput<String>(map['jobId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage: Input.asOptionalInput<JobLaunchStage>(map['launchStage']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      template:
          Input.asInput<GoogleCloudRunV2ExecutionTemplate>(map['template']),
    );
  }
}
