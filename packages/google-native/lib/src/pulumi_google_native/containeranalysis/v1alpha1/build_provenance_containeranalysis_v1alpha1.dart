// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_containeranalysis_v1alpha1.dart';
import 'command_containeranalysis_v1alpha1.dart';
import 'source_containeranalysis_v1alpha1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceContaineranalysisV1alpha1 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final Map<String, String>? buildOptions;

  /// Version string of the builder at the time this build was executed.
  final String? builderVersion;

  /// Output of the build.
  final List<ArtifactContaineranalysisV1alpha1>? builtArtifacts;

  /// Commands requested by the build.
  final List<CommandContaineranalysisV1alpha1>? commands;

  /// Time at which the build was created.
  final String? createTime;

  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final String? creator;

  /// Time at which execution of the build was finished.
  final String? finishTime;

  /// Unique identifier of the build.
  final String? id;

  /// Google Cloud Storage bucket where logs were written.
  final String? logsBucket;

  /// ID of the project.
  final String? project;

  /// Details of the Source input to the build.
  final SourceContaineranalysisV1alpha1? sourceProvenance;

  /// Time at which execution of the build was started.
  final String? startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  final String? triggerId;

  BuildProvenanceContaineranalysisV1alpha1({
    this.buildOptions,
    this.builderVersion,
    this.builtArtifacts,
    this.commands,
    this.createTime,
    this.creator,
    this.finishTime,
    this.id,
    this.logsBucket,
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
          ArtifactContaineranalysisV1alpha1,
          Map<String, dynamic>>(builtArtifactsValue, (value) => value.toMap());
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = pulumi.Input.encodeList<
          CommandContaineranalysisV1alpha1,
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
    final finishTimeValue = finishTime;
    if (finishTimeValue != null) {
      map['finishTime'] = finishTimeValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final logsBucketValue = logsBucket;
    if (logsBucketValue != null) {
      map['logsBucket'] = logsBucketValue;
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

  factory BuildProvenanceContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BuildProvenanceContaineranalysisV1alpha1(
      buildOptions: map['buildOptions'] == null
          ? null
          : (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null
          ? null
          : map['builderVersion'] as String,
      builtArtifacts: map['builtArtifacts'] == null
          ? null
          : pulumi.Input.decodeList<ArtifactContaineranalysisV1alpha1>(
              map['builtArtifacts'],
              (value) => ArtifactContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      commands: map['commands'] == null
          ? null
          : pulumi.Input.decodeList<CommandContaineranalysisV1alpha1>(
              map['commands'],
              (value) => CommandContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      creator: map['creator'] == null ? null : map['creator'] as String,
      finishTime:
          map['finishTime'] == null ? null : map['finishTime'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      logsBucket:
          map['logsBucket'] == null ? null : map['logsBucket'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceProvenance: map['sourceProvenance'] == null
          ? null
          : SourceContaineranalysisV1alpha1.fromMap(
              (map['sourceProvenance'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
    );
  }
}
