// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_worker_pool_binary_authorization/get_worker_pool_binary_authorization.dart';
import '../get_worker_pool_condition/get_worker_pool_condition.dart';
import '../get_worker_pool_instance_split/get_worker_pool_instance_split.dart';
import '../get_worker_pool_instance_split_status/get_worker_pool_instance_split_status.dart';
import '../get_worker_pool_scaling/get_worker_pool_scaling.dart';
import '../get_worker_pool_template/get_worker_pool_template.dart';
import '../get_worker_pool_terminal_condition/get_worker_pool_terminal_condition.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult {
  final Map<String, String> annotations;
  final List<GetWorkerPoolBinaryAuthorization> binaryAuthorizations;
  final String client;
  final String clientVersion;
  final List<GetWorkerPoolCondition> conditions;
  final String createTime;
  final String creator;
  final List<String> customAudiences;
  final String deleteTime;
  final bool deletionProtection;
  final String description;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String etag;
  final String expireTime;
  final String generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetWorkerPoolInstanceSplitStatus> instanceSplitStatuses;
  final List<GetWorkerPoolInstanceSplit> instanceSplits;
  final Map<String, String> labels;
  final String lastModifier;
  final String latestCreatedRevision;
  final String latestReadyRevision;
  final String launchStage;
  final String? location;
  final String name;
  final String observedGeneration;
  final String? project;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final List<GetWorkerPoolScaling> scalings;
  final List<GetWorkerPoolTemplate> templates;
  final List<GetWorkerPoolTerminalCondition> terminalConditions;
  final String uid;
  final String updateTime;

  GetWorkerPoolResult({
    required this.annotations,
    required this.binaryAuthorizations,
    required this.client,
    required this.clientVersion,
    required this.conditions,
    required this.createTime,
    required this.creator,
    required this.customAudiences,
    required this.deleteTime,
    required this.deletionProtection,
    required this.description,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.etag,
    required this.expireTime,
    required this.generation,
    required this.id,
    required this.instanceSplitStatuses,
    required this.instanceSplits,
    required this.labels,
    required this.lastModifier,
    required this.latestCreatedRevision,
    required this.latestReadyRevision,
    required this.launchStage,
    this.location,
    required this.name,
    required this.observedGeneration,
    this.project,
    required this.pulumiLabels,
    required this.reconciling,
    required this.scalings,
    required this.templates,
    required this.terminalConditions,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['binaryAuthorizations'] = pulumi.Input.encodeList<
        GetWorkerPoolBinaryAuthorization,
        Map<String, dynamic>>(binaryAuthorizations, (value) => value.toMap());
    map['client'] = client;
    map['clientVersion'] = clientVersion;
    map['conditions'] =
        pulumi.Input.encodeList<GetWorkerPoolCondition, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['customAudiences'] = customAudiences;
    map['deleteTime'] = deleteTime;
    map['deletionProtection'] = deletionProtection;
    map['description'] = description;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['etag'] = etag;
    map['expireTime'] = expireTime;
    map['generation'] = generation;
    map['id'] = id;
    map['instanceSplitStatuses'] = pulumi.Input.encodeList<
        GetWorkerPoolInstanceSplitStatus,
        Map<String, dynamic>>(instanceSplitStatuses, (value) => value.toMap());
    map['instanceSplits'] = pulumi.Input.encodeList<GetWorkerPoolInstanceSplit,
        Map<String, dynamic>>(instanceSplits, (value) => value.toMap());
    map['labels'] = labels;
    map['lastModifier'] = lastModifier;
    map['latestCreatedRevision'] = latestCreatedRevision;
    map['latestReadyRevision'] = latestReadyRevision;
    map['launchStage'] = launchStage;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    map['observedGeneration'] = observedGeneration;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['reconciling'] = reconciling;
    map['scalings'] =
        pulumi.Input.encodeList<GetWorkerPoolScaling, Map<String, dynamic>>(
            scalings, (value) => value.toMap());
    map['templates'] =
        pulumi.Input.encodeList<GetWorkerPoolTemplate, Map<String, dynamic>>(
            templates, (value) => value.toMap());
    map['terminalConditions'] = pulumi.Input.encodeList<
        GetWorkerPoolTerminalCondition,
        Map<String, dynamic>>(terminalConditions, (value) => value.toMap());
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetWorkerPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorizations:
          pulumi.Input.decodeList<GetWorkerPoolBinaryAuthorization>(
              map['binaryAuthorizations'],
              (value) => GetWorkerPoolBinaryAuthorization.fromMap(
                  (value as Map).cast<String, dynamic>())),
      client: map['client'] as String,
      clientVersion: map['clientVersion'] as String,
      conditions: pulumi.Input.decodeList<GetWorkerPoolCondition>(
          map['conditions'],
          (value) => GetWorkerPoolCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      customAudiences: (map['customAudiences'] as List).cast<String>(),
      deleteTime: map['deleteTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      generation: map['generation'] as String,
      id: map['id'] as String,
      instanceSplitStatuses:
          pulumi.Input.decodeList<GetWorkerPoolInstanceSplitStatus>(
              map['instanceSplitStatuses'],
              (value) => GetWorkerPoolInstanceSplitStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceSplits: pulumi.Input.decodeList<GetWorkerPoolInstanceSplit>(
          map['instanceSplits'],
          (value) => GetWorkerPoolInstanceSplit.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifier: map['lastModifier'] as String,
      latestCreatedRevision: map['latestCreatedRevision'] as String,
      latestReadyRevision: map['latestReadyRevision'] as String,
      launchStage: map['launchStage'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      observedGeneration: map['observedGeneration'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      scalings: pulumi.Input.decodeList<GetWorkerPoolScaling>(
          map['scalings'],
          (value) => GetWorkerPoolScaling.fromMap(
              (value as Map).cast<String, dynamic>())),
      templates: pulumi.Input.decodeList<GetWorkerPoolTemplate>(
          map['templates'],
          (value) => GetWorkerPoolTemplate.fromMap(
              (value as Map).cast<String, dynamic>())),
      terminalConditions:
          pulumi.Input.decodeList<GetWorkerPoolTerminalCondition>(
              map['terminalConditions'],
              (value) => GetWorkerPoolTerminalCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
