// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_distribution.dart';

/// {@template pulumi_imagebuilder_distribution_configuration_distribution_configuration_args_doc}
/// The set of arguments for DistributionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_distribution_configuration_distribution_configuration_args_doc}
class DistributionConfigurationArgs {
  /// Description of the distribution configuration.
  final pulumi.Input<String>? description;
  /// One or more configuration blocks with distribution settings. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<DistributionConfigurationDistribution>> distributions;
  /// Name of the distribution configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the distribution configuration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DistributionConfigurationArgs].
  /// [description] Description of the distribution configuration.
  /// [distributions] One or more configuration blocks with distribution settings. Detailed below.
  /// [name] Name of the distribution configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the distribution configuration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DistributionConfigurationArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<List<DistributionConfigurationDistribution>> distributions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      distributions = pulumi.Input.asInput<List<DistributionConfigurationDistribution>>(distributions),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'distributions': pulumi.Input.mapInputValue<List<DistributionConfigurationDistribution>, List<Map<String, dynamic>>>(distributions, (value) => pulumi.Input.encodeList<DistributionConfigurationDistribution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DistributionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributions: pulumi.Output.create<List<DistributionConfigurationDistribution>>(pulumi.Input.decodeList<DistributionConfigurationDistribution>(map['distributions'], (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

