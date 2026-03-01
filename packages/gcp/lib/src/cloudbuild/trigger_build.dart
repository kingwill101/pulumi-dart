// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_artifacts.dart';
import 'trigger_build_available_secrets.dart';
import 'trigger_build_options.dart';
import 'trigger_build_secret.dart';
import 'trigger_build_source.dart';
import 'trigger_build_step.dart';

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

  /// Creates a new [TriggerBuild].
  /// [artifacts] Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// [availableSecrets] Secrets and secret environment variables.
  /// [images] A list of images to be pushed upon the successful completion of all build steps.
  /// [logsBucket] Google Cloud Storage bucket where logs should be written.
  /// [options] Special options for this build.
  /// [queueTtl] TTL in queue for this build. If provided and the build is enqueued longer than this value,
  /// [secrets] Secrets to decrypt using Cloud Key Management Service.
  /// [source] The location of the source files to build.
  /// [steps] The operations to be performed on the workspace.
  /// [substitutions] Substitutions data for Build resource.
  /// [tags] Tags for annotation of a Build. These are not docker tags.
  /// [timeout] Amount of time that this build should be allowed to run, to second granularity.
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
    return <String, dynamic>{
      'artifacts': ?artifacts == null ? null : artifacts!.toMap(),
      'availableSecrets': ?availableSecrets == null
          ? null
          : availableSecrets!.toMap(),
      'images': ?images,
      'logsBucket': ?logsBucket,
      'options': ?options == null ? null : options!.toMap(),
      'queueTtl': ?queueTtl,
      'secrets': ?secrets == null
          ? null
          : pulumi.Input.encodeList<TriggerBuildSecret, Map<String, dynamic>>(
              secrets!,
              (value) => value.toMap(),
            ),
      'source': ?source == null ? null : source!.toMap(),
      'steps': pulumi.Input.encodeList<TriggerBuildStep, Map<String, dynamic>>(
        steps,
        (value) => value.toMap(),
      ),
      'substitutions': ?substitutions,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory TriggerBuild.fromMap(Map<String, dynamic> map) {
    return TriggerBuild(
      artifacts: map['artifacts'] == null
          ? null
          : TriggerBuildArtifacts.fromMap(
              (map['artifacts'] as Map).cast<String, dynamic>(),
            ),
      availableSecrets: map['availableSecrets'] == null
          ? null
          : TriggerBuildAvailableSecrets.fromMap(
              (map['availableSecrets'] as Map).cast<String, dynamic>(),
            ),
      images: map['images'] == null
          ? null
          : (map['images'] as List).cast<String>(),
      logsBucket: map['logsBucket'] == null
          ? null
          : map['logsBucket'] as String,
      options: map['options'] == null
          ? null
          : TriggerBuildOptions.fromMap(
              (map['options'] as Map).cast<String, dynamic>(),
            ),
      queueTtl: map['queueTtl'] == null ? null : map['queueTtl'] as String,
      secrets: map['secrets'] == null
          ? null
          : pulumi.Input.decodeList<TriggerBuildSecret>(
              map['secrets'],
              (value) => TriggerBuildSecret.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      source: map['source'] == null
          ? null
          : TriggerBuildSource.fromMap(
              (map['source'] as Map).cast<String, dynamic>(),
            ),
      steps: pulumi.Input.decodeList<TriggerBuildStep>(
        map['steps'],
        (value) =>
            TriggerBuildStep.fromMap((value as Map).cast<String, dynamic>()),
      ),
      substitutions: map['substitutions'] == null
          ? null
          : (map['substitutions'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
