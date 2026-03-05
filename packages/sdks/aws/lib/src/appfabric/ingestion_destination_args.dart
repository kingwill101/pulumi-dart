// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration.dart';
import 'ingestion_destination_processing_configuration.dart';
import 'ingestion_destination_timeouts.dart';

/// {@template pulumi_appfabric_ingestion_destination_ingestion_destination_args_doc}
/// The set of arguments for IngestionDestination.
/// {@endtemplate}
/// {@macro pulumi_appfabric_ingestion_destination_ingestion_destination_args_doc}
class IngestionDestinationArgs {
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String> appBundleArn;
  /// Contains information about the destination of ingested data.
  final pulumi.Input<IngestionDestinationDestinationConfiguration> destinationConfiguration;
  /// The Amazon Resource Name (ARN) of the ingestion to use for the request.
  final pulumi.Input<String> ingestionArn;
  /// Contains information about how ingested data is processed.
  final pulumi.Input<IngestionDestinationProcessingConfiguration> processingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<IngestionDestinationTimeouts>? timeouts;

  /// Creates a new [IngestionDestinationArgs].
  /// [appBundleArn] The Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [destinationConfiguration] Contains information about the destination of ingested data.
  /// [ingestionArn] The Amazon Resource Name (ARN) of the ingestion to use for the request.
  /// [processingConfiguration] Contains information about how ingested data is processed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
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
    return <String, dynamic>{
      'appBundleArn': appBundleArn,
      'destinationConfiguration': pulumi.Input.mapInputValue<IngestionDestinationDestinationConfiguration, Map<String, dynamic>>(destinationConfiguration, (value) => value.toMap()),
      'ingestionArn': ingestionArn,
      'processingConfiguration': pulumi.Input.mapInputValue<IngestionDestinationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IngestionDestinationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationArgs.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationArgs(
      appBundleArn: pulumi.Input.fromValue(map['appBundleArn'] as String),
      destinationConfiguration: pulumi.Input.fromValue(IngestionDestinationDestinationConfiguration.fromMap((map['destinationConfiguration']! as Map).cast<String, dynamic>())),
      ingestionArn: pulumi.Input.fromValue(map['ingestionArn'] as String),
      processingConfiguration: pulumi.Input.fromValue(IngestionDestinationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngestionDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

