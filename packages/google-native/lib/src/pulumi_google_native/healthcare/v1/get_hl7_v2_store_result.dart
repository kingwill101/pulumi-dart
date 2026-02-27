// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'hl7_v2_notification_config_response.dart';
import 'parser_config_response.dart';

/// Result data returned by getHl7V2Store.
class GetHl7V2StoreResult {
  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;

  /// Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  final String name;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  final List<Hl7V2NotificationConfigResponse> notificationConfigs;

  /// The configuration for the parser. It determines how the server parses the messages.
  final ParserConfigResponse parserConfig;

  /// Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  final bool rejectDuplicateMessage;

  GetHl7V2StoreResult({
    required this.labels,
    required this.name,
    required this.notificationConfigs,
    required this.parserConfig,
    required this.rejectDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['name'] = name;
    map['notificationConfigs'] =
        Input.encodeList<Hl7V2NotificationConfigResponse, Map<String, dynamic>>(
            notificationConfigs, (value) => value.toMap());
    map['parserConfig'] = parserConfig.toMap();
    map['rejectDuplicateMessage'] = rejectDuplicateMessage;
    return map;
  }

  factory GetHl7V2StoreResult.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreResult(
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notificationConfigs: Input.decodeList<Hl7V2NotificationConfigResponse>(
          map['notificationConfigs'],
          (value) => Hl7V2NotificationConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      parserConfig: ParserConfigResponse.fromMap(
          (map['parserConfig'] as Map).cast<String, dynamic>()),
      rejectDuplicateMessage: map['rejectDuplicateMessage'] as bool,
    );
  }
}
