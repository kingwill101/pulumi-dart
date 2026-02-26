// ignore_for_file: unused_element, unnecessary_cast

class ContainerRecipeTargetRepository {
  /// The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  final String repositoryName;

  /// The service in which this image is registered. Valid values: `ECR`.
  final String service;

  ContainerRecipeTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryName'] = repositoryName;
    map['service'] = service;
    return map;
  }

  factory ContainerRecipeTargetRepository.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeTargetRepository(
      repositoryName: map['repositoryName'] as String,
      service: map['service'] as String,
    );
  }
}
