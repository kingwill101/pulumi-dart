// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_v2_notification_config_response_healthcare_v1beta1.dart';
import 'notification_config_response_healthcare_v1beta1.dart';
import 'parser_config_response_healthcare_v1beta1.dart';

/// Result data returned by getHl7V2Store.
class GetHl7V2StoreHealthcareV1beta1Result {
  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;

  /// Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  final String name;

  /// The notification destination all messages (both Ingest & Create) are published on. Only the message name is sent as part of the notification. If this is unset, no notifications are sent. Supplied by the client.
  final NotificationConfigResponseHealthcareV1beta1 notificationConfig;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  final List<Hl7V2NotificationConfigResponseHealthcareV1beta1>
  notificationConfigs;

  /// The configuration for the parser. It determines how the server parses the messages.
  final ParserConfigResponseHealthcareV1beta1 parserConfig;

  /// Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  final bool rejectDuplicateMessage;

  /// Creates a new [GetHl7V2StoreHealthcareV1beta1Result].
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [name] Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// [notificationConfig] The notification destination all messages (both Ingest & Create) are published on. Only the message name is sent as part of the notification. If this is unset, no notifications are sent. Supplied by the client.
  /// [notificationConfigs] A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  /// [parserConfig] The configuration for the parser. It determines how the server parses the messages.
  /// [rejectDuplicateMessage] Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  GetHl7V2StoreHealthcareV1beta1Result({
    required this.labels,
    required this.name,
    required this.notificationConfig,
    required this.notificationConfigs,
    required this.parserConfig,
    required this.rejectDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'name': name,
      'notificationConfig': notificationConfig.toMap(),
      'notificationConfigs':
          pulumi.Input.encodeList<
            Hl7V2NotificationConfigResponseHealthcareV1beta1,
            Map<String, dynamic>
          >(notificationConfigs, (value) => value.toMap()),
      'parserConfig': parserConfig.toMap(),
      'rejectDuplicateMessage': rejectDuplicateMessage,
    };
  }

  factory GetHl7V2StoreHealthcareV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHl7V2StoreHealthcareV1beta1Result(
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notificationConfig: NotificationConfigResponseHealthcareV1beta1.fromMap(
        (map['notificationConfig'] as Map).cast<String, dynamic>(),
      ),
      notificationConfigs:
          pulumi.Input.decodeList<
            Hl7V2NotificationConfigResponseHealthcareV1beta1
          >(
            map['notificationConfigs'],
            (value) => Hl7V2NotificationConfigResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      parserConfig: ParserConfigResponseHealthcareV1beta1.fromMap(
        (map['parserConfig'] as Map).cast<String, dynamic>(),
      ),
      rejectDuplicateMessage: map['rejectDuplicateMessage'] as bool,
    );
  }
}
