// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration.dart';
import 'ingestion_destination_processing_configuration.dart';
import 'ingestion_destination_timeouts.dart';

/// Input properties used for looking up and filtering IngestionDestination resources.
class IngestionDestinationState {
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String>? appBundleArn;
  /// ARN of the Ingestion Destination.
  final pulumi.Input<String>? arn;
  /// Contains information about the destination of ingested data.
  final pulumi.Input<IngestionDestinationDestinationConfiguration>? destinationConfiguration;
  /// The Amazon Resource Name (ARN) of the ingestion to use for the request.
  final pulumi.Input<String>? ingestionArn;
  /// Contains information about how ingested data is processed.
  final pulumi.Input<IngestionDestinationProcessingConfiguration>? processingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<IngestionDestinationTimeouts>? timeouts;

  /// Creates a new [IngestionDestinationState].
  /// [appBundleArn] The Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [arn] ARN of the Ingestion Destination.
  /// [destinationConfiguration] Contains information about the destination of ingested data.
  /// [ingestionArn] The Amazon Resource Name (ARN) of the ingestion to use for the request.
  /// [processingConfiguration] Contains information about how ingested data is processed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  IngestionDestinationState({
    this.appBundleArn,
    this.arn,
    this.destinationConfiguration,
    this.ingestionArn,
    this.processingConfiguration,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBundleArn': ?appBundleArn,
      'arn': ?arn,
      'destinationConfiguration': ?pulumi.Input.mapOptionalInputValue<IngestionDestinationDestinationConfiguration, Map<String, dynamic>>(destinationConfiguration, (value) => value.toMap()),
      'ingestionArn': ?ingestionArn,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<IngestionDestinationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IngestionDestinationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory IngestionDestinationState.fromMap(Map<String, dynamic> map) {
    return IngestionDestinationState(
      appBundleArn: map['appBundleArn'] == null ? null : ((map['appBundleArn'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      destinationConfiguration: map['destinationConfiguration'] == null ? null : ((IngestionDestinationDestinationConfiguration.fromMap((map['destinationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      ingestionArn: map['ingestionArn'] == null ? null : ((map['ingestionArn'] as String).input()).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : ((IngestionDestinationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((IngestionDestinationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

