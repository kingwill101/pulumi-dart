// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_aggregator_account_aggregation_source.dart';
import 'configuration_aggregator_organization_aggregation_source.dart';

/// {@template pulumi_cfg_configuration_aggregator_configuration_aggregator_args_doc}
/// The set of arguments for ConfigurationAggregator.
/// {@endtemplate}
/// {@macro pulumi_cfg_configuration_aggregator_configuration_aggregator_args_doc}
class ConfigurationAggregatorArgs {
  /// The account(s) to aggregate config data from as documented below.
  final pulumi.Input<ConfigurationAggregatorAccountAggregationSource>? accountAggregationSource;
  /// The name of the configuration aggregator.
  final pulumi.Input<String>? name;
  /// The organization to aggregate config data from as documented below.
  final pulumi.Input<ConfigurationAggregatorOrganizationAggregationSource>? organizationAggregationSource;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Either `account_aggregation_source` or `organization_aggregation_source` must be specified.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationAggregatorArgs].
  /// [accountAggregationSource] The account(s) to aggregate config data from as documented below.
  /// [name] The name of the configuration aggregator.
  /// [organizationAggregationSource] The organization to aggregate config data from as documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ConfigurationAggregatorArgs({
    this.accountAggregationSource,
    this.name,
    this.organizationAggregationSource,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAggregationSource': ?pulumi.Input.mapOptionalInputValue<ConfigurationAggregatorAccountAggregationSource, Map<String, dynamic>>(accountAggregationSource, (value) => value.toMap()),
      'name': ?name,
      'organizationAggregationSource': ?pulumi.Input.mapOptionalInputValue<ConfigurationAggregatorOrganizationAggregationSource, Map<String, dynamic>>(organizationAggregationSource, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ConfigurationAggregatorArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationAggregatorArgs(
      accountAggregationSource: (() { final guardedValue = map['accountAggregationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationAggregatorAccountAggregationSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationAggregationSource: (() { final guardedValue = map['organizationAggregationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationAggregatorOrganizationAggregationSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

