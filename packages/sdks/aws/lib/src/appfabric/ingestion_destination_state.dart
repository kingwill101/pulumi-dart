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
    pulumi.Output<String>? appBundleArn,
    pulumi.Output<String>? arn,
    pulumi.Output<IngestionDestinationDestinationConfiguration>? destinationConfiguration,
    pulumi.Output<String>? ingestionArn,
    pulumi.Output<IngestionDestinationProcessingConfiguration>? processingConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<IngestionDestinationTimeouts>? timeouts,
  }) :
      appBundleArn = pulumi.Input.asOptionalInput<String>(appBundleArn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destinationConfiguration = pulumi.Input.asOptionalInput<IngestionDestinationDestinationConfiguration>(destinationConfiguration),
      ingestionArn = pulumi.Input.asOptionalInput<String>(ingestionArn),
      processingConfiguration = pulumi.Input.asOptionalInput<IngestionDestinationProcessingConfiguration>(processingConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<IngestionDestinationTimeouts>(timeouts);

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
      appBundleArn: map['appBundleArn'] == null ? null : pulumi.Output.create<String>(map['appBundleArn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destinationConfiguration: map['destinationConfiguration'] == null ? null : pulumi.Output.create<IngestionDestinationDestinationConfiguration>(IngestionDestinationDestinationConfiguration.fromMap((map['destinationConfiguration'] as Map).cast<String, dynamic>())),
      ingestionArn: map['ingestionArn'] == null ? null : pulumi.Output.create<String>(map['ingestionArn'] as String),
      processingConfiguration: map['processingConfiguration'] == null ? null : pulumi.Output.create<IngestionDestinationProcessingConfiguration>(IngestionDestinationProcessingConfiguration.fromMap((map['processingConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<IngestionDestinationTimeouts>(IngestionDestinationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

