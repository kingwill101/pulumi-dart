import 'package:pulumi/pulumi.dart' as pulumi;
import '../ingestion_destination_destination_configuration/ingestion_destination_destination_configuration.dart';
import '../ingestion_destination_processing_configuration/ingestion_destination_processing_configuration.dart';
import '../ingestion_destination_timeouts/ingestion_destination_timeouts.dart';
import 'ingestion_destination_args.dart';

/// Resource for managing an AWS AppFabric Ingestion Destination.
///
/// ## Example Usage
///
/// ### Basic Usage
class IngestionDestination extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;

  /// ARN of the Ingestion Destination.
  late final pulumi.Output<String> arn;

  /// Contains information about the destination of ingested data.
  late final pulumi.Output<IngestionDestinationDestinationConfiguration>
      destinationConfiguration;

  /// The Amazon Resource Name (ARN) of the ingestion to use for the request.
  late final pulumi.Output<String> ingestionArn;

  /// Contains information about how ingested data is processed.
  late final pulumi.Output<IngestionDestinationProcessingConfiguration>
      processingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<IngestionDestinationTimeouts?> timeouts;

  IngestionDestination(
    String name, {
    IngestionDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/ingestionDestination:IngestionDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.arn = registerOutput<String>('arn');
    this.destinationConfiguration =
        registerOutput<IngestionDestinationDestinationConfiguration>(
            'destinationConfiguration');
    this.ingestionArn = registerOutput<String>('ingestionArn');
    this.processingConfiguration =
        registerOutput<IngestionDestinationProcessingConfiguration>(
            'processingConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<IngestionDestinationTimeouts?>('timeouts');
  }
}
