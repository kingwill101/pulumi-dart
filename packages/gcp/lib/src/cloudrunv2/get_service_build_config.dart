// ignore_for_file: unused_element, unnecessary_cast

class GetServiceBuildConfig {
  /// The base image used to build the function.
  final String baseImage;

  /// Sets whether the function will receive automatic base image updates.
  final bool enableAutomaticUpdates;

  /// User-provided build-time environment variables for the function.
  final Map<String, String> environmentVariables;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  final String functionTarget;

  /// Artifact Registry URI to store the built image.
  final String imageUri;

  /// The name of the Cloud Run v2 Service.
  final String name;

  /// Service account to be used for building the container. The format of this field is 'projects/{projectId}/serviceAccounts/{serviceAccountEmail}'.
  final String serviceAccount;

  /// The Cloud Storage bucket URI where the function source code is located.
  final String sourceLocation;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is 'projects/{project}/locations/{region}/workerPools/{workerPool}' where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  final String workerPool;

  /// Creates a new [GetServiceBuildConfig].
  /// [baseImage] The base image used to build the function.
  /// [enableAutomaticUpdates] Sets whether the function will receive automatic base image updates.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [functionTarget] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  /// [imageUri] Artifact Registry URI to store the built image.
  /// [name] The name of the Cloud Run v2 Service.
  /// [serviceAccount] Service account to be used for building the container. The format of this field is 'projects/{projectId}/serviceAccounts/{serviceAccountEmail}'.
  /// [sourceLocation] The Cloud Storage bucket URI where the function source code is located.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is 'projects/{project}/locations/{region}/workerPools/{workerPool}' where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  GetServiceBuildConfig({
    required this.baseImage,
    required this.enableAutomaticUpdates,
    required this.environmentVariables,
    required this.functionTarget,
    required this.imageUri,
    required this.name,
    required this.serviceAccount,
    required this.sourceLocation,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseImage'] = baseImage;
    map['enableAutomaticUpdates'] = enableAutomaticUpdates;
    map['environmentVariables'] = environmentVariables;
    map['functionTarget'] = functionTarget;
    map['imageUri'] = imageUri;
    map['name'] = name;
    map['serviceAccount'] = serviceAccount;
    map['sourceLocation'] = sourceLocation;
    map['workerPool'] = workerPool;
    return map;
  }

  factory GetServiceBuildConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceBuildConfig(
      baseImage: map['baseImage'] as String,
      enableAutomaticUpdates: map['enableAutomaticUpdates'] as bool,
      environmentVariables:
          (map['environmentVariables'] as Map).cast<String, String>(),
      functionTarget: map['functionTarget'] as String,
      imageUri: map['imageUri'] as String,
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      sourceLocation: map['sourceLocation'] as String,
      workerPool: map['workerPool'] as String,
    );
  }
}
