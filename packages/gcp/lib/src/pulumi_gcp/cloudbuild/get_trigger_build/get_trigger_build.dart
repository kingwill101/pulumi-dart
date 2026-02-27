// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_trigger_build_artifact/get_trigger_build_artifact.dart';
import '../get_trigger_build_available_secret/get_trigger_build_available_secret.dart';
import '../get_trigger_build_option/get_trigger_build_option.dart';
import '../get_trigger_build_secret/get_trigger_build_secret.dart';
import '../get_trigger_build_source/get_trigger_build_source.dart';
import '../get_trigger_build_step/get_trigger_build_step.dart';

class GetTriggerBuild {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  final List<GetTriggerBuildArtifact> artifacts;

  /// Secrets and secret environment variables.
  final List<GetTriggerBuildAvailableSecret> availableSecrets;

  /// A list of images to be pushed upon the successful completion of all build steps.
  /// The images are pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's results field.
  /// If any of the images fail to be pushed, the build status is marked FAILURE.
  final List<String> images;

  /// Google Cloud Storage bucket where logs should be written.
  /// Logs file names will be of the format ${logsBucket}/log-${build_id}.txt.
  final String logsBucket;

  /// Special options for this build.
  final List<GetTriggerBuildOption> options;

  /// TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// the build will expire and the build status will be EXPIRED.
  /// The TTL starts ticking from createTime.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String queueTtl;

  /// Secrets to decrypt using Cloud Key Management Service.
  final List<GetTriggerBuildSecret> secrets;

  /// The location of the source files to build.
  ///
  /// One of 'storageSource' or 'repoSource' must be provided.
  final List<GetTriggerBuildSource> sources;

  /// The operations to be performed on the workspace.
  final List<GetTriggerBuildStep> steps;

  /// Substitutions data for Build resource.
  final Map<String, String> substitutions;

  /// Tags for annotation of a Build. These are not docker tags.
  final List<String> tags;

  /// Amount of time that this build should be allowed to run, to second granularity.
  /// If this amount of time elapses, work on the build will cease and the build status will be TIMEOUT.
  /// This timeout must be equal to or greater than the sum of the timeouts for build steps within the build.
  /// The expected format is the number of seconds followed by s.
  /// Default time is ten minutes (600s).
  final String timeout;

  GetTriggerBuild({
    required this.artifacts,
    required this.availableSecrets,
    required this.images,
    required this.logsBucket,
    required this.options,
    required this.queueTtl,
    required this.secrets,
    required this.sources,
    required this.steps,
    required this.substitutions,
    required this.tags,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifacts'] =
        pulumi.Input.encodeList<GetTriggerBuildArtifact, Map<String, dynamic>>(
            artifacts, (value) => value.toMap());
    map['availableSecrets'] = pulumi.Input.encodeList<
        GetTriggerBuildAvailableSecret,
        Map<String, dynamic>>(availableSecrets, (value) => value.toMap());
    map['images'] = images;
    map['logsBucket'] = logsBucket;
    map['options'] =
        pulumi.Input.encodeList<GetTriggerBuildOption, Map<String, dynamic>>(
            options, (value) => value.toMap());
    map['queueTtl'] = queueTtl;
    map['secrets'] =
        pulumi.Input.encodeList<GetTriggerBuildSecret, Map<String, dynamic>>(
            secrets, (value) => value.toMap());
    map['sources'] =
        pulumi.Input.encodeList<GetTriggerBuildSource, Map<String, dynamic>>(
            sources, (value) => value.toMap());
    map['steps'] =
        pulumi.Input.encodeList<GetTriggerBuildStep, Map<String, dynamic>>(
            steps, (value) => value.toMap());
    map['substitutions'] = substitutions;
    map['tags'] = tags;
    map['timeout'] = timeout;
    return map;
  }

  factory GetTriggerBuild.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuild(
      artifacts: pulumi.Input.decodeList<GetTriggerBuildArtifact>(
          map['artifacts'],
          (value) => GetTriggerBuildArtifact.fromMap(
              (value as Map).cast<String, dynamic>())),
      availableSecrets: pulumi.Input.decodeList<GetTriggerBuildAvailableSecret>(
          map['availableSecrets'],
          (value) => GetTriggerBuildAvailableSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
      images: (map['images'] as List).cast<String>(),
      logsBucket: map['logsBucket'] as String,
      options: pulumi.Input.decodeList<GetTriggerBuildOption>(
          map['options'],
          (value) => GetTriggerBuildOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      queueTtl: map['queueTtl'] as String,
      secrets: pulumi.Input.decodeList<GetTriggerBuildSecret>(
          map['secrets'],
          (value) => GetTriggerBuildSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
      sources: pulumi.Input.decodeList<GetTriggerBuildSource>(
          map['sources'],
          (value) => GetTriggerBuildSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      steps: pulumi.Input.decodeList<GetTriggerBuildStep>(
          map['steps'],
          (value) => GetTriggerBuildStep.fromMap(
              (value as Map).cast<String, dynamic>())),
      substitutions: (map['substitutions'] as Map).cast<String, String>(),
      tags: (map['tags'] as List).cast<String>(),
      timeout: map['timeout'] as String,
    );
  }
}
