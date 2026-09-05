// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_destination_configuration.dart';
import 'ingestion_destination_processing_configuration.dart';
import 'ingestion_destination_timeouts.dart';

/// Input properties used for looking up and filtering IngestionDestination resources.
class IngestionDestinationState {
  /// ARN of the app bundle to use for the request.
  final pulumi.Input<String?>? appBundleArn;
  /// ARN of the Ingestion Destination.
  final pulumi.Input<String?>? arn;
  /// Configuration for the destination of ingested data. See `destinationConfiguration` Block below.
  final pulumi.Input<IngestionDestinationDestinationConfiguration?>? destinationConfiguration;
  /// ARN of the ingestion to use for the request.
  final pulumi.Input<String?>? ingestionArn;
  /// Configuration for how ingested data is processed. See `processingConfiguration` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<IngestionDestinationProcessingConfiguration?>? processingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<IngestionDestinationTimeouts?>? timeouts;

  /// Creates a new [IngestionDestinationState].
  /// [appBundleArn] ARN of the app bundle to use for the request.
  /// [arn] ARN of the Ingestion Destination.
  /// [destinationConfiguration] Configuration for the destination of ingested data. See `destinationConfiguration` Block below.
  /// [ingestionArn] ARN of the ingestion to use for the request.
  /// [processingConfiguration] Configuration for how ingested data is processed. See `processingConfiguration` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const IngestionDestinationState({
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
      appBundleArn: (() { final guardedValue = map['appBundleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfiguration: (() { final guardedValue = map['destinationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngestionDestinationDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingestionArn: (() { final guardedValue = map['ingestionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngestionDestinationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngestionDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
