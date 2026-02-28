// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_build_config_on_deploy_update_policy.dart';
import 'get_function_build_config_source.dart';

class GetFunctionBuildConfig {
  /// Security patches are applied automatically to the runtime without requiring
  /// the function to be redeployed.
  final List<Map<String, dynamic>> automaticUpdatePolicies;

  /// The Cloud Build name of the latest successful
  /// deployment of the function.
  final String build;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key.
  final String dockerRepository;

  /// The name of the function (as defined in source code) that will be executed.
  /// Defaults to the resource name suffix, if not specified. For backward
  /// compatibility, if function with given name is not found, then the system
  /// will try to use function named "function". For Node.js this is name of a
  /// function exported by the module specified in source_location.
  final String entryPoint;

  /// User-provided build-time environment variables for the function.
  final Map<String, String> environmentVariables;

  /// Security patches are only applied when a function is redeployed.
  final List<GetFunctionBuildConfigOnDeployUpdatePolicy> onDeployUpdatePolicies;

  /// The runtime in which to run the function. Required when deploying a new
  /// function, optional when updating an existing function.
  final String runtime;

  /// The fully-qualified name of the service account to be used for building the container.
  final String serviceAccount;

  /// The location of the function source code.
  final List<GetFunctionBuildConfigSource> sources;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  final String workerPool;

  /// Creates a new [GetFunctionBuildConfig].
  /// [automaticUpdatePolicies] Security patches are applied automatically to the runtime without requiring
  /// [build] The Cloud Build name of the latest successful
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [onDeployUpdatePolicies] Security patches are only applied when a function is redeployed.
  /// [runtime] The runtime in which to run the function. Required when deploying a new
  /// [serviceAccount] The fully-qualified name of the service account to be used for building the container.
  /// [sources] The location of the function source code.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  GetFunctionBuildConfig({
    required this.automaticUpdatePolicies,
    required this.build,
    required this.dockerRepository,
    required this.entryPoint,
    required this.environmentVariables,
    required this.onDeployUpdatePolicies,
    required this.runtime,
    required this.serviceAccount,
    required this.sources,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticUpdatePolicies'] = automaticUpdatePolicies;
    map['build'] = build;
    map['dockerRepository'] = dockerRepository;
    map['entryPoint'] = entryPoint;
    map['environmentVariables'] = environmentVariables;
    map['onDeployUpdatePolicies'] = pulumi.Input.encodeList<
        GetFunctionBuildConfigOnDeployUpdatePolicy,
        Map<String, dynamic>>(onDeployUpdatePolicies, (value) => value.toMap());
    map['runtime'] = runtime;
    map['serviceAccount'] = serviceAccount;
    map['sources'] = pulumi.Input.encodeList<GetFunctionBuildConfigSource,
        Map<String, dynamic>>(sources, (value) => value.toMap());
    map['workerPool'] = workerPool;
    return map;
  }

  factory GetFunctionBuildConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfig(
      automaticUpdatePolicies:
          (map['automaticUpdatePolicies'] as List).cast<Map<String, dynamic>>(),
      build: map['build'] as String,
      dockerRepository: map['dockerRepository'] as String,
      entryPoint: map['entryPoint'] as String,
      environmentVariables:
          (map['environmentVariables'] as Map).cast<String, String>(),
      onDeployUpdatePolicies:
          pulumi.Input.decodeList<GetFunctionBuildConfigOnDeployUpdatePolicy>(
              map['onDeployUpdatePolicies'],
              (value) => GetFunctionBuildConfigOnDeployUpdatePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      runtime: map['runtime'] as String,
      serviceAccount: map['serviceAccount'] as String,
      sources: pulumi.Input.decodeList<GetFunctionBuildConfigSource>(
          map['sources'],
          (value) => GetFunctionBuildConfigSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      workerPool: map['workerPool'] as String,
    );
  }
}
