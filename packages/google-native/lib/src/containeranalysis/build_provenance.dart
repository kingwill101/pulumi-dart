// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact.dart';
import 'command.dart';
import 'source.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenance {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final Map<String, String>? buildOptions;

  /// Version string of the builder at the time this build was executed.
  final String? builderVersion;

  /// Output of the build.
  final List<Artifact>? builtArtifacts;

  /// Commands requested by the build.
  final List<Command>? commands;

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
  final Source? sourceProvenance;

  /// Time at which execution of the build was started.
  final String? startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  final String? triggerId;

  /// Creates a new [BuildProvenance].
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
  BuildProvenance({
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
    return <String, dynamic>{
      'buildOptions': ?buildOptions,
      'builderVersion': ?builderVersion,
      'builtArtifacts': ?builtArtifacts == null
          ? null
          : pulumi.Input.encodeList<Artifact, Map<String, dynamic>>(
              builtArtifacts!,
              (value) => value.toMap(),
            ),
      'commands': ?commands == null
          ? null
          : pulumi.Input.encodeList<Command, Map<String, dynamic>>(
              commands!,
              (value) => value.toMap(),
            ),
      'createTime': ?createTime,
      'creator': ?creator,
      'endTime': ?endTime,
      'id': id,
      'logsUri': ?logsUri,
      'project': ?project,
      'sourceProvenance': ?sourceProvenance == null
          ? null
          : sourceProvenance!.toMap(),
      'startTime': ?startTime,
      'triggerId': ?triggerId,
    };
  }

  factory BuildProvenance.fromMap(Map<String, dynamic> map) {
    return BuildProvenance(
      buildOptions: map['buildOptions'] == null
          ? null
          : (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null
          ? null
          : map['builderVersion'] as String,
      builtArtifacts: map['builtArtifacts'] == null
          ? null
          : pulumi.Input.decodeList<Artifact>(
              map['builtArtifacts'],
              (value) =>
                  Artifact.fromMap((value as Map).cast<String, dynamic>()),
            ),
      commands: map['commands'] == null
          ? null
          : pulumi.Input.decodeList<Command>(
              map['commands'],
              (value) =>
                  Command.fromMap((value as Map).cast<String, dynamic>()),
            ),
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      creator: map['creator'] == null ? null : map['creator'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      id: map['id'] as String,
      logsUri: map['logsUri'] == null ? null : map['logsUri'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceProvenance: map['sourceProvenance'] == null
          ? null
          : Source.fromMap(
              (map['sourceProvenance'] as Map).cast<String, dynamic>(),
            ),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
    );
  }
}
