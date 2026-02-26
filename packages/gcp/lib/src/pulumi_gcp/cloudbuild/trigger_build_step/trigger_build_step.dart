// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trigger_build_step_volume/trigger_build_step_volume.dart';

class TriggerBuildStep {
  /// Allow this build step to fail without failing the entire build if and
  /// only if the exit code is one of the specified codes.
  /// If `allowFailure` is also specified, this field will take precedence.
  final List<int>? allowExitCodes;

  /// Allow this build step to fail without failing the entire build.
  /// If false, the entire build will fail if this step fails. Otherwise, the
  /// build will succeed, but this step will still have a failure status.
  /// Error information will be reported in the `failureDetail` field.
  /// `allowExitCodes` takes precedence over this field.
  final bool? allowFailure;

  /// A list of arguments that will be presented to the step when it is started.
  /// If the image used to run the step's container has an entrypoint, the args
  /// are used as arguments to that entrypoint. If the image does not define an
  /// entrypoint, the first element in args is used as the entrypoint, and the
  /// remainder will be used as arguments.
  final List<String>? args;

  /// Working directory to use when running this step's container.
  /// If this value is a relative path, it is relative to the build's working
  /// directory. If this value is absolute, it may be outside the build's working
  /// directory, in which case the contents of the path may not be persisted
  /// across build step executions, unless a <span pulumi-lang-nodejs="`volume`" pulumi-lang-dotnet="`Volume`" pulumi-lang-go="`volume`" pulumi-lang-python="`volume`" pulumi-lang-yaml="`volume`" pulumi-lang-java="`volume`">`volume`</span> for that path is specified.
  /// If the build specifies a `RepoSource` with <span pulumi-lang-nodejs="`dir`" pulumi-lang-dotnet="`Dir`" pulumi-lang-go="`dir`" pulumi-lang-python="`dir`" pulumi-lang-yaml="`dir`" pulumi-lang-java="`dir`">`dir`</span> and a step with a
  /// <span pulumi-lang-nodejs="`dir`" pulumi-lang-dotnet="`Dir`" pulumi-lang-go="`dir`" pulumi-lang-python="`dir`" pulumi-lang-yaml="`dir`" pulumi-lang-java="`dir`">`dir`</span>,
  /// which specifies an absolute path, the `RepoSource` <span pulumi-lang-nodejs="`dir`" pulumi-lang-dotnet="`Dir`" pulumi-lang-go="`dir`" pulumi-lang-python="`dir`" pulumi-lang-yaml="`dir`" pulumi-lang-java="`dir`">`dir`</span> is ignored
  /// for the step's execution.
  final String? dir;

  /// Entrypoint to be used instead of the build step image's
  /// default entrypoint.
  /// If unset, the image's default entrypoint is used
  final String? entrypoint;

  /// A list of environment variable definitions to be used when
  /// running a step.
  /// The elements are of the form "KEY=VALUE" for the environment variable
  /// "KEY" being given the value "VALUE".
  final List<String>? envs;

  /// Unique identifier for this build step, used in <span pulumi-lang-nodejs="`waitFor`" pulumi-lang-dotnet="`WaitFor`" pulumi-lang-go="`waitFor`" pulumi-lang-python="`wait_for`" pulumi-lang-yaml="`waitFor`" pulumi-lang-java="`waitFor`">`wait_for`</span> to
  /// reference this build step as a dependency.
  final String? id;

  /// The name of the container image that will run this particular build step.
  /// If the image is available in the host's Docker daemon's cache, it will be
  /// run directly. If not, the host will attempt to pull the image first, using
  /// the builder service account's credentials if necessary.
  /// The Docker daemon's cache will already have the latest versions of all of
  /// the officially supported build steps (see https://github.com/GoogleCloudPlatform/cloud-builders
  /// for images and examples).
  /// The Docker daemon will also have cached many of the layers for some popular
  /// images, like "ubuntu", "debian", but they will be refreshed at the time
  /// you attempt to use them.
  /// If you built an image in a previous build step, it will be stored in the
  /// host's Docker daemon's cache and is available to use as the name for a
  /// later build step.
  final String name;

  /// A shell script to be executed in the step.
  /// When script is provided, the user cannot specify the entrypoint or args.
  final String? script;

