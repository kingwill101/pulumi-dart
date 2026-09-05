// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_distribution.dart';

/// Result data returned by getDistributionConfiguration.
class GetDistributionConfigurationResult {
  final String? arn;
  /// Date the distribution configuration was created.
  final String? dateCreated;
  /// Date the distribution configuration was updated.
  final String? dateUpdated;
  /// Description of the container distribution configuration.
  final String? description;
  /// Set of distributions.
  final List<GetDistributionConfigurationDistribution>? distributions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the distribution configuration.
  final String? name;
  /// AWS Region of distribution.
  final String? region;
  /// Key-value map of resource tags for the distribution configuration.
  final Map<String, String>? tags;

  /// Creates a new [GetDistributionConfigurationResult].
  /// [arn] Optional.
  /// [dateCreated] Date the distribution configuration was created.
  /// [dateUpdated] Date the distribution configuration was updated.
  /// [description] Description of the container distribution configuration.
  /// [distributions] Set of distributions.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the distribution configuration.
  /// [region] AWS Region of distribution.
  /// [tags] Key-value map of resource tags for the distribution configuration.
  const GetDistributionConfigurationResult({
    this.arn,
    this.dateCreated,
    this.dateUpdated,
    this.description,
    this.distributions,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dateCreated': ?dateCreated,
      'dateUpdated': ?dateUpdated,
      'description': ?description,
      'distributions': ?(() { final guardedValue = distributions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDistributionConfigurationDistribution, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDistributionConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateUpdated: (() { final guardedValue = map['dateUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributions: (() { final guardedValue = map['distributions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDistributionConfigurationDistribution>(guardedValue, (value) => GetDistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
