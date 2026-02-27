// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_binary_authorization/get_job_binary_authorization.dart';
import '../get_job_condition/get_job_condition.dart';
import '../get_job_latest_created_execution/get_job_latest_created_execution.dart';
import '../get_job_template/get_job_template.dart';
import '../get_job_terminal_condition/get_job_terminal_condition.dart';

/// Result data returned by getJob.
class GetJobResult {
  final Map<String, String> annotations;
  final List<GetJobBinaryAuthorization> binaryAuthorizations;
  final String client;
  final String clientVersion;
  final List<GetJobCondition> conditions;
  final String createTime;
  final String creator;
  final String deleteTime;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String etag;
  final int executionCount;
  final String expireTime;
  final String generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String lastModifier;
  final List<GetJobLatestCreatedExecution> latestCreatedExecutions;
  final String launchStage;
  final String? location;
  final String name;
  final String observedGeneration;
  final String? project;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final String runExecutionToken;
  final String startExecutionToken;
  final List<GetJobTemplate> templates;
  final List<GetJobTerminalCondition> terminalConditions;
  final String uid;
  final String updateTime;

  GetJobResult({
    required this.annotations,
    required this.binaryAuthorizations,
    required this.client,
    required this.clientVersion,
    required this.conditions,
    required this.createTime,
    required this.creator,
    required this.deleteTime,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.etag,
    required this.executionCount,
    required this.expireTime,
    required this.generation,
    required this.id,
    required this.labels,
    required this.lastModifier,
    required this.latestCreatedExecutions,
    required this.launchStage,
    this.location,
    required this.name,
    required this.observedGeneration,
    this.project,
    required this.pulumiLabels,
    required this.reconciling,
    required this.runExecutionToken,
    required this.startExecutionToken,
    required this.templates,
    required this.terminalConditions,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['binaryAuthorizations'] = pulumi.Input.encodeList<
        GetJobBinaryAuthorization,
        Map<String, dynamic>>(binaryAuthorizations, (value) => value.toMap());
    map['client'] = client;
    map['clientVersion'] = clientVersion;
    map['conditions'] =
        pulumi.Input.encodeList<GetJobCondition, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['deleteTime'] = deleteTime;
    map['deletionProtection'] = deletionProtection;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['etag'] = etag;
    map['executionCount'] = executionCount;
    map['expireTime'] = expireTime;
    map['generation'] = generation;
    map['id'] = id;
    map['labels'] = labels;
    map['lastModifier'] = lastModifier;
    map['latestCreatedExecutions'] = pulumi.Input.encodeList<
            GetJobLatestCreatedExecution, Map<String, dynamic>>(
        latestCreatedExecutions, (value) => value.toMap());
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
    map['runExecutionToken'] = runExecutionToken;
    map['startExecutionToken'] = startExecutionToken;
    map['templates'] =
        pulumi.Input.encodeList<GetJobTemplate, Map<String, dynamic>>(
            templates, (value) => value.toMap());
    map['terminalConditions'] =
        pulumi.Input.encodeList<GetJobTerminalCondition, Map<String, dynamic>>(
            terminalConditions, (value) => value.toMap());
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      binaryAuthorizations: pulumi.Input.decodeList<GetJobBinaryAuthorization>(
          map['binaryAuthorizations'],
          (value) => GetJobBinaryAuthorization.fromMap(
              (value as Map).cast<String, dynamic>())),
      client: map['client'] as String,
      clientVersion: map['clientVersion'] as String,
      conditions: pulumi.Input.decodeList<GetJobCondition>(
          map['conditions'],
          (value) =>
              GetJobCondition.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      deleteTime: map['deleteTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      executionCount: map['executionCount'] as int,
      expireTime: map['expireTime'] as String,
      generation: map['generation'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifier: map['lastModifier'] as String,
      latestCreatedExecutions:
          pulumi.Input.decodeList<GetJobLatestCreatedExecution>(
              map['latestCreatedExecutions'],
              (value) => GetJobLatestCreatedExecution.fromMap(
                  (value as Map).cast<String, dynamic>())),
      launchStage: map['launchStage'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      observedGeneration: map['observedGeneration'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      runExecutionToken: map['runExecutionToken'] as String,
      startExecutionToken: map['startExecutionToken'] as String,
      templates: pulumi.Input.decodeList<GetJobTemplate>(
          map['templates'],
          (value) =>
              GetJobTemplate.fromMap((value as Map).cast<String, dynamic>())),
      terminalConditions: pulumi.Input.decodeList<GetJobTerminalCondition>(
          map['terminalConditions'],
          (value) => GetJobTerminalCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
