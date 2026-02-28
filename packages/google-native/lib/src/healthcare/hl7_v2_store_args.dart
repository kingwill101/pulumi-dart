// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_v2_notification_config.dart';
import 'parser_config.dart';

/// {@template pulumi_healthcare_v1_hl7_v2_store_args_doc}
/// The set of arguments for Hl7V2Store.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_hl7_v2_store_args_doc}
class Hl7V2StoreArgs {
  final pulumi.Input<String> datasetId;
  /// The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? hl7V2StoreId;
  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  final pulumi.Input<String>? name;
  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  final pulumi.Input<List<Hl7V2NotificationConfig>>? notificationConfigs;
  /// The configuration for the parser. It determines how the server parses the messages.
  final pulumi.Input<ParserConfig>? parserConfig;
  final pulumi.Input<String>? project;
  /// Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  final pulumi.Input<bool>? rejectDuplicateMessage;

  /// Creates a new [Hl7V2StoreArgs].
  /// [datasetId] Required.
  /// [hl7V2StoreId] The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [name] Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// [notificationConfigs] A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  /// [parserConfig] The configuration for the parser. It determines how the server parses the messages.
  /// [project] Optional.
  /// [rejectDuplicateMessage] Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  Hl7V2StoreArgs({
    required String datasetId,
    String? hl7V2StoreId,
    Map<String, String>? labels,
    String? location,
    String? name,
    List<Hl7V2NotificationConfig>? notificationConfigs,
    ParserConfig? parserConfig,
    String? project,
    bool? rejectDuplicateMessage,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      hl7V2StoreId = pulumi.Input.asOptionalInput<String>(hl7V2StoreId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationConfigs = pulumi.Input.asOptionalInput<List<Hl7V2NotificationConfig>>(notificationConfigs),
      parserConfig = pulumi.Input.asOptionalInput<ParserConfig>(parserConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      rejectDuplicateMessage = pulumi.Input.asOptionalInput<bool>(rejectDuplicateMessage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'hl7V2StoreId': ?hl7V2StoreId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'notificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<Hl7V2NotificationConfig>, List<Map<String, dynamic>>>(notificationConfigs, (value) => pulumi.Input.encodeList<Hl7V2NotificationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parserConfig': ?pulumi.Input.mapOptionalInputValue<ParserConfig, Map<String, dynamic>>(parserConfig, (value) => value.toMap()),
      'project': ?project,
      'rejectDuplicateMessage': ?rejectDuplicateMessage,
    };
  }

  factory Hl7V2StoreArgs.fromMap(Map<String, dynamic> map) {
    return Hl7V2StoreArgs(
      datasetId: map['datasetId'] as String,
      hl7V2StoreId: map['hl7V2StoreId'] == null ? null : map['hl7V2StoreId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notificationConfigs: map['notificationConfigs'] == null ? null : pulumi.Input.decodeList<Hl7V2NotificationConfig>(map['notificationConfigs'], (value) => Hl7V2NotificationConfig.fromMap((value as Map).cast<String, dynamic>())),
      parserConfig: map['parserConfig'] == null ? null : ParserConfig.fromMap((map['parserConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      rejectDuplicateMessage: map['rejectDuplicateMessage'] == null ? null : map['rejectDuplicateMessage'] as bool,
    );
  }
}

