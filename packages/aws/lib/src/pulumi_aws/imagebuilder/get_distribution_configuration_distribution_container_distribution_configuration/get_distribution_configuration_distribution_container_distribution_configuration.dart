// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_distribution_configuration_distribution_container_distribution_configuration_target_repository/get_distribution_configuration_distribution_container_distribution_configuration_target_repository.dart';

class GetDistributionConfigurationDistributionContainerDistributionConfiguration {
  /// Set of tags that are attached to the container distribution configuration.
  final List<String> containerTags;

  /// Description of the container distribution configuration.
  final String description;

  /// Set of destination repositories for the container distribution configuration.
  final List<
          GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository>
      targetRepositories;

  GetDistributionConfigurationDistributionContainerDistributionConfiguration({
    required this.containerTags,
    required this.description,
    required this.targetRepositories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerTags'] = containerTags;
    map['description'] = description;
    map['targetRepositories'] = pulumi.Input.encodeList<
        GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository,
        Map<String, dynamic>>(targetRepositories, (value) => value.toMap());
    return map;
  }

  factory GetDistributionConfigurationDistributionContainerDistributionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionContainerDistributionConfiguration(
      containerTags: (map['containerTags'] as List).cast<String>(),
      description: map['description'] as String,
      targetRepositories: pulumi.Input.decodeList<
              GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository>(
          map['targetRepositories'],
          (value) =>
              GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
