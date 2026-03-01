// ignore_for_file: unused_element, unnecessary_cast

import 'build_config_docker_registry_cloudfunctions_v2alpha.dart';
import 'source_cloudfunctions_v2alpha.dart';

/// Describes the Build step of the function that builds a container from the given source.
class BuildConfigCloudfunctionsV2alpha {
  /// Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  final BuildConfigDockerRegistryCloudfunctionsV2alpha? dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. If unspecified, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  final String? dockerRepository;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  final String? entryPoint;

  /// User-provided build-time environment variables for the function
  final Map<String, String>? environmentVariables;

  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  final String? runtime;

  /// The location of the function source code.
  final SourceCloudfunctionsV2alpha? source;

  /// An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  final String? sourceToken;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (service-@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role Cloud Build Custom Workers Builder (roles/cloudbuild.customworkers.builder) in the project.
  final String? workerPool;

  /// Creates a new [BuildConfigCloudfunctionsV2alpha].
  /// [dockerRegistry] Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. If unspecified, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  /// [environmentVariables] User-provided build-time environment variables for the function
  /// [runtime] The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  /// [source] The location of the function source code.
  /// [sourceToken] An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (service-@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role Cloud Build Custom Workers Builder (roles/cloudbuild.customworkers.builder) in the project.
  BuildConfigCloudfunctionsV2alpha({
    this.dockerRegistry,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.runtime,
    this.source,
    this.sourceToken,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerRegistry': ?dockerRegistry == null ? null : dockerRegistry!.value,
      'dockerRepository': ?dockerRepository,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'runtime': ?runtime,
      'source': ?source == null ? null : source!.toMap(),
      'sourceToken': ?sourceToken,
      'workerPool': ?workerPool,
    };
  }

  factory BuildConfigCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return BuildConfigCloudfunctionsV2alpha(
      dockerRegistry: map['dockerRegistry'] == null
          ? null
          : BuildConfigDockerRegistryCloudfunctionsV2alpha.fromValue(
              map['dockerRegistry'] as String,
            ),
      dockerRepository: map['dockerRepository'] == null
          ? null
          : map['dockerRepository'] as String,
      entryPoint: map['entryPoint'] == null
          ? null
          : map['entryPoint'] as String,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
      source: map['source'] == null
          ? null
          : SourceCloudfunctionsV2alpha.fromMap(
              (map['source'] as Map).cast<String, dynamic>(),
            ),
      sourceToken: map['sourceToken'] == null
          ? null
          : map['sourceToken'] as String,
      workerPool: map['workerPool'] == null
          ? null
          : map['workerPool'] as String,
    );
  }
}
