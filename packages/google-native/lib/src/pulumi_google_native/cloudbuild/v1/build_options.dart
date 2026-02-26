// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'build_options_default_logs_bucket_behavior.dart';
import 'build_options_log_streaming_option.dart';
import 'build_options_logging.dart';
import 'build_options_machine_type.dart';
import 'build_options_requested_verify_option.dart';
import 'build_options_source_provenance_hash_item.dart';
import 'build_options_substitution_option.dart';
import 'pool_option.dart';
import 'volume4.dart';

/// Optional arguments to enable specific features of builds.
class BuildOptions {
  /// Option to include built-in and custom substitutions as env variables for all build steps.
  final bool? automapSubstitutions;

  /// Optional. Option to specify how default logs buckets are setup.
  final BuildOptionsDefaultLogsBucketBehavior? defaultLogsBucketBehavior;

  /// Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.
  final String? diskSizeGb;

  /// Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  final bool? dynamicSubstitutions;

  /// A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final List<String>? env;

  /// Option to define build log streaming behavior to Cloud Storage.
  final BuildOptionsLogStreamingOption? logStreamingOption;

  /// Option to specify the logging mode, which determines if and where build logs are stored.
  final BuildOptionsLogging? logging;

  /// Compute Engine machine type on which to run the build.
  final BuildOptionsMachineType? machineType;

  /// Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
  final PoolOption? pool;

  /// Requested verifiability options.
  final BuildOptionsRequestedVerifyOption? requestedVerifyOption;

  /// A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.
  final List<String>? secretEnv;

  /// Requested hash for SourceProvenance.
  final List<BuildOptionsSourceProvenanceHashItem>? sourceProvenanceHash;

  /// Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
  final BuildOptionsSubstitutionOption? substitutionOption;

  /// Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
  final List<Volume4>? volumes;

  /// This field deprecated; please use `pool.name` instead.
  final String? workerPool;

  BuildOptions({
    this.automapSubstitutions,
    this.defaultLogsBucketBehavior,
    this.diskSizeGb,
    this.dynamicSubstitutions,
    this.env,
    this.logStreamingOption,
    this.logging,
    this.machineType,
    this.pool,
    this.requestedVerifyOption,
    this.secretEnv,
    this.sourceProvenanceHash,
    this.substitutionOption,
    this.volumes,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automapSubstitutionsValue = automapSubstitutions;
    if (automapSubstitutionsValue != null) {
      map['automapSubstitutions'] = automapSubstitutionsValue;
    }
    final defaultLogsBucketBehaviorValue = defaultLogsBucketBehavior;
    if (defaultLogsBucketBehaviorValue != null) {
      map['defaultLogsBucketBehavior'] = defaultLogsBucketBehaviorValue.value;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final dynamicSubstitutionsValue = dynamicSubstitutions;
    if (dynamicSubstitutionsValue != null) {
      map['dynamicSubstitutions'] = dynamicSubstitutionsValue;
    }
    final envValue = env;
    if (envValue != null) {
      map['env'] = envValue;
    }
    final logStreamingOptionValue = logStreamingOption;
    if (logStreamingOptionValue != null) {
      map['logStreamingOption'] = logStreamingOptionValue.value;
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] = loggingValue.value;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue.value;
    }
    final poolValue = pool;
    if (poolValue != null) {
      map['pool'] = poolValue.toMap();
    }
    final requestedVerifyOptionValue = requestedVerifyOption;
    if (requestedVerifyOptionValue != null) {
      map['requestedVerifyOption'] = requestedVerifyOptionValue.value;
    }
    final secretEnvValue = secretEnv;
    if (secretEnvValue != null) {
      map['secretEnv'] = secretEnvValue;
    }
    final sourceProvenanceHashValue = sourceProvenanceHash;
    if (sourceProvenanceHashValue != null) {
      map['sourceProvenanceHash'] =
          Input.encodeList<BuildOptionsSourceProvenanceHashItem, String>(
              sourceProvenanceHashValue, (value) => value.value);
    }
    final substitutionOptionValue = substitutionOption;
    if (substitutionOptionValue != null) {
      map['substitutionOption'] = substitutionOptionValue.value;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = Input.encodeList<Volume4, Map<String, dynamic>>(
          volumesValue, (value) => value.toMap());
    }
    final workerPoolValue = workerPool;
    if (workerPoolValue != null) {
      map['workerPool'] = workerPoolValue;
    }
    return map;
  }

  factory BuildOptions.fromMap(Map<String, dynamic> map) {
    return BuildOptions(
      automapSubstitutions: map['automapSubstitutions'] == null
          ? null
          : map['automapSubstitutions'] as bool,
      defaultLogsBucketBehavior: map['defaultLogsBucketBehavior'] == null
          ? null
          : BuildOptionsDefaultLogsBucketBehavior.fromValue(
              map['defaultLogsBucketBehavior'] as String),
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      dynamicSubstitutions: map['dynamicSubstitutions'] == null
          ? null
          : map['dynamicSubstitutions'] as bool,
      env: map['env'] == null ? null : (map['env'] as List).cast<String>(),
      logStreamingOption: map['logStreamingOption'] == null
          ? null
          : BuildOptionsLogStreamingOption.fromValue(
              map['logStreamingOption'] as String),
      logging: map['logging'] == null
          ? null
          : BuildOptionsLogging.fromValue(map['logging'] as String),
      machineType: map['machineType'] == null
          ? null
          : BuildOptionsMachineType.fromValue(map['machineType'] as String),
      pool: map['pool'] == null
          ? null
          : PoolOption.fromMap((map['pool'] as Map).cast<String, dynamic>()),
      requestedVerifyOption: map['requestedVerifyOption'] == null
          ? null
          : BuildOptionsRequestedVerifyOption.fromValue(
              map['requestedVerifyOption'] as String),
      secretEnv: map['secretEnv'] == null
          ? null
          : (map['secretEnv'] as List).cast<String>(),
      sourceProvenanceHash: map['sourceProvenanceHash'] == null
          ? null
          : Input.decodeList<BuildOptionsSourceProvenanceHashItem>(
              map['sourceProvenanceHash'],
              (value) => BuildOptionsSourceProvenanceHashItem.fromValue(
                  value as String)),
      substitutionOption: map['substitutionOption'] == null
          ? null
          : BuildOptionsSubstitutionOption.fromValue(
              map['substitutionOption'] as String),
      volumes: map['volumes'] == null
          ? null
          : Input.decodeList<Volume4>(
              map['volumes'],
              (value) =>
                  Volume4.fromMap((value as Map).cast<String, dynamic>())),
      workerPool:
          map['workerPool'] == null ? null : map['workerPool'] as String,
    );
  }
}
