// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../worker_pool_binary_authorization/worker_pool_binary_authorization.dart';
import '../worker_pool_instance_split/worker_pool_instance_split.dart';
import '../worker_pool_scaling/worker_pool_scaling.dart';
import '../worker_pool_template/worker_pool_template.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolArgs2 {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPool.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final Input<WorkerPoolBinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final Input<String>? clientVersion;

  /// (Optional, Deprecated)
  /// One or more custom audiences that you want this worker pool to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  ///
  /// > **Warning:** `custom_audiences` is deprecated since it is not applicable to WorkerPool resource and will be removed in a future major release.
  final Input<List<String>>? customAudiences;
  final Input<bool>? deletionProtection;

  /// User-provided description of the WorkerPool. This field currently has a 512-character limit.
  final Input<String>? description;

  /// Specifies how to distribute instances over a collection of Revisions belonging to the WorkerPool. If instance split is empty or not provided, defaults to 100% instances assigned to the latest Ready Revision.
  /// Structure is documented below.
  final Input<List<WorkerPoolInstanceSplit>>? instanceSplits;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPool.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final Input<String>? launchStage;

  /// The location of the cloud run worker pool
  final Input<String> location;

  /// Name of the WorkerPool.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Scaling settings that apply to the worker pool.
  /// Structure is documented below.
  final Input<WorkerPoolScaling>? scaling;

  /// The template used to create revisions for this WorkerPool.
  /// Structure is documented below.
  final Input<WorkerPoolTemplate> template;

  WorkerPoolArgs2({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.customAudiences,
    this.deletionProtection,
    this.description,
    this.instanceSplits,
    this.labels,
    this.launchStage,
    required this.location,
    this.name,
    this.project,
    this.scaling,
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
              WorkerPoolBinaryAuthorization, Map<String, dynamic>>(
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
    final customAudiencesValue = customAudiences;
    if (customAudiencesValue != null) {
      map['customAudiences'] = customAudiencesValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final instanceSplitsValue = instanceSplits;
    if (instanceSplitsValue != null) {
      map['instanceSplits'] = Input.mapOptionalInputValue<
              List<WorkerPoolInstanceSplit>, List<Map<String, dynamic>>>(
          instanceSplitsValue,
          (value) =>
              Input.encodeList<WorkerPoolInstanceSplit, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
    final scalingValue = scaling;
    if (scalingValue != null) {
      map['scaling'] =
          Input.mapOptionalInputValue<WorkerPoolScaling, Map<String, dynamic>>(
              scalingValue, (value) => value.toMap());
    }
    map['template'] =
        Input.mapInputValue<WorkerPoolTemplate, Map<String, dynamic>>(
            template, (value) => value.toMap());
    return map;
  }

  factory WorkerPoolArgs2.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization: Input.asOptionalInput<WorkerPoolBinaryAuthorization>(
          map['binaryAuthorization']),
      client: Input.asOptionalInput<String>(map['client']),
      clientVersion: Input.asOptionalInput<String>(map['clientVersion']),
      customAudiences:
          Input.asOptionalInput<List<String>>(map['customAudiences']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      instanceSplits: Input.asOptionalInput<List<WorkerPoolInstanceSplit>>(
          map['instanceSplits']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage: Input.asOptionalInput<String>(map['launchStage']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      scaling: Input.asOptionalInput<WorkerPoolScaling>(map['scaling']),
      template: Input.asInput<WorkerPoolTemplate>(map['template']),
    );
  }
}
