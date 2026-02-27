// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_binary_authorization/service_binary_authorization.dart';
import '../service_build_config/service_build_config.dart';
import '../service_multi_region_settings/service_multi_region_settings.dart';
import '../service_scaling/service_scaling.dart';
import '../service_template/service_template_cloudrunv2.dart';
import '../service_traffic/service_traffic_cloudrunv2.dart';

/// The set of arguments for Service.
class ServiceCloudrunv2Args {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Service.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  final pulumi.Input<ServiceBinaryAuthorization>? binaryAuthorization;

  /// Configuration for building a Cloud Run function.
  /// Structure is documented below.
  final pulumi.Input<ServiceBuildConfig>? buildConfig;

  /// Arbitrary identifier for the API client.
  final pulumi.Input<String>? client;

  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String>? clientVersion;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  final pulumi.Input<List<String>>? customAudiences;

  /// Disables public resolution of the default URI of this service.
  final pulumi.Input<bool>? defaultUriDisabled;
  final pulumi.Input<bool>? deletionProtection;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  final pulumi.Input<String>? description;

  /// Used to enable/disable IAP for the service.
  final pulumi.Input<bool>? iapEnabled;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  final pulumi.Input<String>? ingress;

  /// Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  final pulumi.Input<bool>? invokerIamDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String>? launchStage;

  /// The location of the cloud run service
  final pulumi.Input<String> location;

  /// Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// Structure is documented below.
  final pulumi.Input<ServiceMultiRegionSettings>? multiRegionSettings;

  /// Name of the Service.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Scaling settings that apply to the whole service
  /// Structure is documented below.
  final pulumi.Input<ServiceScaling>? scaling;

  /// The template used to create revisions for this Service.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateCloudrunv2> template;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTrafficCloudrunv2>>? traffics;

  ServiceCloudrunv2Args({
    this.annotations,
    this.binaryAuthorization,
    this.buildConfig,
    this.client,
    this.clientVersion,
    this.customAudiences,
    this.defaultUriDisabled,
    this.deletionProtection,
    this.description,
    this.iapEnabled,
    this.ingress,
    this.invokerIamDisabled,
    this.labels,
    this.launchStage,
    required this.location,
    this.multiRegionSettings,
    this.name,
    this.project,
    this.scaling,
    required this.template,
    this.traffics,
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
              ServiceBinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final buildConfigValue = buildConfig;
    if (buildConfigValue != null) {
      map['buildConfig'] = pulumi.Input.mapOptionalInputValue<
          ServiceBuildConfig,
          Map<String, dynamic>>(buildConfigValue, (value) => value.toMap());
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
    final defaultUriDisabledValue = defaultUriDisabled;
    if (defaultUriDisabledValue != null) {
      map['defaultUriDisabled'] = defaultUriDisabledValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final iapEnabledValue = iapEnabled;
    if (iapEnabledValue != null) {
      map['iapEnabled'] = iapEnabledValue;
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = ingressValue;
    }
    final invokerIamDisabledValue = invokerIamDisabled;
    if (invokerIamDisabledValue != null) {
      map['invokerIamDisabled'] = invokerIamDisabledValue;
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
    final multiRegionSettingsValue = multiRegionSettings;
    if (multiRegionSettingsValue != null) {
      map['multiRegionSettings'] = pulumi.Input.mapOptionalInputValue<
              ServiceMultiRegionSettings, Map<String, dynamic>>(
          multiRegionSettingsValue, (value) => value.toMap());
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
      map['scaling'] = pulumi.Input.mapOptionalInputValue<ServiceScaling,
          Map<String, dynamic>>(scalingValue, (value) => value.toMap());
    }
    map['template'] = pulumi.Input.mapInputValue<ServiceTemplateCloudrunv2,
        Map<String, dynamic>>(template, (value) => value.toMap());
    final trafficsValue = traffics;
    if (trafficsValue != null) {
      map['traffics'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceTrafficCloudrunv2>, List<Map<String, dynamic>>>(
          trafficsValue,
          (value) => pulumi.Input.encodeList<ServiceTrafficCloudrunv2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ServiceCloudrunv2Args.fromMap(Map<String, dynamic> map) {
    return ServiceCloudrunv2Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      binaryAuthorization:
          pulumi.Input.asOptionalInput<ServiceBinaryAuthorization>(
              map['binaryAuthorization']),
      buildConfig:
          pulumi.Input.asOptionalInput<ServiceBuildConfig>(map['buildConfig']),
      client: pulumi.Input.asOptionalInput<String>(map['client']),
      clientVersion: pulumi.Input.asOptionalInput<String>(map['clientVersion']),
      customAudiences:
          pulumi.Input.asOptionalInput<List<String>>(map['customAudiences']),
      defaultUriDisabled:
          pulumi.Input.asOptionalInput<bool>(map['defaultUriDisabled']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      iapEnabled: pulumi.Input.asOptionalInput<bool>(map['iapEnabled']),
      ingress: pulumi.Input.asOptionalInput<String>(map['ingress']),
      invokerIamDisabled:
          pulumi.Input.asOptionalInput<bool>(map['invokerIamDisabled']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      launchStage: pulumi.Input.asOptionalInput<String>(map['launchStage']),
      location: pulumi.Input.asInput<String>(map['location']),
      multiRegionSettings:
          pulumi.Input.asOptionalInput<ServiceMultiRegionSettings>(
              map['multiRegionSettings']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scaling: pulumi.Input.asOptionalInput<ServiceScaling>(map['scaling']),
      template:
          pulumi.Input.asInput<ServiceTemplateCloudrunv2>(map['template']),
      traffics: pulumi.Input.asOptionalInput<List<ServiceTrafficCloudrunv2>>(
          map['traffics']),
    );
  }
}
