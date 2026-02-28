// ignore_for_file: unused_element, unnecessary_cast

class ServiceBuildConfig {
  /// The base image used to build the function.
  final String? baseImage;

  /// Sets whether the function will receive automatic base image updates.
  final bool? enableAutomaticUpdates;

  /// User-provided build-time environment variables for the function.
  final Map<String, String>? environmentVariables;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  final String? functionTarget;

  /// Artifact Registry URI to store the built image.
  final String? imageUri;

  /// (Output)
  /// The Cloud Build name of the latest successful deployment of the function.
  final String? name;

  /// Service account to be used for building the container. The format of this field is `projects/{projectId}/serviceAccounts/{serviceAccountEmail}`.
  final String? serviceAccount;

  /// The Cloud Storage bucket URI where the function source code is located.
  final String? sourceLocation;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  final String? workerPool;

  /// Creates a new [ServiceBuildConfig].
  /// [baseImage] The base image used to build the function.
  /// [enableAutomaticUpdates] Sets whether the function will receive automatic base image updates.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [functionTarget] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  /// [imageUri] Artifact Registry URI to store the built image.
  /// [name] (Output)
  /// [serviceAccount] Service account to be used for building the container. The format of this field is `projects/{projectId}/serviceAccounts/{serviceAccountEmail}`.
  /// [sourceLocation] The Cloud Storage bucket URI where the function source code is located.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  ServiceBuildConfig({
    this.baseImage,
    this.enableAutomaticUpdates,
    this.environmentVariables,
    this.functionTarget,
    this.imageUri,
    this.name,
    this.serviceAccount,
    this.sourceLocation,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseImageValue = baseImage;
    if (baseImageValue != null) {
      map['baseImage'] = baseImageValue;
    }
    final enableAutomaticUpdatesValue = enableAutomaticUpdates;
    if (enableAutomaticUpdatesValue != null) {
      map['enableAutomaticUpdates'] = enableAutomaticUpdatesValue;
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final functionTargetValue = functionTarget;
    if (functionTargetValue != null) {
      map['functionTarget'] = functionTargetValue;
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sourceLocationValue = sourceLocation;
    if (sourceLocationValue != null) {
      map['sourceLocation'] = sourceLocationValue;
    }
    final workerPoolValue = workerPool;
    if (workerPoolValue != null) {
      map['workerPool'] = workerPoolValue;
    }
    return map;
  }

  factory ServiceBuildConfig.fromMap(Map<String, dynamic> map) {
    return ServiceBuildConfig(
      baseImage: map['baseImage'] == null ? null : map['baseImage'] as String,
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null
          ? null
          : map['enableAutomaticUpdates'] as bool,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      functionTarget: map['functionTarget'] == null
          ? null
          : map['functionTarget'] as String,
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      sourceLocation: map['sourceLocation'] == null
          ? null
          : map['sourceLocation'] as String,
      workerPool:
          map['workerPool'] == null ? null : map['workerPool'] as String,
    );
  }
}
