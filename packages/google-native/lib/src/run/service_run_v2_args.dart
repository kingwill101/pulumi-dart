// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization.dart';
import 'google_cloud_run_v2_revision_template.dart';
import 'google_cloud_run_v2_service_scaling.dart';
import 'google_cloud_run_v2_traffic_target.dart';
import 'service_ingress.dart';
import 'service_launch_stage.dart';

/// {@template pulumi_run_v2_service_run_v2_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_run_v2_service_run_v2_args_doc}
class ServiceRunV2Args {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  final pulumi.Input<GoogleCloudRunV2BinaryAuthorization>? binaryAuthorization;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final pulumi.Input<List<String>>? customAudiences;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  final pulumi.Input<ServiceIngress>? ingress;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  final pulumi.Input<ServiceLaunchStage>? launchStage;
  final pulumi.Input<String>? location;

  /// The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Specifies service-level scaling settings
  final pulumi.Input<GoogleCloudRunV2ServiceScaling>? scaling;

  /// Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.
  final pulumi.Input<String> serviceId;

  /// The template used to create revisions for this Service.
  final pulumi.Input<GoogleCloudRunV2RevisionTemplate> template;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  final pulumi.Input<List<GoogleCloudRunV2TrafficTarget>>? traffic;

  /// Creates a new [ServiceRunV2Args].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources. All system annotations in v1 now have a corresponding field in v2 Service. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [customAudiences] One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests. For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  /// [description] User-provided description of the Service. This field currently has a 512-character limit.
  /// [ingress] Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Service.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// [location] Optional.
  /// [name] The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service_id. Format: projects/{project}/locations/{location}/services/{service_id}
  /// [project] Optional.
  /// [scaling] Optional. Specifies service-level scaling settings
  /// [serviceId] Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}/services/{service_id}.
  /// [template] The template used to create revisions for this Service.
  /// [traffic] Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest `Ready` Revision.
  ServiceRunV2Args({
    Map<String, String>? annotations,
    GoogleCloudRunV2BinaryAuthorization? binaryAuthorization,
    String? client,
    String? clientVersion,
    List<String>? customAudiences,
    String? description,
    ServiceIngress? ingress,
    Map<String, String>? labels,
    ServiceLaunchStage? launchStage,
    String? location,
    String? name,
    String? project,
    GoogleCloudRunV2ServiceScaling? scaling,
    required String serviceId,
    required GoogleCloudRunV2RevisionTemplate template,
    List<GoogleCloudRunV2TrafficTarget>? traffic,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        binaryAuthorization =
            pulumi.Input.asOptionalInput<GoogleCloudRunV2BinaryAuthorization>(
                binaryAuthorization),
        client = pulumi.Input.asOptionalInput<String>(client),
        clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
        customAudiences =
            pulumi.Input.asOptionalInput<List<String>>(customAudiences),
        description = pulumi.Input.asOptionalInput<String>(description),
        ingress = pulumi.Input.asOptionalInput<ServiceIngress>(ingress),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        launchStage =
            pulumi.Input.asOptionalInput<ServiceLaunchStage>(launchStage),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        scaling = pulumi.Input.asOptionalInput<GoogleCloudRunV2ServiceScaling>(
            scaling),
        serviceId = pulumi.Input.asInput<String>(serviceId),
        template =
            pulumi.Input.asInput<GoogleCloudRunV2RevisionTemplate>(template),
        traffic =
            pulumi.Input.asOptionalInput<List<GoogleCloudRunV2TrafficTarget>>(
                traffic);

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
      map['ingress'] =
          pulumi.Input.mapOptionalInputValue<ServiceIngress, String>(
              ingressValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] =
          pulumi.Input.mapOptionalInputValue<ServiceLaunchStage, String>(
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
      map['scaling'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRunV2ServiceScaling,
          Map<String, dynamic>>(scalingValue, (value) => value.toMap());
    }
    map['serviceId'] = serviceId;
    map['template'] = pulumi.Input.mapInputValue<
        GoogleCloudRunV2RevisionTemplate,
        Map<String, dynamic>>(template, (value) => value.toMap());
    final trafficValue = traffic;
    if (trafficValue != null) {
      map['traffic'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudRunV2TrafficTarget>, List<Map<String, dynamic>>>(
          trafficValue,
          (value) => pulumi.Input.encodeList<GoogleCloudRunV2TrafficTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ServiceRunV2Args.fromMap(Map<String, dynamic> map) {
    return ServiceRunV2Args(
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
      customAudiences: map['customAudiences'] == null
          ? null
          : (map['customAudiences'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      ingress: map['ingress'] == null
          ? null
          : ServiceIngress.fromValue(map['ingress'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      launchStage: map['launchStage'] == null
          ? null
          : ServiceLaunchStage.fromValue(map['launchStage'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scaling: map['scaling'] == null
          ? null
          : GoogleCloudRunV2ServiceScaling.fromMap(
              (map['scaling'] as Map).cast<String, dynamic>()),
      serviceId: map['serviceId'] as String,
      template: GoogleCloudRunV2RevisionTemplate.fromMap(
          (map['template'] as Map).cast<String, dynamic>()),
      traffic: map['traffic'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRunV2TrafficTarget>(
              map['traffic'],
              (value) => GoogleCloudRunV2TrafficTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
