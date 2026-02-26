// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_revision_template.dart';
import 'google_cloud_run_v2_service_scaling.dart';
import 'google_cloud_run_v2_traffic_target.dart';
import 'service_ingress.dart';
import 'service_launch_stage.dart';

/// The set of arguments for Service.
class ServiceArgs6 {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  final Input<GoogleCloudRunV2BinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final Input<String>? clientVersion;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final Input<List<String>>? customAudiences;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  final Input<String>? description;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  final Input<ServiceIngress>? ingress;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  final Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final Input<ServiceLaunchStage>? launchStage;
  final Input<String>? location;

  /// The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. Specifies service-level scaling settings
  final Input<GoogleCloudRunV2ServiceScaling>? scaling;

  /// Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.
  final Input<String> serviceId;

  /// The template used to create revisions for this Service.
  final Input<GoogleCloudRunV2RevisionTemplate> template;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  final Input<List<GoogleCloudRunV2TrafficTarget>>? traffic;

  ServiceArgs6({
    this.annotations,
    this.binaryAuthorization,
    this.client,
    this.clientVersion,
    this.customAudiences,
    this.description,
    this.ingress,
    this.labels,
    this.launchStage,
    this.location,
    this.name,
    this.project,
    this.scaling,
    required this.serviceId,
    required this.template,
    this.traffic,
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
    final customAudiencesValue = customAudiences;
    if (customAudiencesValue != null) {
      map['customAudiences'] = customAudiencesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = Input.mapOptionalInputValue<ServiceIngress, String>(
          ingressValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] =
          Input.mapOptionalInputValue<ServiceLaunchStage, String>(
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
    final scalingValue = scaling;
    if (scalingValue != null) {
      map['scaling'] = Input.mapOptionalInputValue<
          GoogleCloudRunV2ServiceScaling,
          Map<String, dynamic>>(scalingValue, (value) => value.toMap());
    }
    map['serviceId'] = serviceId;
    map['template'] = Input.mapInputValue<GoogleCloudRunV2RevisionTemplate,
        Map<String, dynamic>>(template, (value) => value.toMap());
    final trafficValue = traffic;
    if (trafficValue != null) {
      map['traffic'] = Input.mapOptionalInputValue<
              List<GoogleCloudRunV2TrafficTarget>, List<Map<String, dynamic>>>(
          trafficValue,
          (value) => Input.encodeList<GoogleCloudRunV2TrafficTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ServiceArgs6.fromMap(Map<String, dynamic> map) {
    return ServiceArgs6(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization:
          Input.asOptionalInput<GoogleCloudRunV2BinaryAuthorization>(
              map['binaryAuthorization']),
      client: Input.asOptionalInput<String>(map['client']),
      clientVersion: Input.asOptionalInput<String>(map['clientVersion']),
      customAudiences:
          Input.asOptionalInput<List<String>>(map['customAudiences']),
      description: Input.asOptionalInput<String>(map['description']),
      ingress: Input.asOptionalInput<ServiceIngress>(map['ingress']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage:
          Input.asOptionalInput<ServiceLaunchStage>(map['launchStage']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      scaling:
          Input.asOptionalInput<GoogleCloudRunV2ServiceScaling>(map['scaling']),
      serviceId: Input.asInput<String>(map['serviceId']),
      template:
          Input.asInput<GoogleCloudRunV2RevisionTemplate>(map['template']),
      traffic: Input.asOptionalInput<List<GoogleCloudRunV2TrafficTarget>>(
          map['traffic']),
    );
  }
}
