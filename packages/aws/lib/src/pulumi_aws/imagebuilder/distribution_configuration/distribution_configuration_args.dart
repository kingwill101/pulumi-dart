// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../distribution_configuration_distribution/distribution_configuration_distribution.dart';

/// The set of arguments for DistributionConfiguration.
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

  DistributionConfigurationArgs({
    this.description,
    required this.distributions,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['distributions'] = pulumi.Input.mapInputValue<
            List<DistributionConfigurationDistribution>,
            List<Map<String, dynamic>>>(
        distributions,
        (value) => pulumi.Input.encodeList<
            DistributionConfigurationDistribution,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DistributionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      distributions:
          pulumi.Input.asInput<List<DistributionConfigurationDistribution>>(
              map['distributions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
