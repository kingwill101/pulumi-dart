// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_containeranalysis_v1beta1.dart';
import 'command_containeranalysis_v1beta1.dart';
import 'source_containeranalysis_v1beta1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceContaineranalysisV1beta1 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final Map<String, String>? buildOptions;

  /// Version string of the builder at the time this build was executed.
  final String? builderVersion;

  /// Output of the build.
  final List<ArtifactContaineranalysisV1beta1>? builtArtifacts;

  /// Commands requested by the build.
  final List<CommandContaineranalysisV1beta1>? commands;

  /// Time at which the build was created.
  final String? createTime;

  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final String? creator;

  /// Time at which execution of the build was finished.
  final String? endTime;

  /// Unique identifier of the build.
  final String id;

  /// URI where any logs for this provenance were written.
  final String? logsUri;

  /// ID of the project.
  final String? project;

  /// Details of the Source input to the build.
  final SourceContaineranalysisV1beta1? sourceProvenance;

  /// Time at which execution of the build was started.
  final String? startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  final String? triggerId;

  /// Creates a new [BuildProvenanceContaineranalysisV1beta1].
  /// [buildOptions] Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  /// [builderVersion] Version string of the builder at the time this build was executed.
  /// [builtArtifacts] Output of the build.
  /// [commands] Commands requested by the build.
  /// [createTime] Time at which the build was created.
  /// [creator] E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  /// [endTime] Time at which execution of the build was finished.
  /// [id] Unique identifier of the build.
  /// [logsUri] URI where any logs for this provenance were written.
  /// [project] ID of the project.
  /// [sourceProvenance] Details of the Source input to the build.
  /// [startTime] Time at which execution of the build was started.
  /// [triggerId] Trigger identifier if the build was triggered automatically; empty if not.
  BuildProvenanceContaineranalysisV1beta1({
    this.buildOptions,
    this.builderVersion,
    this.builtArtifacts,
    this.commands,
    this.createTime,
    this.creator,
    this.endTime,
    required this.id,
    this.logsUri,
    this.project,
    this.sourceProvenance,
    this.startTime,
    this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildOptionsValue = buildOptions;
    if (buildOptionsValue != null) {
      map['buildOptions'] = buildOptionsValue;
    }
    final builderVersionValue = builderVersion;
    if (builderVersionValue != null) {
      map['builderVersion'] = builderVersionValue;
    }
    final builtArtifactsValue = builtArtifacts;
    if (builtArtifactsValue != null) {
      map['builtArtifacts'] = pulumi.Input.encodeList<
          ArtifactContaineranalysisV1beta1,
          Map<String, dynamic>>(builtArtifactsValue, (value) => value.toMap());
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = pulumi.Input.encodeList<CommandContaineranalysisV1beta1,
          Map<String, dynamic>>(commandsValue, (value) => value.toMap());
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final creatorValue = creator;
    if (creatorValue != null) {
      map['creator'] = creatorValue;
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['id'] = id;
    final logsUriValue = logsUri;
    if (logsUriValue != null) {
      map['logsUri'] = logsUriValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sourceProvenanceValue = sourceProvenance;
    if (sourceProvenanceValue != null) {
      map['sourceProvenance'] = sourceProvenanceValue.toMap();
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final triggerIdValue = triggerId;
    if (triggerIdValue != null) {
      map['triggerId'] = triggerIdValue;
    }
    return map;
  }

  factory BuildProvenanceContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BuildProvenanceContaineranalysisV1beta1(
      buildOptions: map['buildOptions'] == null
          ? null
          : (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null
          ? null
          : map['builderVersion'] as String,
      builtArtifacts: map['builtArtifacts'] == null
          ? null
          : pulumi.Input.decodeList<ArtifactContaineranalysisV1beta1>(
              map['builtArtifacts'],
              (value) => ArtifactContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      commands: map['commands'] == null
          ? null
          : pulumi.Input.decodeList<CommandContaineranalysisV1beta1>(
              map['commands'],
              (value) => CommandContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      creator: map['creator'] == null ? null : map['creator'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      id: map['id'] as String,
      logsUri: map['logsUri'] == null ? null : map['logsUri'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceProvenance: map['sourceProvenance'] == null
          ? null
          : SourceContaineranalysisV1beta1.fromMap(
              (map['sourceProvenance'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
    );
  }
}
