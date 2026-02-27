// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_execution_template.dart';
import 'job_launch_stage.dart';

/// The set of arguments for Job.
class JobRunV2Args {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  final pulumi.Input<GoogleCloudRunV2BinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;

  /// Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.
  final pulumi.Input<String> jobId;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final pulumi.Input<JobLaunchStage>? launchStage;
  final pulumi.Input<String>? location;

  /// The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The template used to create executions for this Job.
  final pulumi.Input<GoogleCloudRunV2ExecutionTemplate> template;

  JobRunV2Args({
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
      map['binaryAuthorization'] = pulumi.Input.mapOptionalInputValue<
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
      map['launchStage'] =
          pulumi.Input.mapOptionalInputValue<JobLaunchStage, String>(
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
    map['template'] = pulumi.Input.mapInputValue<
        GoogleCloudRunV2ExecutionTemplate,
        Map<String, dynamic>>(template, (value) => value.toMap());
    return map;
  }

  factory JobRunV2Args.fromMap(Map<String, dynamic> map) {
    return JobRunV2Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization:
          pulumi.Input.asOptionalInput<GoogleCloudRunV2BinaryAuthorization>(
              map['binaryAuthorization']),
      client: pulumi.Input.asOptionalInput<String>(map['client']),
      clientVersion: pulumi.Input.asOptionalInput<String>(map['clientVersion']),
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage:
          pulumi.Input.asOptionalInput<JobLaunchStage>(map['launchStage']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      template: pulumi.Input.asInput<GoogleCloudRunV2ExecutionTemplate>(
          map['template']),
    );
  }
}
