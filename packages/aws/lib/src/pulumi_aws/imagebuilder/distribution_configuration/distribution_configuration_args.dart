// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_configuration_distribution/distribution_configuration_distribution.dart';

/// The set of arguments for DistributionConfiguration.
class DistributionConfigurationArgs {
  /// Description of the distribution configuration.
  final Input<String>? description;

  /// One or more configuration blocks with distribution settings. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<List<DistributionConfigurationDistribution>> distributions;

  /// Name of the distribution configuration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the distribution configuration. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    map['distributions'] = Input.mapInputValue<
            List<DistributionConfigurationDistribution>,
            List<Map<String, dynamic>>>(
        distributions,
        (value) => Input.encodeList<DistributionConfigurationDistribution,
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
      description: Input.asOptionalInput<String>(map['description']),
      distributions: Input.asInput<List<DistributionConfigurationDistribution>>(
          map['distributions']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
