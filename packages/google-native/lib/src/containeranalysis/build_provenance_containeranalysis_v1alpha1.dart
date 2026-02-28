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

  /// Creates a new [BuildProvenanceContaineranalysisV1alpha1].
  /// [buildOptions] Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  /// [builderVersion] Version string of the builder at the time this build was executed.
  /// [builtArtifacts] Output of the build.
  /// [commands] Commands requested by the build.
  /// [createTime] Time at which the build was created.
  /// [creator] E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  /// [finishTime] Time at which execution of the build was finished.
  /// [id] Unique identifier of the build.
  /// [logsBucket] Google Cloud Storage bucket where logs were written.
  /// [project] ID of the project.
  /// [sourceProvenance] Details of the Source input to the build.
  /// [startTime] Time at which execution of the build was started.
  /// [triggerId] Trigger identifier if the build was triggered automatically; empty if not.
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
    return <String, dynamic>{
      'buildOptions': ?buildOptions,
      'builderVersion': ?builderVersion,
      'builtArtifacts': ?builtArtifacts == null ? null : pulumi.Input.encodeList<ArtifactContaineranalysisV1alpha1, Map<String, dynamic>>(builtArtifacts!, (value) => value.toMap()),
      'commands': ?commands == null ? null : pulumi.Input.encodeList<CommandContaineranalysisV1alpha1, Map<String, dynamic>>(commands!, (value) => value.toMap()),
      'createTime': ?createTime,
      'creator': ?creator,
      'finishTime': ?finishTime,
      'id': ?id,
      'logsBucket': ?logsBucket,
      'project': ?project,
      'sourceProvenance': ?sourceProvenance == null ? null : sourceProvenance!.toMap(),
      'startTime': ?startTime,
      'triggerId': ?triggerId,
    };
  }

  factory BuildProvenanceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return BuildProvenanceContaineranalysisV1alpha1(
      buildOptions: map['buildOptions'] == null ? null : (map['buildOptions'] as Map).cast<String, String>(),
      builderVersion: map['builderVersion'] == null ? null : map['builderVersion'] as String,
      builtArtifacts: map['builtArtifacts'] == null ? null : pulumi.Input.decodeList<ArtifactContaineranalysisV1alpha1>(map['builtArtifacts'], (value) => ArtifactContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      commands: map['commands'] == null ? null : pulumi.Input.decodeList<CommandContaineranalysisV1alpha1>(map['commands'], (value) => CommandContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      creator: map['creator'] == null ? null : map['creator'] as String,
      finishTime: map['finishTime'] == null ? null : map['finishTime'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      logsBucket: map['logsBucket'] == null ? null : map['logsBucket'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceProvenance: map['sourceProvenance'] == null ? null : SourceContaineranalysisV1alpha1.fromMap((map['sourceProvenance'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
    );
  }
}

