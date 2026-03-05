// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_distribution.dart';

/// Input properties used for looking up and filtering DistributionConfiguration resources.
class DistributionConfigurationState {
  /// (Required) Amazon Resource Name (ARN) of the distribution configuration.
  final pulumi.Input<String>? arn;
  /// Date the distribution configuration was created.
  final pulumi.Input<String>? dateCreated;
  /// Date the distribution configuration was updated.
  final pulumi.Input<String>? dateUpdated;
  /// Description of the distribution configuration.
  final pulumi.Input<String>? description;
  /// One or more configuration blocks with distribution settings. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<DistributionConfigurationDistribution>>? distributions;
  /// Name of the distribution configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the distribution configuration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DistributionConfigurationState].
  /// [arn] (Required) Amazon Resource Name (ARN) of the distribution configuration.
  /// [dateCreated] Date the distribution configuration was created.
  /// [dateUpdated] Date the distribution configuration was updated.
  /// [description] Description of the distribution configuration.
  /// [distributions] One or more configuration blocks with distribution settings. Detailed below.
  /// [name] Name of the distribution configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the distribution configuration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DistributionConfigurationState({
    this.arn,
    this.dateCreated,
    this.dateUpdated,
    this.description,
    this.distributions,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dateCreated': ?dateCreated,
      'dateUpdated': ?dateUpdated,
      'description': ?description,
      'distributions': ?pulumi.Input.mapOptionalInputValue<List<DistributionConfigurationDistribution>, List<Map<String, dynamic>>>(distributions, (value) => pulumi.Input.encodeList<DistributionConfigurationDistribution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DistributionConfigurationState.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dateUpdated: (() { final guardedValue = map['dateUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributions: (() { final guardedValue = map['distributions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionConfigurationDistribution>(guardedValue, (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

