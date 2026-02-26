import 'package:pulumi/pulumi.dart';
import 'message_args.dart';
import 'parsed_data_response.dart';
import 'patient_id_response.dart';
import 'schematized_data_response.dart';

/// Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received.
class Message2 extends CustomResource {
  /// The datetime when the message was created. Set by the server.
  late final Output<String> createTime;

  /// Raw message bytes.
  late final Output<String> data;
  late final Output<String> datasetId;
  late final Output<String> hl7V2StoreId;

  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The message type for this message. MSH-9.1.
  late final Output<String> messageType;

  /// Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  late final Output<String> name;

  /// The parsed version of the raw message data.
  late final Output<ParsedDataResponse> parsedData;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  late final Output<List<PatientIdResponse>> patientIds;
  late final Output<String> project;

  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  late final Output<SchematizedDataResponse> schematizedData;

  /// The hospital that this message came from. MSH-4.
  late final Output<String> sendFacility;

  /// The datetime the sending application sent this message. MSH-7.
  late final Output<String> sendTime;

  Message2(
    String name, {
    MessageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:Message',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.data = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.hl7V2StoreId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.messageType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parsedData = Output.createUnknown<ParsedDataResponse>();
    this.patientIds = Output.createUnknown<List<PatientIdResponse>>();
    this.project = Output.createUnknown<String>();
    this.schematizedData = Output.createUnknown<SchematizedDataResponse>();
    this.sendFacility = Output.createUnknown<String>();
    this.sendTime = Output.createUnknown<String>();
  }
}
