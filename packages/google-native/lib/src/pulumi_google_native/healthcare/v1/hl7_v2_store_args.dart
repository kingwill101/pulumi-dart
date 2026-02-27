// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_v2_notification_config.dart';
import 'parser_config.dart';

/// The set of arguments for Hl7V2Store.
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

  Hl7V2StoreArgs({
    required this.datasetId,
    this.hl7V2StoreId,
    this.labels,
    this.location,
    this.name,
    this.notificationConfigs,
    this.parserConfig,
    this.project,
    this.rejectDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final hl7V2StoreIdValue = hl7V2StoreId;
    if (hl7V2StoreIdValue != null) {
      map['hl7V2StoreId'] = hl7V2StoreIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigsValue = notificationConfigs;
    if (notificationConfigsValue != null) {
      map['notificationConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<Hl7V2NotificationConfig>, List<Map<String, dynamic>>>(
          notificationConfigsValue,
          (value) => pulumi.Input.encodeList<Hl7V2NotificationConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parserConfigValue = parserConfig;
    if (parserConfigValue != null) {
      map['parserConfig'] = pulumi.Input.mapOptionalInputValue<ParserConfig,
          Map<String, dynamic>>(parserConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rejectDuplicateMessageValue = rejectDuplicateMessage;
    if (rejectDuplicateMessageValue != null) {
      map['rejectDuplicateMessage'] = rejectDuplicateMessageValue;
    }
    return map;
  }

  factory Hl7V2StoreArgs.fromMap(Map<String, dynamic> map) {
    return Hl7V2StoreArgs(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: pulumi.Input.asOptionalInput<String>(map['hl7V2StoreId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationConfigs:
          pulumi.Input.asOptionalInput<List<Hl7V2NotificationConfig>>(
              map['notificationConfigs']),
      parserConfig:
          pulumi.Input.asOptionalInput<ParserConfig>(map['parserConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rejectDuplicateMessage:
          pulumi.Input.asOptionalInput<bool>(map['rejectDuplicateMessage']),
    );
  }
}
