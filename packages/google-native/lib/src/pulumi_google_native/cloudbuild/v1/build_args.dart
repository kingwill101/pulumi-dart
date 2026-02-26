// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'artifacts.dart';
import 'build_options.dart';
import 'build_step.dart';
import 'secret.dart';
import 'secrets.dart';
import 'source.dart';

/// The set of arguments for Build.
class BuildArgs {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  final Input<Artifacts>? artifacts;

  /// Secrets and secret environment variables.
  final Input<Secrets>? availableSecrets;

  /// A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.
  final Input<List<String>>? images;
  final Input<String>? location;

  /// Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
  final Input<String>? logsBucket;

  /// Special options for this build.
  final Input<BuildOptions>? options;
  final Input<String>? project;

  /// Required. ID of the project.
  final Input<String> projectId;

  /// TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.
  final Input<String>? queueTtl;

  /// Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  final Input<List<Secret>>? secrets;

  /// IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account.
  final Input<String>? serviceAccount;

  /// The location of the source files to build.
  final Input<Source>? source;

  /// The operations to be performed on the workspace.
  final Input<List<BuildStep>> steps;

  /// Substitutions data for `Build` resource.
  final Input<Map<String, String>>? substitutions;

  /// Tags for annotation of a `Build`. These are not docker tags.
  final Input<List<String>>? tags;

  /// Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is 60 minutes.
  final Input<String>? timeout;

  BuildArgs({
    this.artifacts,
    this.availableSecrets,
    this.images,
    this.location,
    this.logsBucket,
    this.options,
    this.project,
    required this.projectId,
    this.queueTtl,
    this.secrets,
    this.serviceAccount,
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
      map['artifacts'] =
          Input.mapOptionalInputValue<Artifacts, Map<String, dynamic>>(
              artifactsValue, (value) => value.toMap());
    }
    final availableSecretsValue = availableSecrets;
    if (availableSecretsValue != null) {
      map['availableSecrets'] =
          Input.mapOptionalInputValue<Secrets, Map<String, dynamic>>(
              availableSecretsValue, (value) => value.toMap());
    }
    final imagesValue = images;
    if (imagesValue != null) {
      map['images'] = imagesValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final logsBucketValue = logsBucket;
    if (logsBucketValue != null) {
      map['logsBucket'] = logsBucketValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] =
          Input.mapOptionalInputValue<BuildOptions, Map<String, dynamic>>(
              optionsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    final queueTtlValue = queueTtl;
    if (queueTtlValue != null) {
      map['queueTtl'] = queueTtlValue;
    }
    final secretsValue = secrets;
    if (secretsValue != null) {
      map['secrets'] =
          Input.mapOptionalInputValue<List<Secret>, List<Map<String, dynamic>>>(
              secretsValue,
              (value) => Input.encodeList<Secret, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = Input.mapOptionalInputValue<Source, Map<String, dynamic>>(
          sourceValue, (value) => value.toMap());
    }
    map['steps'] =
        Input.mapInputValue<List<BuildStep>, List<Map<String, dynamic>>>(
            steps,
            (value) => Input.encodeList<BuildStep, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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

  factory BuildArgs.fromMap(Map<String, dynamic> map) {
    return BuildArgs(
      artifacts: Input.asOptionalInput<Artifacts>(map['artifacts']),
      availableSecrets: Input.asOptionalInput<Secrets>(map['availableSecrets']),
      images: Input.asOptionalInput<List<String>>(map['images']),
      location: Input.asOptionalInput<String>(map['location']),
      logsBucket: Input.asOptionalInput<String>(map['logsBucket']),
      options: Input.asOptionalInput<BuildOptions>(map['options']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
      queueTtl: Input.asOptionalInput<String>(map['queueTtl']),
      secrets: Input.asOptionalInput<List<Secret>>(map['secrets']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      source: Input.asOptionalInput<Source>(map['source']),
      steps: Input.asInput<List<BuildStep>>(map['steps']),
      substitutions:
          Input.asOptionalInput<Map<String, String>>(map['substitutions']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      timeout: Input.asOptionalInput<String>(map['timeout']),
    );
  }
}
