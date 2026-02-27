// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../indexing_configuration_thing_group_indexing_configuration/indexing_configuration_thing_group_indexing_configuration.dart';
import '../indexing_configuration_thing_indexing_configuration/indexing_configuration_thing_indexing_configuration.dart';

/// The set of arguments for IndexingConfiguration.
class IndexingConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Thing group indexing configuration. See below.
  final pulumi.Input<IndexingConfigurationThingGroupIndexingConfiguration>?
      thingGroupIndexingConfiguration;

  /// Thing indexing configuration. See below.
  final pulumi.Input<IndexingConfigurationThingIndexingConfiguration>?
      thingIndexingConfiguration;

  IndexingConfigurationArgs({
    this.region,
    this.thingGroupIndexingConfiguration,
    this.thingIndexingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final thingGroupIndexingConfigurationValue =
        thingGroupIndexingConfiguration;
    if (thingGroupIndexingConfigurationValue != null) {
      map['thingGroupIndexingConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  IndexingConfigurationThingGroupIndexingConfiguration,
                  Map<String, dynamic>>(
              thingGroupIndexingConfigurationValue, (value) => value.toMap());
    }
    final thingIndexingConfigurationValue = thingIndexingConfiguration;
    if (thingIndexingConfigurationValue != null) {
      map['thingIndexingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              IndexingConfigurationThingIndexingConfiguration,
              Map<String, dynamic>>(
          thingIndexingConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory IndexingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      thingGroupIndexingConfiguration: pulumi.Input.asOptionalInput<
              IndexingConfigurationThingGroupIndexingConfiguration>(
          map['thingGroupIndexingConfiguration']),
      thingIndexingConfiguration: pulumi.Input.asOptionalInput<
              IndexingConfigurationThingIndexingConfiguration>(
          map['thingIndexingConfiguration']),
    );
  }
}
