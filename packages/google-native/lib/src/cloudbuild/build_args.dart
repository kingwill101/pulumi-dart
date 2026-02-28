// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifacts.dart';
import 'build_options.dart';
import 'build_step.dart';
import 'secret.dart';
import 'secrets.dart';
import 'source.dart';

/// {@template pulumi_cloudbuild_v1_build_args_doc}
/// The set of arguments for Build.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_build_args_doc}
class BuildArgs {
  /// Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  final pulumi.Input<Artifacts>? artifacts;
  /// Secrets and secret environment variables.
  final pulumi.Input<Secrets>? availableSecrets;
  /// A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.
  final pulumi.Input<List<String>>? images;
  final pulumi.Input<String>? location;
  /// Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
  final pulumi.Input<String>? logsBucket;
  /// Special options for this build.
  final pulumi.Input<BuildOptions>? options;
  final pulumi.Input<String>? project;
  /// Required. ID of the project.
  final pulumi.Input<String> projectId;
  /// TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.
  final pulumi.Input<String>? queueTtl;
  /// Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  final pulumi.Input<List<Secret>>? secrets;
  /// IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account.
  final pulumi.Input<String>? serviceAccount;
  /// The location of the source files to build.
  final pulumi.Input<Source>? source;
  /// The operations to be performed on the workspace.
  final pulumi.Input<List<BuildStep>> steps;
  /// Substitutions data for `Build` resource.
  final pulumi.Input<Map<String, String>>? substitutions;
  /// Tags for annotation of a `Build`. These are not docker tags.
  final pulumi.Input<List<String>>? tags;
  /// Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is 60 minutes.
  final pulumi.Input<String>? timeout;

  /// Creates a new [BuildArgs].
  /// [artifacts] Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  /// [availableSecrets] Secrets and secret environment variables.
  /// [images] A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.
  /// [location] Optional.
  /// [logsBucket] Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
  /// [options] Special options for this build.
  /// [project] Optional.
  /// [projectId] Required. ID of the project.
  /// [queueTtl] TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.
  /// [secrets] Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  /// [serviceAccount] IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account.
  /// [source] The location of the source files to build.
  /// [steps] The operations to be performed on the workspace.
  /// [substitutions] Substitutions data for `Build` resource.
  /// [tags] Tags for annotation of a `Build`. These are not docker tags.
  /// [timeout] Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is 60 minutes.
  BuildArgs({
    Artifacts? artifacts,
    Secrets? availableSecrets,
    List<String>? images,
    String? location,
    String? logsBucket,
    BuildOptions? options,
    String? project,
    required String projectId,
    String? queueTtl,
    List<Secret>? secrets,
    String? serviceAccount,
    Source? source,
    required List<BuildStep> steps,
    Map<String, String>? substitutions,
    List<String>? tags,
    String? timeout,
  }) :
      artifacts = pulumi.Input.asOptionalInput<Artifacts>(artifacts),
      availableSecrets = pulumi.Input.asOptionalInput<Secrets>(availableSecrets),
      images = pulumi.Input.asOptionalInput<List<String>>(images),
      location = pulumi.Input.asOptionalInput<String>(location),
      logsBucket = pulumi.Input.asOptionalInput<String>(logsBucket),
      options = pulumi.Input.asOptionalInput<BuildOptions>(options),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asInput<String>(projectId),
      queueTtl = pulumi.Input.asOptionalInput<String>(queueTtl),
      secrets = pulumi.Input.asOptionalInput<List<Secret>>(secrets),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      source = pulumi.Input.asOptionalInput<Source>(source),
      steps = pulumi.Input.asInput<List<BuildStep>>(steps),
      substitutions = pulumi.Input.asOptionalInput<Map<String, String>>(substitutions),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?pulumi.Input.mapOptionalInputValue<Artifacts, Map<String, dynamic>>(artifacts, (value) => value.toMap()),
      'availableSecrets': ?pulumi.Input.mapOptionalInputValue<Secrets, Map<String, dynamic>>(availableSecrets, (value) => value.toMap()),
      'images': ?images,
      'location': ?location,
      'logsBucket': ?logsBucket,
      'options': ?pulumi.Input.mapOptionalInputValue<BuildOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'project': ?project,
      'projectId': projectId,
      'queueTtl': ?queueTtl,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<Secret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<Secret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?serviceAccount,
      'source': ?pulumi.Input.mapOptionalInputValue<Source, Map<String, dynamic>>(source, (value) => value.toMap()),
      'steps': pulumi.Input.mapInputValue<List<BuildStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<BuildStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substitutions': ?substitutions,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory BuildArgs.fromMap(Map<String, dynamic> map) {
    return BuildArgs(
      artifacts: map['artifacts'] == null ? null : Artifacts.fromMap((map['artifacts'] as Map).cast<String, dynamic>()),
      availableSecrets: map['availableSecrets'] == null ? null : Secrets.fromMap((map['availableSecrets'] as Map).cast<String, dynamic>()),
      images: map['images'] == null ? null : (map['images'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      logsBucket: map['logsBucket'] == null ? null : map['logsBucket'] as String,
      options: map['options'] == null ? null : BuildOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] as String,
      queueTtl: map['queueTtl'] == null ? null : map['queueTtl'] as String,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<Secret>(map['secrets'], (value) => Secret.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      source: map['source'] == null ? null : Source.fromMap((map['source'] as Map).cast<String, dynamic>()),
      steps: pulumi.Input.decodeList<BuildStep>(map['steps'], (value) => BuildStep.fromMap((value as Map).cast<String, dynamic>())),
      substitutions: map['substitutions'] == null ? null : (map['substitutions'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

