// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_trigger_build_option_volume/get_trigger_build_option_volume.dart';

class GetTriggerBuildOption {
  /// Requested disk size for the VM that runs the build. Note that this is NOT "disk free";
  /// some of the space will be used by the operating system and build utilities.
  /// Also note that this is the minimum disk size that will be allocated for the build --
  /// the build may run with a larger disk than requested. At present, the maximum disk size
  /// is 1000GB; builds that request more than the maximum are rejected with an error.
  final int diskSizeGb;

  /// Option to specify whether or not to apply bash style string operations to the substitutions.
  ///
  /// NOTE this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  final bool dynamicSubstitutions;

  /// A list of global environment variable definitions that will exist for all build steps
  /// in this build. If a variable is defined in both globally and in a build step,
  /// the variable will use the build step value.
  ///
  /// The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final List<String> envs;

  /// Option to define build log streaming behavior to Google Cloud Storage. Possible values: ["STREAM_DEFAULT", "STREAM_ON", "STREAM_OFF"]
  final String logStreamingOption;

  /// Option to specify the logging mode, which determines if and where build logs are stored. Possible values: ["LOGGING_UNSPECIFIED", "LEGACY", "GCS_ONLY", "STACKDRIVER_ONLY", "CLOUD_LOGGING_ONLY", "NONE"]
  final String logging;

  /// Compute Engine machine type on which to run the build.
  final String machineType;

  /// Requested verifiability options. Possible values: ["NOT_VERIFIED", "VERIFIED"]
  final String requestedVerifyOption;

  /// A list of global environment variables, which are encrypted using a Cloud Key Management
  /// Service crypto key. These values must be specified in the build's Secret. These variables
  /// will be available to all build steps in this build.
  final List<String> secretEnvs;

  /// Requested hash for SourceProvenance. Possible values: ["NONE", "SHA256", "MD5"]
  final List<String> sourceProvenanceHashes;

  /// Option to specify behavior when there is an error in the substitution checks.
  ///
  /// NOTE this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden
  /// in the build configuration file. Possible values: ["MUST_MATCH", "ALLOW_LOOSE"]
  final String substitutionOption;

  /// Global list of volumes to mount for ALL build steps
  ///
  /// Each volume is created as an empty volume prior to starting the build process.
  /// Upon completion of the build, volumes and their contents are discarded. Global
  /// volume names and paths cannot conflict with the volumes defined a build step.
  ///
  /// Using a global volume in a build with only one step is not valid as it is indicative
  /// of a build request with an incorrect configuration.
  final List<GetTriggerBuildOptionVolume> volumes;

  /// Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}
  ///
  /// This field is experimental.
  final String workerPool;

  GetTriggerBuildOption({
    required this.diskSizeGb,
    required this.dynamicSubstitutions,
    required this.envs,
    required this.logStreamingOption,
    required this.logging,
    required this.machineType,
    required this.requestedVerifyOption,
    required this.secretEnvs,
    required this.sourceProvenanceHashes,
    required this.substitutionOption,
    required this.volumes,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskSizeGb'] = diskSizeGb;
    map['dynamicSubstitutions'] = dynamicSubstitutions;
    map['envs'] = envs;
    map['logStreamingOption'] = logStreamingOption;
    map['logging'] = logging;
    map['machineType'] = machineType;
    map['requestedVerifyOption'] = requestedVerifyOption;
    map['secretEnvs'] = secretEnvs;
    map['sourceProvenanceHashes'] = sourceProvenanceHashes;
    map['substitutionOption'] = substitutionOption;
    map['volumes'] = pulumi.Input.encodeList<GetTriggerBuildOptionVolume,
        Map<String, dynamic>>(volumes, (value) => value.toMap());
    map['workerPool'] = workerPool;
    return map;
  }

  factory GetTriggerBuildOption.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildOption(
      diskSizeGb: map['diskSizeGb'] as int,
      dynamicSubstitutions: map['dynamicSubstitutions'] as bool,
      envs: (map['envs'] as List).cast<String>(),
      logStreamingOption: map['logStreamingOption'] as String,
      logging: map['logging'] as String,
      machineType: map['machineType'] as String,
      requestedVerifyOption: map['requestedVerifyOption'] as String,
      secretEnvs: (map['secretEnvs'] as List).cast<String>(),
      sourceProvenanceHashes:
          (map['sourceProvenanceHashes'] as List).cast<String>(),
      substitutionOption: map['substitutionOption'] as String,
      volumes: pulumi.Input.decodeList<GetTriggerBuildOptionVolume>(
          map['volumes'],
          (value) => GetTriggerBuildOptionVolume.fromMap(
              (value as Map).cast<String, dynamic>())),
      workerPool: map['workerPool'] as String,
    );
  }
}
