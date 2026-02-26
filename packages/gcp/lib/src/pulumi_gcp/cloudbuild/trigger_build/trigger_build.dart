// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trigger_build_artifacts/trigger_build_artifacts.dart';
import '../trigger_build_available_secrets/trigger_build_available_secrets.dart';
import '../trigger_build_options/trigger_build_options.dart';
import '../trigger_build_secret/trigger_build_secret.dart';
import '../trigger_build_source/trigger_build_source.dart';
import '../trigger_build_step/trigger_build_step.dart';

class TriggerBuild {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// Structure is documented below.
  final TriggerBuildArtifacts? artifacts;

  /// Secrets and secret environment variables.
  /// Structure is documented below.
  final TriggerBuildAvailableSecrets? availableSecrets;

  /// A list of images to be pushed upon the successful completion of all build steps.
  /// The images are pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's results field.
  /// If any of the images fail to be pushed, the build status is marked FAILURE.
  final List<String>? images;

  /// Google Cloud Storage bucket where logs should be written.
  /// Logs file names will be of the format ${logsBucket}/log-${build_id}.txt.
  final String? logsBucket;

  /// Special options for this build.
  /// Structure is documented below.
  final TriggerBuildOptions? options;

  /// TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// the build will expire and the build status will be EXPIRED.
  /// The TTL starts ticking from createTime.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? queueTtl;

  /// Secrets to decrypt using Cloud Key Management Service.
  /// Structure is documented below.
  final List<TriggerBuildSecret>? secrets;

  /// The location of the source files to build.
  /// One of `storageSource` or `repoSource` must be provided.
  /// Structure is documented below.
  final TriggerBuildSource? source;

  /// The operations to be performed on the workspace.
  /// Structure is documented below.
  final List<TriggerBuildStep> steps;

  /// Substitutions data for Build resource.
  final Map<String, String>? substitutions;

  /// Tags for annotation of a Build. These are not docker tags.
  final List<String>? tags;

  /// Amount of time that this build should be allowed to run, to second granularity.
  /// If this amount of time elapses, work on the build will cease and the build status will be TIMEOUT.
  /// This timeout must be equal to or greater than the sum of the timeouts for build steps within the build.
  /// The expected format is the number of seconds followed by s.
  /// Default time is ten minutes (600s).
  final String? timeout;

  TriggerBuild({
    this.artifacts,
    this.availableSecrets,
    this.images,
    this.logsBucket,
    this.options,
    this.queueTtl,
    this.secrets,
    this.source,
    required this.steps,
    this.substitutions,
    this.tags,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactsValue = artifacts;
    if (artifactsValue != null) {
      map['artifacts'] = artifactsValue.toMap();
    }
    final availableSecretsValue = availableSecrets;
    if (availableSecretsValue != null) {
      map['availableSecrets'] = availableSecretsValue.toMap();
    }
    final imagesValue = images;
    if (imagesValue != null) {
      map['images'] = imagesValue;
    }
    final logsBucketValue = logsBucket;
    if (logsBucketValue != null) {
      map['logsBucket'] = logsBucketValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue.toMap();
    }
    final queueTtlValue = queueTtl;
    if (queueTtlValue != null) {
      map['queueTtl'] = queueTtlValue;
    }
    final secretsValue = secrets;
    if (secretsValue != null) {
      map['secrets'] =
          Input.encodeList<TriggerBuildSecret, Map<String, dynamic>>(
              secretsValue, (value) => value.toMap());
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue.toMap();
    }
    map['steps'] = Input.encodeList<TriggerBuildStep, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    final substitutionsValue = substitutions;
    if (substitutionsValue != null) {
      map['substitutions'] = substitutionsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory TriggerBuild.fromMap(Map<String, dynamic> map) {
    return TriggerBuild(
      artifacts: map['artifacts'] == null
          ? null
          : TriggerBuildArtifacts.fromMap(
              (map['artifacts'] as Map).cast<String, dynamic>()),
      availableSecrets: map['availableSecrets'] == null
          ? null
          : TriggerBuildAvailableSecrets.fromMap(
              (map['availableSecrets'] as Map).cast<String, dynamic>()),
      images:
          map['images'] == null ? null : (map['images'] as List).cast<String>(),
      logsBucket:
          map['logsBucket'] == null ? null : map['logsBucket'] as String,
      options: map['options'] == null
          ? null
          : TriggerBuildOptions.fromMap(
              (map['options'] as Map).cast<String, dynamic>()),
      queueTtl: map['queueTtl'] == null ? null : map['queueTtl'] as String,
      secrets: map['secrets'] == null
          ? null
          : Input.decodeList<TriggerBuildSecret>(
              map['secrets'],
              (value) => TriggerBuildSecret.fromMap(
                  (value as Map).cast<String, dynamic>())),
      source: map['source'] == null
          ? null
          : TriggerBuildSource.fromMap(
              (map['source'] as Map).cast<String, dynamic>()),
      steps: Input.decodeList<TriggerBuildStep>(
          map['steps'],
          (value) =>
              TriggerBuildStep.fromMap((value as Map).cast<String, dynamic>())),
      substitutions: map['substitutions'] == null
          ? null
          : (map['substitutions'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
