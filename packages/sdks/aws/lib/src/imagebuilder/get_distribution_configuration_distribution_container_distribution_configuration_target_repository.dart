// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository {
  /// Name of the container repository where the output container image is stored.
  final pulumi.Input<String> repositoryName;
  /// Service in which the image is registered.
  final pulumi.Input<String> service;

  /// Creates a new [GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository].
  /// [repositoryName] Name of the container repository where the output container image is stored.
  /// [service] Service in which the image is registered.
  const GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryName': repositoryName,
      'service': service,
    };
  }

  factory GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository(
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

