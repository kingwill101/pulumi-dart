// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_binary_authorization/get_service_binary_authorization.dart';
import '../get_service_build_config/get_service_build_config.dart';
import '../get_service_condition/get_service_condition.dart';
import '../get_service_multi_region_setting/get_service_multi_region_setting.dart';
import '../get_service_scaling/get_service_scaling.dart';
import '../get_service_template/get_service_template2.dart';
import '../get_service_terminal_condition/get_service_terminal_condition.dart';
import '../get_service_traffic/get_service_traffic2.dart';
import '../get_service_traffic_status/get_service_traffic_status.dart';

/// Result data returned by getService.
class GetServiceResult2 {
  final Map<String, String> annotations;
  final List<GetServiceBinaryAuthorization> binaryAuthorizations;
  final List<GetServiceBuildConfig> buildConfigs;
  final String client;
  final String clientVersion;
  final List<GetServiceCondition> conditions;
  final String createTime;
  final String creator;
  final List<String> customAudiences;
  final bool defaultUriDisabled;
  final String deleteTime;
  final bool deletionProtection;
  final String description;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String etag;
  final String expireTime;
  final String generation;
  final bool iapEnabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ingress;
  final bool invokerIamDisabled;
  final Map<String, String> labels;
  final String lastModifier;
  final String latestCreatedRevision;
  final String latestReadyRevision;
  final String launchStage;
  final String? location;
  final List<GetServiceMultiRegionSetting> multiRegionSettings;
  final String name;
  final String observedGeneration;
  final String? project;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final List<GetServiceScaling> scalings;
  final List<GetServiceTemplate2> templates;
  final List<GetServiceTerminalCondition> terminalConditions;
  final List<GetServiceTrafficStatus> trafficStatuses;
  final List<GetServiceTraffic2> traffics;
  final String uid;
  final String updateTime;
  final String uri;
  final List<String> urls;

