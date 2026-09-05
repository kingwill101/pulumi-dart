// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_aggregator_account_aggregation_source.dart';
import 'configuration_aggregator_organization_aggregation_source.dart';

/// Input properties used for looking up and filtering ConfigurationAggregator resources.
class ConfigurationAggregatorState {
  /// The account(s) to aggregate config data from as documented below.
  final pulumi.Input<ConfigurationAggregatorAccountAggregationSource?>? accountAggregationSource;
  /// The ARN of the aggregator
  final pulumi.Input<String?>? arn;
  /// The name of the configuration aggregator.
  final pulumi.Input<String?>? name;
  /// The organization to aggregate config data from as documented below.
  final pulumi.Input<ConfigurationAggregatorOrganizationAggregationSource?>? organizationAggregationSource;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Either `accountAggregationSource` or `organizationAggregationSource` must be specified.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ConfigurationAggregatorState].
  /// [accountAggregationSource] The account(s) to aggregate config data from as documented below.
  /// [arn] The ARN of the aggregator
  /// [name] The name of the configuration aggregator.
  /// [organizationAggregationSource] The organization to aggregate config data from as documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ConfigurationAggregatorState({
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
      accountAggregationSource: (() { final guardedValue = map['accountAggregationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationAggregatorAccountAggregationSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationAggregationSource: (() { final guardedValue = map['organizationAggregationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationAggregatorOrganizationAggregationSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