  /// A list of environment variables which are encrypted using
  /// a Cloud Key
  /// Management Service crypto key. These values must be specified in
  /// the build's `Secret`.
  final List<String>? secretEnvs;

  /// Time limit for executing this build step. If not defined,
  /// the step has no
  /// time limit and will be allowed to continue to run until either it
  /// completes or the build itself times out.
  final String? timeout;

  /// Output only. Stores timing information for executing this
  /// build step.
  final String? timing;

  /// List of volumes to mount into the build step.
  /// Each volume is created as an empty volume prior to execution of the
  /// build step. Upon completion of the build, volumes and their contents
  /// are discarded.
  /// Using a named volume in only one step is not valid as it is
  /// indicative of a build request with an incorrect configuration.
  /// Structure is documented below.
  final List<TriggerBuildStepVolume>? volumes;

  /// The ID(s) of the step(s) that this build step depends on.
  /// This build step will not start until all the build steps in <span pulumi-lang-nodejs="`waitFor`" pulumi-lang-dotnet="`WaitFor`" pulumi-lang-go="`waitFor`" pulumi-lang-python="`wait_for`" pulumi-lang-yaml="`waitFor`" pulumi-lang-java="`waitFor`">`wait_for`</span>
  /// have completed successfully. If <span pulumi-lang-nodejs="`waitFor`" pulumi-lang-dotnet="`WaitFor`" pulumi-lang-go="`waitFor`" pulumi-lang-python="`wait_for`" pulumi-lang-yaml="`waitFor`" pulumi-lang-java="`waitFor`">`wait_for`</span> is empty, this build step
  /// will start when all previous build steps in the `Build.Steps` list
  /// have completed successfully.
  final List<String>? waitFors;

  TriggerBuildStep({
    this.allowExitCodes,
    this.allowFailure,
    this.args,
    this.dir,
    this.entrypoint,
    this.envs,
    this.id,
    required this.name,
    this.script,
    this.secretEnvs,
    this.timeout,
    this.timing,
    this.volumes,
    this.waitFors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowExitCodesValue = allowExitCodes;
    if (allowExitCodesValue != null) {
      map['allowExitCodes'] = allowExitCodesValue;
    }
    final allowFailureValue = allowFailure;
    if (allowFailureValue != null) {
      map['allowFailure'] = allowFailureValue;
    }
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final dirValue = dir;
    if (dirValue != null) {
      map['dir'] = dirValue;
    }
    final entrypointValue = entrypoint;
    if (entrypointValue != null) {
      map['entrypoint'] = entrypointValue;
    }
    final envsValue = envs;
    if (envsValue != null) {
      map['envs'] = envsValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['name'] = name;
    final scriptValue = script;
    if (scriptValue != null) {
      map['script'] = scriptValue;
    }
    final secretEnvsValue = secretEnvs;
    if (secretEnvsValue != null) {
      map['secretEnvs'] = secretEnvsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final timingValue = timing;
    if (timingValue != null) {
      map['timing'] = timingValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] =
          Input.encodeList<TriggerBuildStepVolume, Map<String, dynamic>>(
              volumesValue, (value) => value.toMap());
    }
    final waitForsValue = waitFors;
    if (waitForsValue != null) {
      map['waitFors'] = waitForsValue;
    }
    return map;
  }

  factory TriggerBuildStep.fromMap(Map<String, dynamic> map) {
    return TriggerBuildStep(
      allowExitCodes: map['allowExitCodes'] == null
          ? null
          : (map['allowExitCodes'] as List).cast<int>(),
      allowFailure:
          map['allowFailure'] == null ? null : map['allowFailure'] as bool,
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      dir: map['dir'] == null ? null : map['dir'] as String,
      entrypoint:
          map['entrypoint'] == null ? null : map['entrypoint'] as String,
      envs: map['envs'] == null ? null : (map['envs'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      script: map['script'] == null ? null : map['script'] as String,
      secretEnvs: map['secretEnvs'] == null
          ? null
          : (map['secretEnvs'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      timing: map['timing'] == null ? null : map['timing'] as String,
      volumes: map['volumes'] == null
          ? null
          : Input.decodeList<TriggerBuildStepVolume>(
              map['volumes'],
              (value) => TriggerBuildStepVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      waitFors: map['waitFors'] == null
          ? null
          : (map['waitFors'] as List).cast<String>(),
    );
  }
}
