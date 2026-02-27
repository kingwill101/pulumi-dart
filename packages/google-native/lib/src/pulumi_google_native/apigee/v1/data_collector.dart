import 'package:pulumi/pulumi.dart' hide Config;
import 'data_collector_args.dart';

/// Creates a new data collector.
class DataCollector extends CustomResource {
  /// The time at which the data collector was created in milliseconds since the epoch.
  late final Output<String> createdAt;

  /// ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that contains only letters, numbers, and underscores.
  late final Output<String?> dataCollectorId;

  /// A description of the data collector.
  late final Output<String> description;

  /// The time at which the Data Collector was last updated in milliseconds since the epoch.
  late final Output<String> lastModifiedAt;

  /// ID of the data collector. Must begin with `dc_`.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Immutable. The type of data this data collector will collect.
  late final Output<String> type;

  DataCollector(
    String name, {
    DataCollectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:DataCollector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.dataCollectorId = registerOutput<String?>('dataCollectorId');
    this.description = registerOutput<String>('description');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.type = registerOutput<String>('type');
  }
}
