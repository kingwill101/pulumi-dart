// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_binary_authorization/job_binary_authorization.dart';
import '../job_template/job_template.dart';

/// The set of arguments for Job.
class JobArgs2 {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Job.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final Input<JobBinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final Input<String>? clientVersion;
  final Input<bool>? deletionProtection;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final Input<String>? launchStage;

  /// The location of the cloud run job
  final Input<String> location;

  /// Name of the Job.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// The sum of job name and token length must be fewer than 63 characters.
  final Input<String>? runExecutionToken;

  /// A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// The sum of job name and token length must be fewer than 63 characters.
  final Input<String>? startExecutionToken;

  /// The template used to create executions for this Job.
  /// Structure is documented below.
  final Input<JobTemplate> template;

  JobArgs2({
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
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
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
    map['template'] = Input.mapInputValue<JobTemplate, Map<String, dynamic>>(
        template, (value) => value.toMap());
    return map;
  }

  factory JobArgs2.fromMap(Map<String, dynamic> map) {
    return JobArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization: Input.asOptionalInput<JobBinaryAuthorization>(
          map['binaryAuthorization']),
      client: Input.asOptionalInput<String>(map['client']),
      clientVersion: Input.asOptionalInput<String>(map['clientVersion']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage: Input.asOptionalInput<String>(map['launchStage']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      runExecutionToken:
          Input.asOptionalInput<String>(map['runExecutionToken']),
      startExecutionToken:
          Input.asOptionalInput<String>(map['startExecutionToken']),
      template: Input.asInput<JobTemplate>(map['template']),
    );
  }
}
