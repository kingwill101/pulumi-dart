import 'package:pulumi/pulumi.dart' hide Config;
import 'hl7_v2_notification_config_response2.dart';
import 'hl7_v2_store_args2.dart';
import 'notification_config_response4.dart';
import 'parser_config_response2.dart';

/// Creates a new HL7v2 store within the parent dataset.
class Hl7V2Store2 extends CustomResource {
  late final Output<String> datasetId;

  /// The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final Output<String?> hl7V2StoreId;

  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  late final Output<String> name;

  /// The notification destination all messages (both Ingest & Create) are published on. Only the message name is sent as part of the notification. If this is unset, no notifications are sent. Supplied by the client.
  late final Output<NotificationConfigResponse4> notificationConfig;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  late final Output<List<Hl7V2NotificationConfigResponse2>> notificationConfigs;

  /// The configuration for the parser. It determines how the server parses the messages.
  late final Output<ParserConfigResponse2> parserConfig;
  late final Output<String> project;

  /// Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  late final Output<bool> rejectDuplicateMessage;

  Hl7V2Store2(
    String name, {
    Hl7V2StoreArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Hl7V2Store',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.datasetId = registerOutput<String>('datasetId');
    this.hl7V2StoreId = registerOutput<String?>('hl7V2StoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notificationConfig =
        registerOutput<NotificationConfigResponse4>('notificationConfig');
    this.notificationConfigs =
        registerOutput<List<Hl7V2NotificationConfigResponse2>>(
            'notificationConfigs');
    this.parserConfig = registerOutput<ParserConfigResponse2>('parserConfig');
    this.project = registerOutput<String>('project');
    this.rejectDuplicateMessage =
        registerOutput<bool>('rejectDuplicateMessage');
  }
}
