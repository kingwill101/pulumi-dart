import 'package:pulumi/pulumi.dart' as pulumi;
import '../indexing_configuration_thing_group_indexing_configuration/indexing_configuration_thing_group_indexing_configuration.dart';
import '../indexing_configuration_thing_indexing_configuration/indexing_configuration_thing_indexing_configuration.dart';
import 'indexing_configuration_args.dart';

/// Managing [IoT Thing indexing](https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html).
class IndexingConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Thing group indexing configuration. See below.
  late final pulumi.Output<IndexingConfigurationThingGroupIndexingConfiguration>
      thingGroupIndexingConfiguration;

  /// Thing indexing configuration. See below.
  late final pulumi.Output<IndexingConfigurationThingIndexingConfiguration>
      thingIndexingConfiguration;

  IndexingConfiguration(
    String name, {
    IndexingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/indexingConfiguration:IndexingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.thingGroupIndexingConfiguration =
        registerOutput<IndexingConfigurationThingGroupIndexingConfiguration>(
            'thingGroupIndexingConfiguration');
    this.thingIndexingConfiguration =
        registerOutput<IndexingConfigurationThingIndexingConfiguration>(
            'thingIndexingConfiguration');
  }
}
