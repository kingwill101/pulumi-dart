// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_option_response.dart';
import 'volume_response.dart';

/// Optional arguments to enable specific features of builds.
class BuildOptionsResponse {
  /// Option to include built-in and custom substitutions as env variables for all build steps.
  final bool automapSubstitutions;
  /// Optional. Option to specify how default logs buckets are setup.
  final String defaultLogsBucketBehavior;
  /// Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.
  final String diskSizeGb;
  /// Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  final bool dynamicSubstitutions;
  /// A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final List<String> env;
  /// Option to define build log streaming behavior to Cloud Storage.
  final String logStreamingOption;
  /// Option to specify the logging mode, which determines if and where build logs are stored.
  final String logging;
  /// Compute Engine machine type on which to run the build.
  final String machineType;
  /// Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
  final PoolOptionResponse pool;
  /// Requested verifiability options.
  final String requestedVerifyOption;
  /// A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.
  final List<String> secretEnv;
  /// Requested hash for SourceProvenance.
  final List<String> sourceProvenanceHash;
  /// Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
  final String substitutionOption;
  /// Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
  final List<VolumeResponse> volumes;
  /// This field deprecated; please use `pool.name` instead.
  final String workerPool;

  /// Creates a new [BuildOptionsResponse].
  /// [automapSubstitutions] Option to include built-in and custom substitutions as env variables for all build steps.
  /// [defaultLogsBucketBehavior] Optional. Option to specify how default logs buckets are setup.
  /// [diskSizeGb] Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.
  /// [dynamicSubstitutions] Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  /// [env] A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  /// [logStreamingOption] Option to define build log streaming behavior to Cloud Storage.
  /// [logging] Option to specify the logging mode, which determines if and where build logs are stored.
  /// [machineType] Compute Engine machine type on which to run the build.
  /// [pool] Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
  /// [requestedVerifyOption] Requested verifiability options.
  /// [secretEnv] A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.
  /// [sourceProvenanceHash] Requested hash for SourceProvenance.
  /// [substitutionOption] Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
  /// [volumes] Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
  /// [workerPool] This field deprecated; please use `pool.name` instead.
  BuildOptionsResponse({
    required this.automapSubstitutions,
    required this.defaultLogsBucketBehavior,
    required this.diskSizeGb,
    required this.dynamicSubstitutions,
    required this.env,
    required this.logStreamingOption,
    required this.logging,
    required this.machineType,
    required this.pool,
    required this.requestedVerifyOption,
    required this.secretEnv,
    required this.sourceProvenanceHash,
    required this.substitutionOption,
    required this.volumes,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automapSubstitutions': automapSubstitutions,
      'defaultLogsBucketBehavior': defaultLogsBucketBehavior,
      'diskSizeGb': diskSizeGb,
      'dynamicSubstitutions': dynamicSubstitutions,
      'env': env,
      'logStreamingOption': logStreamingOption,
      'logging': logging,
      'machineType': machineType,
      'pool': pool.toMap(),
      'requestedVerifyOption': requestedVerifyOption,
      'secretEnv': secretEnv,
      'sourceProvenanceHash': sourceProvenanceHash,
      'substitutionOption': substitutionOption,
      'volumes': pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(volumes, (value) => value.toMap()),
      'workerPool': workerPool,
    };
  }

  factory BuildOptionsResponse.fromMap(Map<String, dynamic> map) {
    return BuildOptionsResponse(
      automapSubstitutions: map['automapSubstitutions'] as bool,
      defaultLogsBucketBehavior: map['defaultLogsBucketBehavior'] as String,
      diskSizeGb: map['diskSizeGb'] as String,
      dynamicSubstitutions: map['dynamicSubstitutions'] as bool,
      env: (map['env'] as List).cast<String>(),
      logStreamingOption: map['logStreamingOption'] as String,
      logging: map['logging'] as String,
      machineType: map['machineType'] as String,
      pool: PoolOptionResponse.fromMap((map['pool'] as Map).cast<String, dynamic>()),
      requestedVerifyOption: map['requestedVerifyOption'] as String,
      secretEnv: (map['secretEnv'] as List).cast<String>(),
      sourceProvenanceHash: (map['sourceProvenanceHash'] as List).cast<String>(),
      substitutionOption: map['substitutionOption'] as String,
      volumes: pulumi.Input.decodeList<VolumeResponse>(map['volumes'], (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
      workerPool: map['workerPool'] as String,
    );
  }
}

