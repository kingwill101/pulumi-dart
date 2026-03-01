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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? dateUpdated,
    pulumi.Output<String>? description,
    pulumi.Output<List<DistributionConfigurationDistribution>>? distributions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      dateUpdated = pulumi.Input.asOptionalInput<String>(dateUpdated),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributions = pulumi.Input.asOptionalInput<List<DistributionConfigurationDistribution>>(distributions),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      dateUpdated: map['dateUpdated'] == null ? null : pulumi.Output.create<String>(map['dateUpdated'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributions: map['distributions'] == null ? null : pulumi.Output.create<List<DistributionConfigurationDistribution>>(pulumi.Input.decodeList<DistributionConfigurationDistribution>(map['distributions'], (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

