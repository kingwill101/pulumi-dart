// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_configuration_distribution_container_distribution_configuration_target_repository.dart';

class DistributionConfigurationDistributionContainerDistributionConfiguration {
  /// Set of tags that are attached to the container distribution configuration.
  final List<String>? containerTags;
  /// Description of the container distribution configuration.
  final String? description;
  /// Configuration block with the destination repository for the container distribution configuration.
  final DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository targetRepository;

  /// Creates a new [DistributionConfigurationDistributionContainerDistributionConfiguration].
  /// [containerTags] Set of tags that are attached to the container distribution configuration.
  /// [description] Description of the container distribution configuration.
  /// [targetRepository] Configuration block with the destination repository for the container distribution configuration.
  DistributionConfigurationDistributionContainerDistributionConfiguration({
    this.containerTags,
    this.description,
    required this.targetRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerTags': ?containerTags,
      'description': ?description,
      'targetRepository': targetRepository.toMap(),
    };
  }

  factory DistributionConfigurationDistributionContainerDistributionConfiguration.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionContainerDistributionConfiguration(
      containerTags: map['containerTags'] == null ? null : (map['containerTags'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      targetRepository: DistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap((map['targetRepository'] as Map).cast<String, dynamic>()),
    );
  }
}

