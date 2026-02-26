// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository {
  /// Name of the container repository where the output container image is stored.
  final String repositoryName;

  /// Service in which the image is registered.
  final String service;

  GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryName'] = repositoryName;
    map['service'] = service;
    return map;
  }

  factory GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository(
      repositoryName: map['repositoryName'] as String,
      service: map['service'] as String,
    );
  }
}
