// ignore_for_file: unused_element, unnecessary_cast

class DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository {
  /// The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  final String repositoryName;

  /// The service in which this image is registered. Valid values: `ECR`.
  final String service;

  /// Creates a new [DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository].
  /// [repositoryName] The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  /// [service] The service in which this image is registered. Valid values: `ECR`.
  DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryName'] = repositoryName;
    map['service'] = service;
    return map;
  }

  factory DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository(
      repositoryName: map['repositoryName'] as String,
      service: map['service'] as String,
    );
  }
}
