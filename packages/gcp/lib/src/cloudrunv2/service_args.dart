// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_binary_authorization.dart';
import 'service_build_config.dart';
import 'service_multi_region_settings.dart';
import 'service_scaling.dart';
import 'service_template.dart';
import 'service_traffic.dart';

/// {@template pulumi_cloudrunv2_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_service_service_args_doc}
class ServiceArgs {
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
  final pulumi.Input<ServiceTemplate> template;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTraffic>>? traffics;

  /// Creates a new [ServiceArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [binaryAuthorization] Settings for the Binary Authorization feature.
  /// [buildConfig] Configuration for building a Cloud Run function.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [customAudiences] One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// [defaultUriDisabled] Disables public resolution of the default URI of this service.
  /// [deletionProtection] Optional.
  /// [description] User-provided description of the Service. This field currently has a 512-character limit.
  /// [iapEnabled] Used to enable/disable IAP for the service.
  /// [ingress] Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [invokerIamDisabled] Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// [location] The location of the cloud run service
  /// [multiRegionSettings] Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// [name] Name of the Service.
  /// [project] The ID of the project in which the resource belongs.
  /// [scaling] Scaling settings that apply to the whole service
  /// [template] The template used to create revisions for this Service.
  /// [traffics] Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  ServiceArgs({
    Map<String, String>? annotations,
    ServiceBinaryAuthorization? binaryAuthorization,
    ServiceBuildConfig? buildConfig,
    String? client,
    String? clientVersion,
    List<String>? customAudiences,
    bool? defaultUriDisabled,
    bool? deletionProtection,
    String? description,
    bool? iapEnabled,
    String? ingress,
    bool? invokerIamDisabled,
    Map<String, String>? labels,
    String? launchStage,
    required String location,
    ServiceMultiRegionSettings? multiRegionSettings,
    String? name,
    String? project,
    ServiceScaling? scaling,
    required ServiceTemplate template,
    List<ServiceTraffic>? traffics,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        binaryAuthorization =
            pulumi.Input.asOptionalInput<ServiceBinaryAuthorization>(
                binaryAuthorization),
        buildConfig =
            pulumi.Input.asOptionalInput<ServiceBuildConfig>(buildConfig),
        client = pulumi.Input.asOptionalInput<String>(client),
        clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
        customAudiences =
            pulumi.Input.asOptionalInput<List<String>>(customAudiences),
        defaultUriDisabled =
            pulumi.Input.asOptionalInput<bool>(defaultUriDisabled),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        description = pulumi.Input.asOptionalInput<String>(description),
        iapEnabled = pulumi.Input.asOptionalInput<bool>(iapEnabled),
        ingress = pulumi.Input.asOptionalInput<String>(ingress),
        invokerIamDisabled =
            pulumi.Input.asOptionalInput<bool>(invokerIamDisabled),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        launchStage = pulumi.Input.asOptionalInput<String>(launchStage),
        location = pulumi.Input.asInput<String>(location),
        multiRegionSettings =
            pulumi.Input.asOptionalInput<ServiceMultiRegionSettings>(
                multiRegionSettings),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        scaling = pulumi.Input.asOptionalInput<ServiceScaling>(scaling),
        template = pulumi.Input.asInput<ServiceTemplate>(template),
        traffics = pulumi.Input.asOptionalInput<List<ServiceTraffic>>(traffics);

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
    map['template'] =
        pulumi.Input.mapInputValue<ServiceTemplate, Map<String, dynamic>>(
            template, (value) => value.toMap());
    final trafficsValue = traffics;
    if (trafficsValue != null) {
      map['traffics'] = pulumi.Input.mapOptionalInputValue<List<ServiceTraffic>,
              List<Map<String, dynamic>>>(
          trafficsValue,
          (value) =>
              pulumi.Input.encodeList<ServiceTraffic, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorization: map['binaryAuthorization'] == null
          ? null
          : ServiceBinaryAuthorization.fromMap(
              (map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      buildConfig: map['buildConfig'] == null
          ? null
          : ServiceBuildConfig.fromMap(
              (map['buildConfig'] as Map).cast<String, dynamic>()),
      client: map['client'] == null ? null : map['client'] as String,
      clientVersion:
          map['clientVersion'] == null ? null : map['clientVersion'] as String,
      customAudiences: map['customAudiences'] == null
          ? null
          : (map['customAudiences'] as List).cast<String>(),
      defaultUriDisabled: map['defaultUriDisabled'] == null
          ? null
          : map['defaultUriDisabled'] as bool,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      iapEnabled: map['iapEnabled'] == null ? null : map['iapEnabled'] as bool,
      ingress: map['ingress'] == null ? null : map['ingress'] as String,
      invokerIamDisabled: map['invokerIamDisabled'] == null
          ? null
          : map['invokerIamDisabled'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      launchStage:
          map['launchStage'] == null ? null : map['launchStage'] as String,
      location: map['location'] as String,
      multiRegionSettings: map['multiRegionSettings'] == null
          ? null
          : ServiceMultiRegionSettings.fromMap(
              (map['multiRegionSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scaling: map['scaling'] == null
          ? null
          : ServiceScaling.fromMap(
              (map['scaling'] as Map).cast<String, dynamic>()),
      template: ServiceTemplate.fromMap(
          (map['template'] as Map).cast<String, dynamic>()),
      traffics: map['traffics'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTraffic>(
              map['traffics'],
              (value) => ServiceTraffic.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
