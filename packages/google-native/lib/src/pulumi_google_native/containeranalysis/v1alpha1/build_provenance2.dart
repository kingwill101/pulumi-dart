// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'artifact2.dart';
import 'command2.dart';
import 'source7.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenance2 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final Map<String, String>? buildOptions;

  /// Version string of the builder at the time this build was executed.
  final String? builderVersion;

  /// Output of the build.
  final List<Artifact2>? builtArtifacts;

  /// Commands requested by the build.
  final List<Command2>? commands;

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
  final Source7? sourceProvenance;

  /// Time at which execution of the build was started.
  final String? startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  final String? triggerId;

  BuildProvenance2({
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
      map['builtArtifacts'] = Input.encodeList<Artifact2, Map<String, dynamic>>(
          builtArtifactsValue, (value) => value.toMap());
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = Input.encodeList<Command2, Map<String, dynamic>>(
          commandsValue, (value) => value.toMap());
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

  factory BuildProvenance2.fromMap(Map<String, dynamic> map) {
    return BuildProvenance2(
      buildOptions: map['buildOptions'] == null
          ? null
          : (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null
          ? null
          : map['builderVersion'] as String,
      builtArtifacts: map['builtArtifacts'] == null
          ? null
          : Input.decodeList<Artifact2>(
              map['builtArtifacts'],
              (value) =>
                  Artifact2.fromMap((value as Map).cast<String, dynamic>())),
      commands: map['commands'] == null
          ? null
          : Input.decodeList<Command2>(
              map['commands'],
              (value) =>
                  Command2.fromMap((value as Map).cast<String, dynamic>())),
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
          : Source7.fromMap(
              (map['sourceProvenance'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
    );
  }
}
