// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_execution_template.dart';
import 'job_launch_stage.dart';

/// {@template pulumi_run_v2_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_run_v2_job_args_doc}
class JobArgs {
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

  /// Creates a new [JobArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [jobId] Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// [location] Optional.
  /// [name] The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  /// [project] Optional.
  /// [template] The template used to create executions for this Job.
  JobArgs({
    Map<String, String>? annotations,
    GoogleCloudRunV2BinaryAuthorization? binaryAuthorization,
    String? client,
    String? clientVersion,
    required String jobId,
    Map<String, String>? labels,
    JobLaunchStage? launchStage,
    String? location,
    String? name,
    String? project,
    required GoogleCloudRunV2ExecutionTemplate template,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        binaryAuthorization =
            pulumi.Input.asOptionalInput<GoogleCloudRunV2BinaryAuthorization>(
                binaryAuthorization),
        client = pulumi.Input.asOptionalInput<String>(client),
        clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
        jobId = pulumi.Input.asInput<String>(jobId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        launchStage = pulumi.Input.asOptionalInput<JobLaunchStage>(launchStage),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        template =
            pulumi.Input.asInput<GoogleCloudRunV2ExecutionTemplate>(template);

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

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorization: map['binaryAuthorization'] == null
          ? null
          : GoogleCloudRunV2BinaryAuthorization.fromMap(
              (map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      client: map['client'] == null ? null : map['client'] as String,
      clientVersion:
          map['clientVersion'] == null ? null : map['clientVersion'] as String,
      jobId: map['jobId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      launchStage: map['launchStage'] == null
          ? null
          : JobLaunchStage.fromValue(map['launchStage'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      template: GoogleCloudRunV2ExecutionTemplate.fromMap(
          (map['template'] as Map).cast<String, dynamic>()),
    );
  }
}
