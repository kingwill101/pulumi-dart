// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_distribution.dart';

/// Result data returned by getDistributionConfiguration.
class GetDistributionConfigurationResult {
  final String arn;

  /// Date the distribution configuration was created.
  final String dateCreated;

  /// Date the distribution configuration was updated.
  final String dateUpdated;

  /// Description of the container distribution configuration.
  final String description;

  /// Set of distributions.
  final List<GetDistributionConfigurationDistribution> distributions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the distribution configuration.
  final String name;

  /// AWS Region of distribution.
  final String region;

  /// Key-value map of resource tags for the distribution configuration.
  final Map<String, String> tags;

  /// Creates a new [GetDistributionConfigurationResult].
  /// [arn] Required.
  /// [dateCreated] Date the distribution configuration was created.
  /// [dateUpdated] Date the distribution configuration was updated.
  /// [description] Description of the container distribution configuration.
  /// [distributions] Set of distributions.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the distribution configuration.
  /// [region] AWS Region of distribution.
  /// [tags] Key-value map of resource tags for the distribution configuration.
  GetDistributionConfigurationResult({
    required this.arn,
    required this.dateCreated,
    required this.dateUpdated,
    required this.description,
    required this.distributions,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['dateCreated'] = dateCreated;
    map['dateUpdated'] = dateUpdated;
    map['description'] = description;
    map['distributions'] = pulumi.Input.encodeList<
        GetDistributionConfigurationDistribution,
        Map<String, dynamic>>(distributions, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetDistributionConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationResult(
      arn: map['arn'] as String,
      dateCreated: map['dateCreated'] as String,
      dateUpdated: map['dateUpdated'] as String,
      description: map['description'] as String,
      distributions:
          pulumi.Input.decodeList<GetDistributionConfigurationDistribution>(
              map['distributions'],
              (value) => GetDistributionConfigurationDistribution.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
