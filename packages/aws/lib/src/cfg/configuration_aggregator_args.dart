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
  ConfigurationAggregatorArgs({
    ConfigurationAggregatorAccountAggregationSource? accountAggregationSource,
    String? name,
    ConfigurationAggregatorOrganizationAggregationSource? organizationAggregationSource,
    String? region,
    Map<String, String>? tags,
  }) :
      accountAggregationSource = pulumi.Input.asOptionalInput<ConfigurationAggregatorAccountAggregationSource>(accountAggregationSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationAggregationSource = pulumi.Input.asOptionalInput<ConfigurationAggregatorOrganizationAggregationSource>(organizationAggregationSource),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountAggregationSource: map['accountAggregationSource'] == null ? null : ConfigurationAggregatorAccountAggregationSource.fromMap((map['accountAggregationSource'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      organizationAggregationSource: map['organizationAggregationSource'] == null ? null : ConfigurationAggregatorOrganizationAggregationSource.fromMap((map['organizationAggregationSource'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

