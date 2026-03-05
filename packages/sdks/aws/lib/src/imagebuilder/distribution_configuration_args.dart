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
    this.description,
    required this.distributions,
    this.name,
    this.region,
    this.tags,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributions: pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionConfigurationDistribution>(map['distributions']!, (value) => DistributionConfigurationDistribution.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

