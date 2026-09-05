// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContainerDefinition.
class GetContainerDefinitionResult {
  final String? containerName;
  /// CPU limit for this container definition
  final int? cpu;
  /// Indicator if networking is disabled
  final bool? disableNetworking;
  /// Set docker labels
  final Map<String, String>? dockerLabels;
  /// Environment in use
  final Map<String, String>? environment;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Docker image in use, including the digest
  final String? image;
  /// Digest of the docker image in use
  final String? imageDigest;
  /// Memory limit for this container definition
  final int? memory;
  /// Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit
  final int? memoryReservation;
  final String? region;
  final String? taskDefinition;

  /// Creates a new [GetContainerDefinitionResult].
  /// [containerName] Optional.
  /// [cpu] CPU limit for this container definition
  /// [disableNetworking] Indicator if networking is disabled
  /// [dockerLabels] Set docker labels
  /// [environment] Environment in use
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [image] Docker image in use, including the digest
  /// [imageDigest] Digest of the docker image in use
  /// [memory] Memory limit for this container definition
  /// [memoryReservation] Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit
  /// [region] Optional.
  /// [taskDefinition] Optional.
  const GetContainerDefinitionResult({
    this.containerName,
    this.cpu,
    this.disableNetworking,
    this.dockerLabels,
    this.environment,
    this.id,
    this.image,
    this.imageDigest,
    this.memory,
    this.memoryReservation,
    this.region,
    this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'cpu': ?cpu,
      'disableNetworking': ?disableNetworking,
      'dockerLabels': ?dockerLabels,
      'environment': ?environment,
      'id': ?id,
      'image': ?image,
      'imageDigest': ?imageDigest,
      'memory': ?memory,
      'memoryReservation': ?memoryReservation,
      'region': ?region,
      'taskDefinition': ?taskDefinition,
    };
  }

  factory GetContainerDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetContainerDefinitionResult(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      disableNetworking: (() { final guardedValue = map['disableNetworking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dockerLabels: (() { final guardedValue = map['dockerLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageDigest: (() { final guardedValue = map['imageDigest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memoryReservation: (() { final guardedValue = map['memoryReservation']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      taskDefinition: (() { final guardedValue = map['taskDefinition']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
