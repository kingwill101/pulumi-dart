// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all/stream_backfill_all.dart';
import '../stream_destination_config/stream_destination_config.dart';
import '../stream_rule_set/stream_rule_set.dart';
import '../stream_source_config/stream_source_config.dart';

/// The set of arguments for Stream.
class StreamArgs {
  /// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// Structure is documented below.
  final Input<StreamBackfillAll>? backfillAll;

  /// Backfill strategy to disable automatic backfill for the Stream's objects.
  final Input<Map<String, dynamic>>? backfillNone;

  /// Create the stream without validating it.
  final Input<bool>? createWithoutValidation;

  /// A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final Input<String>? customerManagedEncryptionKey;

  /// Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// `NOT_STARTED` to create the stream without starting and `PAUSED` to pause
  /// the stream from a `RUNNING` state.
  /// Possible values: NOT_STARTED, RUNNING, PAUSED. Default: NOT_STARTED
  final Input<String>? desiredState;

  /// Destination connection profile configuration.
  /// Structure is documented below.
  final Input<StreamDestinationConfig> destinationConfig;

  /// Display name.
  final Input<String> displayName;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the location this stream is located in.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Rule sets to apply to the stream.
  /// Structure is documented below.
  final Input<List<StreamRuleSet>>? ruleSets;

  /// Source connection profile configuration.
  /// Structure is documented below.
  final Input<StreamSourceConfig> sourceConfig;

  /// The stream identifier.
  final Input<String> streamId;

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
      map['backfillAll'] =
          Input.mapOptionalInputValue<StreamBackfillAll, Map<String, dynamic>>(
              backfillAllValue, (value) => value.toMap());
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
    map['destinationConfig'] =
        Input.mapInputValue<StreamDestinationConfig, Map<String, dynamic>>(
            destinationConfig, (value) => value.toMap());
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
      map['ruleSets'] = Input.mapOptionalInputValue<List<StreamRuleSet>,
              List<Map<String, dynamic>>>(
          ruleSetsValue,
          (value) => Input.encodeList<StreamRuleSet, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['sourceConfig'] =
        Input.mapInputValue<StreamSourceConfig, Map<String, dynamic>>(
            sourceConfig, (value) => value.toMap());
    map['streamId'] = streamId;
    return map;
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      backfillAll: Input.asOptionalInput<StreamBackfillAll>(map['backfillAll']),
      backfillNone:
          Input.asOptionalInput<Map<String, dynamic>>(map['backfillNone']),
      createWithoutValidation:
          Input.asOptionalInput<bool>(map['createWithoutValidation']),
      customerManagedEncryptionKey:
          Input.asOptionalInput<String>(map['customerManagedEncryptionKey']),
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      destinationConfig:
          Input.asInput<StreamDestinationConfig>(map['destinationConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      ruleSets: Input.asOptionalInput<List<StreamRuleSet>>(map['ruleSets']),
      sourceConfig: Input.asInput<StreamSourceConfig>(map['sourceConfig']),
      streamId: Input.asInput<String>(map['streamId']),
    );
  }
}
