// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ingestion_destination_destination_configuration/ingestion_destination_destination_configuration.dart';
import '../ingestion_destination_processing_configuration/ingestion_destination_processing_configuration.dart';
import '../ingestion_destination_timeouts/ingestion_destination_timeouts.dart';

/// The set of arguments for IngestionDestination.
class IngestionDestinationArgs {
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String> appBundleArn;

  /// Contains information about the destination of ingested data.
  final pulumi.Input<IngestionDestinationDestinationConfiguration>
      destinationConfiguration;

  /// The Amazon Resource Name (ARN) of the ingestion to use for the request.
  final pulumi.Input<String> ingestionArn;

  /// Contains information about how ingested data is processed.
  final pulumi.Input<IngestionDestinationProcessingConfiguration>
      processingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<IngestionDestinationTimeouts>? timeouts;

  IngestionDestinationArgs({
    required this.appBundleArn,
    required this.destinationConfiguration,
    required this.ingestionArn,
    required this.processingConfiguration,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appBundleArn'] = appBundleArn;
    map['destinationConfiguration'] = pulumi.Input.mapInputValue<
            IngestionDestinationDestinationConfiguration, Map<String, dynamic>>(
        destinationConfiguration, (value) => value.toMap());
    map['ingestionArn'] = ingestionArn;
    map['processingConfiguration'] = pulumi.Input.mapInputValue<
            IngestionDestinationProcessingConfiguration, Map<String, dynamic>>(
        processingConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          IngestionDestinationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IngestionDestinationArgs.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationArgs(
      appBundleArn: pulumi.Input.asInput<String>(map['appBundleArn']),
      destinationConfiguration:
          pulumi.Input.asInput<IngestionDestinationDestinationConfiguration>(
              map['destinationConfiguration']),
      ingestionArn: pulumi.Input.asInput<String>(map['ingestionArn']),
      processingConfiguration:
          pulumi.Input.asInput<IngestionDestinationProcessingConfiguration>(
              map['processingConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<IngestionDestinationTimeouts>(
          map['timeouts']),
    );
  }
}
