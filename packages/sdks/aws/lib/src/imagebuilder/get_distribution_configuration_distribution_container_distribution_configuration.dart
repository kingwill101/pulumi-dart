// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_distribution_container_distribution_configuration_target_repository.dart';

class GetDistributionConfigurationDistributionContainerDistributionConfiguration {
  /// Set of tags that are attached to the container distribution configuration.
  final pulumi.Input<List<String>> containerTags;
  /// Description of the container distribution configuration.
  final pulumi.Input<String> description;
  /// Set of destination repositories for the container distribution configuration.
  final pulumi.Input<List<GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository>> targetRepositories;

  /// Creates a new [GetDistributionConfigurationDistributionContainerDistributionConfiguration].
  /// [containerTags] Set of tags that are attached to the container distribution configuration.
  /// [description] Description of the container distribution configuration.
  /// [targetRepositories] Set of destination repositories for the container distribution configuration.
  const GetDistributionConfigurationDistributionContainerDistributionConfiguration({
    required this.containerTags,
    required this.description,
    required this.targetRepositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerTags': containerTags,
      'description': description,
      'targetRepositories': pulumi.Input.mapInputValue<List<GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository>, List<Map<String, dynamic>>>(targetRepositories, (value) => pulumi.Input.encodeList<GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDistributionConfigurationDistributionContainerDistributionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionContainerDistributionConfiguration(
      containerTags: pulumi.Input.fromValue((map['containerTags'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      targetRepositories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository>(map['targetRepositories']!, (value) => GetDistributionConfigurationDistributionContainerDistributionConfigurationTargetRepository.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
