// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_aggregator_account_aggregation_source/configuration_aggregator_account_aggregation_source.dart';
import '../configuration_aggregator_organization_aggregation_source/configuration_aggregator_organization_aggregation_source.dart';

/// The set of arguments for ConfigurationAggregator.
class ConfigurationAggregatorArgs {
  /// The account(s) to aggregate config data from as documented below.
  final Input<ConfigurationAggregatorAccountAggregationSource>?
      accountAggregationSource;

  /// The name of the configuration aggregator.
  final Input<String>? name;

  /// The organization to aggregate config data from as documented below.
  final Input<ConfigurationAggregatorOrganizationAggregationSource>?
      organizationAggregationSource;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Either `account_aggregation_source` or `organization_aggregation_source` must be specified.
  final Input<Map<String, String>>? tags;

  ConfigurationAggregatorArgs({
    this.accountAggregationSource,
    this.name,
    this.organizationAggregationSource,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountAggregationSourceValue = accountAggregationSource;
    if (accountAggregationSourceValue != null) {
      map['accountAggregationSource'] = Input.mapOptionalInputValue<
              ConfigurationAggregatorAccountAggregationSource,
              Map<String, dynamic>>(
          accountAggregationSourceValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final organizationAggregationSourceValue = organizationAggregationSource;
    if (organizationAggregationSourceValue != null) {
      map['organizationAggregationSource'] = Input.mapOptionalInputValue<
              ConfigurationAggregatorOrganizationAggregationSource,
              Map<String, dynamic>>(
          organizationAggregationSourceValue, (value) => value.toMap());
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

  factory ConfigurationAggregatorArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationAggregatorArgs(
      accountAggregationSource: Input.asOptionalInput<
              ConfigurationAggregatorAccountAggregationSource>(
          map['accountAggregationSource']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationAggregationSource: Input.asOptionalInput<
              ConfigurationAggregatorOrganizationAggregationSource>(
          map['organizationAggregationSource']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
