// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContainerDefinition.
class GetContainerDefinitionResult {
  final String containerName;
  /// CPU limit for this container definition
  final int cpu;
  /// Indicator if networking is disabled
  final bool disableNetworking;
  /// Set docker labels
  final Map<String, String> dockerLabels;
  /// Environment in use
  final Map<String, String> environment;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Docker image in use, including the digest
  final String image;
  /// Digest of the docker image in use
  final String imageDigest;
  /// Memory limit for this container definition
  final int memory;
  /// Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit
  final int memoryReservation;
  final String region;
  final String taskDefinition;

  /// Creates a new [GetContainerDefinitionResult].
  /// [containerName] Required.
  /// [cpu] CPU limit for this container definition
  /// [disableNetworking] Indicator if networking is disabled
  /// [dockerLabels] Set docker labels
  /// [environment] Environment in use
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] Docker image in use, including the digest
  /// [imageDigest] Digest of the docker image in use
  /// [memory] Memory limit for this container definition
  /// [memoryReservation] Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit
  /// [region] Required.
  /// [taskDefinition] Required.
  const GetContainerDefinitionResult({
    required this.containerName,
    required this.cpu,
    required this.disableNetworking,
    required this.dockerLabels,
    required this.environment,
    required this.id,
    required this.image,
    required this.imageDigest,
    required this.memory,
    required this.memoryReservation,
    required this.region,
    required this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'cpu': cpu,
      'disableNetworking': disableNetworking,
      'dockerLabels': dockerLabels,
      'environment': environment,
      'id': id,
      'image': image,
      'imageDigest': imageDigest,
      'memory': memory,
      'memoryReservation': memoryReservation,
      'region': region,
      'taskDefinition': taskDefinition,
    };
  }

  factory GetContainerDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetContainerDefinitionResult(
      containerName: map['containerName'] as String,
      cpu: map['cpu'] as int,
      disableNetworking: map['disableNetworking'] as bool,
      dockerLabels: (map['dockerLabels'] as Map).cast<String, String>(),
      environment: (map['environment'] as Map).cast<String, String>(),
      id: map['id'] as String,
      image: map['image'] as String,
      imageDigest: map['imageDigest'] as String,
      memory: map['memory'] as int,
      memoryReservation: map['memoryReservation'] as int,
      region: map['region'] as String,
      taskDefinition: map['taskDefinition'] as String,
    );
  }
}