  GetServiceResult2({
    required this.annotations,
    required this.binaryAuthorizations,
    required this.buildConfigs,
    required this.client,
    required this.clientVersion,
    required this.conditions,
    required this.createTime,
    required this.creator,
    required this.customAudiences,
    required this.defaultUriDisabled,
    required this.deleteTime,
    required this.deletionProtection,
    required this.description,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.etag,
    required this.expireTime,
    required this.generation,
    required this.iapEnabled,
    required this.id,
    required this.ingress,
    required this.invokerIamDisabled,
    required this.labels,
    required this.lastModifier,
    required this.latestCreatedRevision,
    required this.latestReadyRevision,
    required this.launchStage,
    this.location,
    required this.multiRegionSettings,
    required this.name,
    required this.observedGeneration,
    this.project,
    required this.pulumiLabels,
    required this.reconciling,
    required this.scalings,
    required this.templates,
    required this.terminalConditions,
    required this.trafficStatuses,
    required this.traffics,
    required this.uid,
    required this.updateTime,
    required this.uri,
    required this.urls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['binaryAuthorizations'] =
        Input.encodeList<GetServiceBinaryAuthorization, Map<String, dynamic>>(
            binaryAuthorizations, (value) => value.toMap());
    map['buildConfigs'] =
        Input.encodeList<GetServiceBuildConfig, Map<String, dynamic>>(
            buildConfigs, (value) => value.toMap());
    map['client'] = client;
    map['clientVersion'] = clientVersion;
    map['conditions'] =
        Input.encodeList<GetServiceCondition, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['customAudiences'] = customAudiences;
    map['defaultUriDisabled'] = defaultUriDisabled;
    map['deleteTime'] = deleteTime;
    map['deletionProtection'] = deletionProtection;
    map['description'] = description;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['etag'] = etag;
    map['expireTime'] = expireTime;
    map['generation'] = generation;
    map['iapEnabled'] = iapEnabled;
    map['id'] = id;
    map['ingress'] = ingress;
    map['invokerIamDisabled'] = invokerIamDisabled;
    map['labels'] = labels;
    map['lastModifier'] = lastModifier;
    map['latestCreatedRevision'] = latestCreatedRevision;
    map['latestReadyRevision'] = latestReadyRevision;
    map['launchStage'] = launchStage;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['multiRegionSettings'] =
        Input.encodeList<GetServiceMultiRegionSetting, Map<String, dynamic>>(
            multiRegionSettings, (value) => value.toMap());
    map['name'] = name;
    map['observedGeneration'] = observedGeneration;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['reconciling'] = reconciling;
    map['scalings'] = Input.encodeList<GetServiceScaling, Map<String, dynamic>>(
        scalings, (value) => value.toMap());
    map['templates'] =
        Input.encodeList<GetServiceTemplate2, Map<String, dynamic>>(
            templates, (value) => value.toMap());
    map['terminalConditions'] =
        Input.encodeList<GetServiceTerminalCondition, Map<String, dynamic>>(
            terminalConditions, (value) => value.toMap());
    map['trafficStatuses'] =
        Input.encodeList<GetServiceTrafficStatus, Map<String, dynamic>>(
            trafficStatuses, (value) => value.toMap());
    map['traffics'] =
        Input.encodeList<GetServiceTraffic2, Map<String, dynamic>>(
            traffics, (value) => value.toMap());
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['uri'] = uri;
    map['urls'] = urls;
    return map;
  }

  factory GetServiceResult2.fromMap(Map<String, dynamic> map) {
    return GetServiceResult2(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorizations: Input.decodeList<GetServiceBinaryAuthorization>(
          map['binaryAuthorizations'],
          (value) => GetServiceBinaryAuthorization.fromMap(
              (value as Map).cast<String, dynamic>())),
      buildConfigs: Input.decodeList<GetServiceBuildConfig>(
          map['buildConfigs'],
          (value) => GetServiceBuildConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      client: map['client'] as String,
      clientVersion: map['clientVersion'] as String,
      conditions: Input.decodeList<GetServiceCondition>(
          map['conditions'],
          (value) => GetServiceCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      customAudiences: (map['customAudiences'] as List).cast<String>(),
      defaultUriDisabled: map['defaultUriDisabled'] as bool,
      deleteTime: map['deleteTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      generation: map['generation'] as String,
      iapEnabled: map['iapEnabled'] as bool,
      id: map['id'] as String,
      ingress: map['ingress'] as String,
      invokerIamDisabled: map['invokerIamDisabled'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifier: map['lastModifier'] as String,
      latestCreatedRevision: map['latestCreatedRevision'] as String,
      latestReadyRevision: map['latestReadyRevision'] as String,
      launchStage: map['launchStage'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      multiRegionSettings: Input.decodeList<GetServiceMultiRegionSetting>(
          map['multiRegionSettings'],
          (value) => GetServiceMultiRegionSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      observedGeneration: map['observedGeneration'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      scalings: Input.decodeList<GetServiceScaling>(
          map['scalings'],
          (value) => GetServiceScaling.fromMap(
              (value as Map).cast<String, dynamic>())),
      templates: Input.decodeList<GetServiceTemplate2>(
          map['templates'],
          (value) => GetServiceTemplate2.fromMap(
              (value as Map).cast<String, dynamic>())),
      terminalConditions: Input.decodeList<GetServiceTerminalCondition>(
          map['terminalConditions'],
          (value) => GetServiceTerminalCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      trafficStatuses: Input.decodeList<GetServiceTrafficStatus>(
          map['trafficStatuses'],
          (value) => GetServiceTrafficStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      traffics: Input.decodeList<GetServiceTraffic2>(
          map['traffics'],
          (value) => GetServiceTraffic2.fromMap(
              (value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      uri: map['uri'] as String,
      urls: (map['urls'] as List).cast<String>(),
    );
  }
}
