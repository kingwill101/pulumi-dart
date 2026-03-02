// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_thing_group_indexing_configuration.dart';
import 'indexing_configuration_thing_indexing_configuration.dart';

/// {@template pulumi_iot_indexing_configuration_indexing_configuration_args_doc}
/// The set of arguments for IndexingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_iot_indexing_configuration_indexing_configuration_args_doc}
class IndexingConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Thing group indexing configuration. See below.
  final pulumi.Input<IndexingConfigurationThingGroupIndexingConfiguration>? thingGroupIndexingConfiguration;
  /// Thing indexing configuration. See below.
  final pulumi.Input<IndexingConfigurationThingIndexingConfiguration>? thingIndexingConfiguration;

  /// Creates a new [IndexingConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingGroupIndexingConfiguration] Thing group indexing configuration. See below.
  /// [thingIndexingConfiguration] Thing indexing configuration. See below.
  IndexingConfigurationArgs({
    this.region,
    this.thingGroupIndexingConfiguration,
    this.thingIndexingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'thingGroupIndexingConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexingConfigurationThingGroupIndexingConfiguration, Map<String, dynamic>>(thingGroupIndexingConfiguration, (value) => value.toMap()),
      'thingIndexingConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexingConfigurationThingIndexingConfiguration, Map<String, dynamic>>(thingIndexingConfiguration, (value) => value.toMap()),
    };
  }

  factory IndexingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      thingGroupIndexingConfiguration: map['thingGroupIndexingConfiguration'] == null ? null : (IndexingConfigurationThingGroupIndexingConfiguration.fromMap((map['thingGroupIndexingConfiguration'] as Map).cast<String, dynamic>())).input(),
      thingIndexingConfiguration: map['thingIndexingConfiguration'] == null ? null : (IndexingConfigurationThingIndexingConfiguration.fromMap((map['thingIndexingConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

