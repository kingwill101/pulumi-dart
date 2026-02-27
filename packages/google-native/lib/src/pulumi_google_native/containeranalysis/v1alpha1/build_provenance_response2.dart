// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'artifact_response2.dart';
import 'command_response2.dart';
import 'source_response7.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceResponse2 {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final Map<String, String> buildOptions;

  /// Version string of the builder at the time this build was executed.
  final String builderVersion;

  /// Output of the build.
  final List<ArtifactResponse2> builtArtifacts;

  /// Commands requested by the build.
  final List<CommandResponse2> commands;

  /// Time at which the build was created.
  final String createTime;

  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final String creator;

  /// Time at which execution of the build was finished.
  final String finishTime;

  /// Google Cloud Storage bucket where logs were written.
  final String logsBucket;

  /// ID of the project.
  final String project;

  /// Details of the Source input to the build.
  final SourceResponse7 sourceProvenance;

  /// Time at which execution of the build was started.
  final String startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  final String triggerId;

  BuildProvenanceResponse2({
    required this.buildOptions,
    required this.builderVersion,
    required this.builtArtifacts,
    required this.commands,
    required this.createTime,
    required this.creator,
    required this.finishTime,
    required this.logsBucket,
    required this.project,
    required this.sourceProvenance,
    required this.startTime,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildOptions'] = buildOptions;
    map['builderVersion'] = builderVersion;
    map['builtArtifacts'] =
        Input.encodeList<ArtifactResponse2, Map<String, dynamic>>(
            builtArtifacts, (value) => value.toMap());
    map['commands'] = Input.encodeList<CommandResponse2, Map<String, dynamic>>(
        commands, (value) => value.toMap());
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['finishTime'] = finishTime;
    map['logsBucket'] = logsBucket;
    map['project'] = project;
    map['sourceProvenance'] = sourceProvenance.toMap();
    map['startTime'] = startTime;
    map['triggerId'] = triggerId;
    return map;
  }

  factory BuildProvenanceResponse2.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceResponse2(
      buildOptions: (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] as String,
      builtArtifacts: Input.decodeList<ArtifactResponse2>(
          map['builtArtifacts'],
          (value) => ArtifactResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      commands: Input.decodeList<CommandResponse2>(
          map['commands'],
          (value) =>
              CommandResponse2.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      finishTime: map['finishTime'] as String,
      logsBucket: map['logsBucket'] as String,
      project: map['project'] as String,
      sourceProvenance: SourceResponse7.fromMap(
          (map['sourceProvenance'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      triggerId: map['triggerId'] as String,
    );
  }
}
