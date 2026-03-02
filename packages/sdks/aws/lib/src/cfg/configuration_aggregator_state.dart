// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_aggregator_account_aggregation_source.dart';
import 'configuration_aggregator_organization_aggregation_source.dart';

/// Input properties used for looking up and filtering ConfigurationAggregator resources.
class ConfigurationAggregatorState {
  /// The account(s) to aggregate config data from as documented below.
  final pulumi.Input<ConfigurationAggregatorAccountAggregationSource>? accountAggregationSource;
  /// The ARN of the aggregator
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ConfigurationAggregatorState].
  /// [accountAggregationSource] The account(s) to aggregate config data from as documented below.
  /// [arn] The ARN of the aggregator
  /// [name] The name of the configuration aggregator.
  /// [organizationAggregationSource] The organization to aggregate config data from as documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ConfigurationAggregatorState({
    this.accountAggregationSource,
    this.arn,
    this.name,
    this.organizationAggregationSource,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAggregationSource': ?pulumi.Input.mapOptionalInputValue<ConfigurationAggregatorAccountAggregationSource, Map<String, dynamic>>(accountAggregationSource, (value) => value.toMap()),
      'arn': ?arn,
      'name': ?name,
      'organizationAggregationSource': ?pulumi.Input.mapOptionalInputValue<ConfigurationAggregatorOrganizationAggregationSource, Map<String, dynamic>>(organizationAggregationSource, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ConfigurationAggregatorState.fromMap(Map<String, dynamic> map) {
    return ConfigurationAggregatorState(
      accountAggregationSource: map['accountAggregationSource'] == null ? null : ((ConfigurationAggregatorAccountAggregationSource.fromMap((map['accountAggregationSource']! as Map).cast<String, dynamic>())).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      organizationAggregationSource: map['organizationAggregationSource'] == null ? null : ((ConfigurationAggregatorOrganizationAggregationSource.fromMap((map['organizationAggregationSource']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

