// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_response.dart';
import 'command_response.dart';
import 'source_response_containeranalysis_v1.dart';

/// Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
class BuildProvenanceResponse {
  /// Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  final Map<String, String> buildOptions;

  /// Version string of the builder at the time this build was executed.
  final String builderVersion;

  /// Output of the build.
  final List<ArtifactResponse> builtArtifacts;

  /// Commands requested by the build.
  final List<CommandResponse> commands;

  /// Time at which the build was created.
  final String createTime;

  /// E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  final String creator;

  /// Time at which execution of the build was finished.
  final String endTime;

  /// URI where any logs for this provenance were written.
  final String logsUri;

  /// ID of the project.
  final String project;

  /// Details of the Source input to the build.
  final SourceResponseContaineranalysisV1 sourceProvenance;

  /// Time at which execution of the build was started.
  final String startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  final String triggerId;

  BuildProvenanceResponse({
    required this.buildOptions,
    required this.builderVersion,
    required this.builtArtifacts,
    required this.commands,
    required this.createTime,
    required this.creator,
    required this.endTime,
    required this.logsUri,
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
        pulumi.Input.encodeList<ArtifactResponse, Map<String, dynamic>>(
            builtArtifacts, (value) => value.toMap());
    map['commands'] =
        pulumi.Input.encodeList<CommandResponse, Map<String, dynamic>>(
            commands, (value) => value.toMap());
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['endTime'] = endTime;
    map['logsUri'] = logsUri;
    map['project'] = project;
    map['sourceProvenance'] = sourceProvenance.toMap();
    map['startTime'] = startTime;
    map['triggerId'] = triggerId;
    return map;
  }

  factory BuildProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceResponse(
      buildOptions: (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] as String,
      builtArtifacts: pulumi.Input.decodeList<ArtifactResponse>(
          map['builtArtifacts'],
          (value) =>
              ArtifactResponse.fromMap((value as Map).cast<String, dynamic>())),
      commands: pulumi.Input.decodeList<CommandResponse>(
          map['commands'],
          (value) =>
              CommandResponse.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      endTime: map['endTime'] as String,
      logsUri: map['logsUri'] as String,
      project: map['project'] as String,
      sourceProvenance: SourceResponseContaineranalysisV1.fromMap(
          (map['sourceProvenance'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      triggerId: map['triggerId'] as String,
    );
  }
}
