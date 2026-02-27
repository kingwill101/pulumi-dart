// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_binary_authorization/job_binary_authorization.dart';
import '../job_template/job_template.dart';

/// The set of arguments for Job.
class JobCloudrunv2Args {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Job.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final pulumi.Input<JobBinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;
  final pulumi.Input<bool>? deletionProtection;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;

  /// The location of the cloud run job
  final pulumi.Input<String> location;

  /// Name of the Job.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  final pulumi.Input<String>? runExecutionToken;

  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// The sum of job name and token length must be fewer than 63 characters.
  final pulumi.Input<String>? startExecutionToken;

  /// The template used to create executions for this Job.
  /// Structure is documented below.
  final pulumi.Input<JobTemplate> template;

  JobCloudrunv2Args({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.deletionProtection,
    this.labels,
    this.launchStage,
    required this.location,
    this.name,
    this.project,
    this.runExecutionToken,
    this.startExecutionToken,
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
              JobBinaryAuthorization, Map<String, dynamic>>(
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
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] = launchStageValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final runExecutionTokenValue = runExecutionToken;
    if (runExecutionTokenValue != null) {
      map['runExecutionToken'] = runExecutionTokenValue;
    }
    final startExecutionTokenValue = startExecutionToken;
    if (startExecutionTokenValue != null) {
      map['startExecutionToken'] = startExecutionTokenValue;
    }
    map['template'] =
        pulumi.Input.mapInputValue<JobTemplate, Map<String, dynamic>>(
            template, (value) => value.toMap());
    return map;
  }

  factory JobCloudrunv2Args.fromMap(Map<String, dynamic> map) {
    return JobCloudrunv2Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization: pulumi.Input.asOptionalInput<JobBinaryAuthorization>(
          map['binaryAuthorization']),
      client: pulumi.Input.asOptionalInput<String>(map['client']),
      clientVersion: pulumi.Input.asOptionalInput<String>(map['clientVersion']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage: pulumi.Input.asOptionalInput<String>(map['launchStage']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runExecutionToken:
          pulumi.Input.asOptionalInput<String>(map['runExecutionToken']),
      startExecutionToken:
          pulumi.Input.asOptionalInput<String>(map['startExecutionToken']),
      template: pulumi.Input.asInput<JobTemplate>(map['template']),
    );
  }
}
