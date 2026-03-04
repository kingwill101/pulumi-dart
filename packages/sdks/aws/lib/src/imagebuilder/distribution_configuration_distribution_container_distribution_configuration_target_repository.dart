// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository {
  /// The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  final pulumi.Input<String> repositoryName;

  /// The service in which this image is registered. Valid values: `ECR`.
  final pulumi.Input<String> service;

  /// Creates a new [DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository].
  /// [repositoryName] The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
  /// [service] The service in which this image is registered. Valid values: `ECR`.
  DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryName': repositoryName,
      'service': service,
    };
  }

  factory DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository(
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
