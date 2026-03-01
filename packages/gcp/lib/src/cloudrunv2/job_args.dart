// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_binary_authorization.dart';
import 'job_template.dart';

/// {@template pulumi_cloudrunv2_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_job_job_args_doc}
class JobArgs {
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

  /// Creates a new [JobArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [deletionProtection] Optional.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run job
  /// [name] Name of the Job.
  /// [project] The ID of the project in which the resource belongs.
  /// [runExecutionToken] A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully completed.
  /// [startExecutionToken] A unique string used as a suffix creating a new execution upon job create or update. The Job will become ready when the execution is successfully started.
  /// [template] The template used to create executions for this Job.
  JobArgs({
    Map<String, String>? annotations,
    JobBinaryAuthorization? binaryAuthorization,
    String? client,
    String? clientVersion,
    bool? deletionProtection,
    Map<String, String>? labels,
    String? launchStage,
    required String location,
    String? name,
    String? project,
    String? runExecutionToken,
    String? startExecutionToken,
    required JobTemplate template,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       binaryAuthorization = pulumi
           .Input.asOptionalInput<JobBinaryAuthorization>(binaryAuthorization),
       client = pulumi.Input.asOptionalInput<String>(client),
       clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
       deletionProtection = pulumi.Input.asOptionalInput<bool>(
         deletionProtection,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       launchStage = pulumi.Input.asOptionalInput<String>(launchStage),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       runExecutionToken = pulumi.Input.asOptionalInput<String>(
         runExecutionToken,
       ),
       startExecutionToken = pulumi.Input.asOptionalInput<String>(
         startExecutionToken,
       ),
       template = pulumi.Input.asInput<JobTemplate>(template);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'binaryAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            JobBinaryAuthorization,
            Map<String, dynamic>
          >(binaryAuthorization, (value) => value.toMap()),
      'client': ?client,
      'clientVersion': ?clientVersion,
      'deletionProtection': ?deletionProtection,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'location': location,
      'name': ?name,
      'project': ?project,
      'runExecutionToken': ?runExecutionToken,
      'startExecutionToken': ?startExecutionToken,
      'template': pulumi.Input.mapInputValue<JobTemplate, Map<String, dynamic>>(
        template,
        (value) => value.toMap(),
      ),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorization: map['binaryAuthorization'] == null
          ? null
          : JobBinaryAuthorization.fromMap(
              (map['binaryAuthorization'] as Map).cast<String, dynamic>(),
            ),
      client: map['client'] == null ? null : map['client'] as String,
      clientVersion: map['clientVersion'] == null
          ? null
          : map['clientVersion'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      launchStage: map['launchStage'] == null
          ? null
          : map['launchStage'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runExecutionToken: map['runExecutionToken'] == null
          ? null
          : map['runExecutionToken'] as String,
      startExecutionToken: map['startExecutionToken'] == null
          ? null
          : map['startExecutionToken'] as String,
      template: JobTemplate.fromMap(
        (map['template'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
