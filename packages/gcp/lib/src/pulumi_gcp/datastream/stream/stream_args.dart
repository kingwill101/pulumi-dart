// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all/stream_backfill_all.dart';
import '../stream_destination_config/stream_destination_config.dart';
import '../stream_rule_set/stream_rule_set.dart';
import '../stream_source_config/stream_source_config.dart';

/// The set of arguments for Stream.
class StreamArgs {
  /// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAll>? backfillAll;

  /// Backfill strategy to disable automatic backfill for the Stream's objects.
  final pulumi.Input<Map<String, dynamic>>? backfillNone;

  /// Create the stream without validating it.
  final pulumi.Input<bool>? createWithoutValidation;

  /// A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final pulumi.Input<String>? customerManagedEncryptionKey;

  /// Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// `NOT_STARTED` to create the stream without starting and `PAUSED` to pause
  /// the stream from a `RUNNING` state.
  /// Possible values: NOT_STARTED, RUNNING, PAUSED. Default: NOT_STARTED
  final pulumi.Input<String>? desiredState;

  /// Destination connection profile configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamDestinationConfig> destinationConfig;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location this stream is located in.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rule sets to apply to the stream.
  /// Structure is documented below.
  final pulumi.Input<List<StreamRuleSet>>? ruleSets;

  /// Source connection profile configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfig> sourceConfig;

  /// The stream identifier.
  final pulumi.Input<String> streamId;

  StreamArgs({
    this.backfillAll,
    this.backfillNone,
    this.createWithoutValidation,
    this.customerManagedEncryptionKey,
    this.desiredState,
    required this.destinationConfig,
    required this.displayName,
    this.labels,
    required this.location,
    this.project,
    this.ruleSets,
    required this.sourceConfig,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backfillAllValue = backfillAll;
    if (backfillAllValue != null) {
      map['backfillAll'] = pulumi.Input.mapOptionalInputValue<StreamBackfillAll,
          Map<String, dynamic>>(backfillAllValue, (value) => value.toMap());
    }
    final backfillNoneValue = backfillNone;
    if (backfillNoneValue != null) {
      map['backfillNone'] = backfillNoneValue;
    }
    final createWithoutValidationValue = createWithoutValidation;
    if (createWithoutValidationValue != null) {
      map['createWithoutValidation'] = createWithoutValidationValue;
    }
    final customerManagedEncryptionKeyValue = customerManagedEncryptionKey;
    if (customerManagedEncryptionKeyValue != null) {
      map['customerManagedEncryptionKey'] = customerManagedEncryptionKeyValue;
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    map['destinationConfig'] = pulumi.Input.mapInputValue<
        StreamDestinationConfig,
        Map<String, dynamic>>(destinationConfig, (value) => value.toMap());
    map['displayName'] = displayName;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final ruleSetsValue = ruleSets;
    if (ruleSetsValue != null) {
      map['ruleSets'] = pulumi.Input.mapOptionalInputValue<List<StreamRuleSet>,
              List<Map<String, dynamic>>>(
          ruleSetsValue,
          (value) =>
              pulumi.Input.encodeList<StreamRuleSet, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['sourceConfig'] =
        pulumi.Input.mapInputValue<StreamSourceConfig, Map<String, dynamic>>(
            sourceConfig, (value) => value.toMap());
    map['streamId'] = streamId;
    return map;
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      backfillAll:
          pulumi.Input.asOptionalInput<StreamBackfillAll>(map['backfillAll']),
      backfillNone: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['backfillNone']),
      createWithoutValidation:
          pulumi.Input.asOptionalInput<bool>(map['createWithoutValidation']),
      customerManagedEncryptionKey: pulumi.Input.asOptionalInput<String>(
          map['customerManagedEncryptionKey']),
      desiredState: pulumi.Input.asOptionalInput<String>(map['desiredState']),
      destinationConfig: pulumi.Input.asInput<StreamDestinationConfig>(
          map['destinationConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      ruleSets:
          pulumi.Input.asOptionalInput<List<StreamRuleSet>>(map['ruleSets']),
      sourceConfig:
          pulumi.Input.asInput<StreamSourceConfig>(map['sourceConfig']),
      streamId: pulumi.Input.asInput<String>(map['streamId']),
    );
  }
}
