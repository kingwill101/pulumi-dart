// ignore_for_file: unused_element, unnecessary_cast

class GetContainerRecipeTargetRepository {
  /// Name of the container repository where the output container image is stored. The name is prefixed by the repository location.
  final String repositoryName;

  /// Service in which this image is registered.
  final String service;

  GetContainerRecipeTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryName'] = repositoryName;
    map['service'] = service;
    return map;
  }

  factory GetContainerRecipeTargetRepository.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeTargetRepository(
      repositoryName: map['repositoryName'] as String,
      service: map['service'] as String,
    );
  }
}
