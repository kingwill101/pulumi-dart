import 'package:pulumi/pulumi.dart';
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
    this.createdAt = Output.createUnknown<String>();
    this.dataCollectorId = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
