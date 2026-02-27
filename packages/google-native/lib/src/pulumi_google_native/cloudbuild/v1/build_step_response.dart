// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_span_response.dart';
import 'volume_response_cloudbuild_v1.dart';

/// A step in the build pipeline.
class BuildStepResponse {
  /// Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.
  final List<int> allowExitCodes;

  /// Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.
  final bool allowFailure;

  /// A list of arguments that will be presented to the step when it is started. If the image used to run the step's container has an entrypoint, the `args` are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.
  final List<String> args;

  /// Option to include built-in and custom substitutions as env variables for this build step. This option will override the global option in BuildOption.
  final bool automapSubstitutions;

  /// Working directory to use when running this step's container. If this value is a relative path, it is relative to the build's working directory. If this value is absolute, it may be outside the build's working directory, in which case the contents of the path may not be persisted across build step executions, unless a `volume` for that path is specified. If the build specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is ignored for the step's execution.
  final String dir;

  /// Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's default entrypoint is used.
  final String entrypoint;

  /// A list of environment variable definitions to be used when running a step. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final List<String> env;

  /// Return code from running the step.
  final int exitCode;

  /// The name of the container image that will run this particular build step. If the image is available in the host's Docker daemon's cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account's credentials if necessary. The Docker daemon's cache will already have the latest versions of all of the officially supported build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also have cached many of the layers for some popular images, like "ubuntu", "debian", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host's Docker daemon's cache and is available to use as the name for a later build step.
  final String name;

  /// Stores timing information for pulling this build step's builder image only.
  final TimeSpanResponse pullTiming;

  /// A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.
  final String script;

  /// A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`.
  final List<String> secretEnv;

  /// Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
  final String status;

  /// Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.
  final String timeout;

  /// Stores timing information for executing this build step.
  final TimeSpanResponse timing;

  /// List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.
  final List<VolumeResponseCloudbuildV1> volumes;

  /// The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in `wait_for` have completed successfully. If `wait_for` is empty, this build step will start when all previous build steps in the `Build.Steps` list have completed successfully.
  final List<String> waitFor;

  BuildStepResponse({
    required this.allowExitCodes,
    required this.allowFailure,
    required this.args,
    required this.automapSubstitutions,
    required this.dir,
    required this.entrypoint,
    required this.env,
    required this.exitCode,
    required this.name,
    required this.pullTiming,
    required this.script,
    required this.secretEnv,
    required this.status,
    required this.timeout,
    required this.timing,
    required this.volumes,
    required this.waitFor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowExitCodes'] = allowExitCodes;
    map['allowFailure'] = allowFailure;
    map['args'] = args;
    map['automapSubstitutions'] = automapSubstitutions;
    map['dir'] = dir;
    map['entrypoint'] = entrypoint;
    map['env'] = env;
    map['exitCode'] = exitCode;
    map['name'] = name;
    map['pullTiming'] = pullTiming.toMap();
    map['script'] = script;
    map['secretEnv'] = secretEnv;
    map['status'] = status;
    map['timeout'] = timeout;
    map['timing'] = timing.toMap();
    map['volumes'] = pulumi.Input.encodeList<VolumeResponseCloudbuildV1,
        Map<String, dynamic>>(volumes, (value) => value.toMap());
    map['waitFor'] = waitFor;
    return map;
  }

  factory BuildStepResponse.fromMap(Map<String, dynamic> map) {
    return BuildStepResponse(
      allowExitCodes: (map['allowExitCodes'] as List).cast<int>(),
      allowFailure: map['allowFailure'] as bool,
      args: (map['args'] as List).cast<String>(),
      automapSubstitutions: map['automapSubstitutions'] as bool,
      dir: map['dir'] as String,
      entrypoint: map['entrypoint'] as String,
      env: (map['env'] as List).cast<String>(),
      exitCode: map['exitCode'] as int,
      name: map['name'] as String,
      pullTiming: TimeSpanResponse.fromMap(
          (map['pullTiming'] as Map).cast<String, dynamic>()),
      script: map['script'] as String,
      secretEnv: (map['secretEnv'] as List).cast<String>(),
      status: map['status'] as String,
      timeout: map['timeout'] as String,
      timing: TimeSpanResponse.fromMap(
          (map['timing'] as Map).cast<String, dynamic>()),
      volumes: pulumi.Input.decodeList<VolumeResponseCloudbuildV1>(
          map['volumes'],
          (value) => VolumeResponseCloudbuildV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      waitFor: (map['waitFor'] as List).cast<String>(),
    );
  }
}
