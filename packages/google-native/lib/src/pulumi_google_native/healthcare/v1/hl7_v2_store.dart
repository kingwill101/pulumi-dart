import 'package:pulumi/pulumi.dart';
import 'hl7_v2_notification_config_response.dart';
import 'hl7_v2_store_args.dart';
import 'parser_config_response.dart';

/// Creates a new HL7v2 store within the parent dataset.
class Hl7V2Store extends CustomResource {
  late final Output<String> datasetId;

  /// The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final Output<String?> hl7V2StoreId;

  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  late final Output<String> name;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  late final Output<List<Hl7V2NotificationConfigResponse>> notificationConfigs;

  /// The configuration for the parser. It determines how the server parses the messages.
  late final Output<ParserConfigResponse> parserConfig;
  late final Output<String> project;

  /// Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  late final Output<bool> rejectDuplicateMessage;

  Hl7V2Store(
    String name, {
    Hl7V2StoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:Hl7V2Store',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.datasetId = Output.createUnknown<String>();
    this.hl7V2StoreId = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notificationConfigs =
        Output.createUnknown<List<Hl7V2NotificationConfigResponse>>();
    this.parserConfig = Output.createUnknown<ParserConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.rejectDuplicateMessage = Output.createUnknown<bool>();
  }
}
