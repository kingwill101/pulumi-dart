// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all.dart';
import 'stream_destination_config.dart';
import 'stream_rule_set.dart';
import 'stream_source_config.dart';

/// {@template pulumi_datastream_stream_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_datastream_stream_stream_args_doc}
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

  /// Creates a new [StreamArgs].
  /// [backfillAll] Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// [backfillNone] Backfill strategy to disable automatic backfill for the Stream's objects.
  /// [createWithoutValidation] Create the stream without validating it.
  /// [customerManagedEncryptionKey] A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// [desiredState] Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] The name of the location this stream is located in.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleSets] Rule sets to apply to the stream.
  /// [sourceConfig] Source connection profile configuration.
  /// [streamId] The stream identifier.
  StreamArgs({
    StreamBackfillAll? backfillAll,
    Map<String, dynamic>? backfillNone,
    bool? createWithoutValidation,
    String? customerManagedEncryptionKey,
    String? desiredState,
    required StreamDestinationConfig destinationConfig,
    required String displayName,
    Map<String, String>? labels,
    required String location,
    String? project,
    List<StreamRuleSet>? ruleSets,
    required StreamSourceConfig sourceConfig,
    required String streamId,
  }) : backfillAll = pulumi.Input.asOptionalInput<StreamBackfillAll>(
         backfillAll,
       ),
       backfillNone = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         backfillNone,
       ),
       createWithoutValidation = pulumi.Input.asOptionalInput<bool>(
         createWithoutValidation,
       ),
       customerManagedEncryptionKey = pulumi.Input.asOptionalInput<String>(
         customerManagedEncryptionKey,
       ),
       desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
       destinationConfig = pulumi.Input.asInput<StreamDestinationConfig>(
         destinationConfig,
       ),
       displayName = pulumi.Input.asInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       ruleSets = pulumi.Input.asOptionalInput<List<StreamRuleSet>>(ruleSets),
       sourceConfig = pulumi.Input.asInput<StreamSourceConfig>(sourceConfig),
       streamId = pulumi.Input.asInput<String>(streamId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll':
          ?pulumi.Input.mapOptionalInputValue<
            StreamBackfillAll,
            Map<String, dynamic>
          >(backfillAll, (value) => value.toMap()),
      'backfillNone': ?backfillNone,
      'createWithoutValidation': ?createWithoutValidation,
      'customerManagedEncryptionKey': ?customerManagedEncryptionKey,
      'desiredState': ?desiredState,
      'destinationConfig':
          pulumi.Input.mapInputValue<
            StreamDestinationConfig,
            Map<String, dynamic>
          >(destinationConfig, (value) => value.toMap()),
      'displayName': displayName,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'ruleSets':
          ?pulumi.Input.mapOptionalInputValue<
            List<StreamRuleSet>,
            List<Map<String, dynamic>>
          >(
            ruleSets,
            (value) =>
                pulumi.Input.encodeList<StreamRuleSet, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sourceConfig':
          pulumi.Input.mapInputValue<StreamSourceConfig, Map<String, dynamic>>(
            sourceConfig,
            (value) => value.toMap(),
          ),
      'streamId': streamId,
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      backfillAll: map['backfillAll'] == null
          ? null
          : StreamBackfillAll.fromMap(
              (map['backfillAll'] as Map).cast<String, dynamic>(),
            ),
      backfillNone: map['backfillNone'] == null
          ? null
          : (map['backfillNone'] as Map).cast<String, dynamic>(),
      createWithoutValidation: map['createWithoutValidation'] == null
          ? null
          : map['createWithoutValidation'] as bool,
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] == null
          ? null
          : map['customerManagedEncryptionKey'] as String,
      desiredState: map['desiredState'] == null
          ? null
          : map['desiredState'] as String,
      destinationConfig: StreamDestinationConfig.fromMap(
        (map['destinationConfig'] as Map).cast<String, dynamic>(),
      ),
      displayName: map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      ruleSets: map['ruleSets'] == null
          ? null
          : pulumi.Input.decodeList<StreamRuleSet>(
              map['ruleSets'],
              (value) =>
                  StreamRuleSet.fromMap((value as Map).cast<String, dynamic>()),
            ),
      sourceConfig: StreamSourceConfig.fromMap(
        (map['sourceConfig'] as Map).cast<String, dynamic>(),
      ),
      streamId: map['streamId'] as String,
    );
  }
}
