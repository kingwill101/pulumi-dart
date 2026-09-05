// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_thing_group_indexing_configuration.dart';
import 'indexing_configuration_thing_indexing_configuration.dart';

/// Input properties used for looking up and filtering IndexingConfiguration resources.
class IndexingConfigurationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Thing group indexing configuration. See below.
  final pulumi.Input<IndexingConfigurationThingGroupIndexingConfiguration?>? thingGroupIndexingConfiguration;
  /// Thing indexing configuration. See below.
  final pulumi.Input<IndexingConfigurationThingIndexingConfiguration?>? thingIndexingConfiguration;

  /// Creates a new [IndexingConfigurationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingGroupIndexingConfiguration] Thing group indexing configuration. See below.
  /// [thingIndexingConfiguration] Thing indexing configuration. See below.
  const IndexingConfigurationState({
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

  factory IndexingConfigurationState.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingGroupIndexingConfiguration: (() { final guardedValue = map['thingGroupIndexingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexingConfigurationThingGroupIndexingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thingIndexingConfiguration: (() { final guardedValue = map['thingIndexingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexingConfigurationThingIndexingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
