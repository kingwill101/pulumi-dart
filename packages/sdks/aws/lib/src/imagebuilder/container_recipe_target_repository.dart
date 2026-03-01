// ignore_for_file: unused_element, unnecessary_cast


class ContainerRecipeTargetRepository {
  /// The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  final String repositoryName;
  /// The service in which this image is registered. Valid values: `ECR`.
  final String service;

  /// Creates a new [ContainerRecipeTargetRepository].
  /// [repositoryName] The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  /// [service] The service in which this image is registered. Valid values: `ECR`.
  ContainerRecipeTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryName': repositoryName,
      'service': service,
    };
  }

  factory ContainerRecipeTargetRepository.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeTargetRepository(
      repositoryName: map['repositoryName'] as String,
      service: map['service'] as String,
    );
  }
}

