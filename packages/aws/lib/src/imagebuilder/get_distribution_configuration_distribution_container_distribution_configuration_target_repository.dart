// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository {
  /// Name of the container repository where the output container image is stored.
  final String repositoryName;

  /// Service in which the image is registered.
  final String service;

  /// Creates a new [GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository].
  /// [repositoryName] Name of the container repository where the output container image is stored.
  /// [service] Service in which the image is registered.
  GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryName': repositoryName,
      'service': service,
    };
  }

  factory GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository(
      repositoryName: map['repositoryName'] as String,
      service: map['service'] as String,
    );
  }
}
