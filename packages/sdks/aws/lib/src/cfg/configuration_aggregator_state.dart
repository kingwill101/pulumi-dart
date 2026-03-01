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
    pulumi.Output<ConfigurationAggregatorAccountAggregationSource>? accountAggregationSource,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<ConfigurationAggregatorOrganizationAggregationSource>? organizationAggregationSource,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accountAggregationSource = pulumi.Input.asOptionalInput<ConfigurationAggregatorAccountAggregationSource>(accountAggregationSource),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationAggregationSource = pulumi.Input.asOptionalInput<ConfigurationAggregatorOrganizationAggregationSource>(organizationAggregationSource),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accountAggregationSource: map['accountAggregationSource'] == null ? null : pulumi.Output.create<ConfigurationAggregatorAccountAggregationSource>(ConfigurationAggregatorAccountAggregationSource.fromMap((map['accountAggregationSource'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationAggregationSource: map['organizationAggregationSource'] == null ? null : pulumi.Output.create<ConfigurationAggregatorOrganizationAggregationSource>(ConfigurationAggregatorOrganizationAggregationSource.fromMap((map['organizationAggregationSource'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

