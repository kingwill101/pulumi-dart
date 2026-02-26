import 'package:pulumi/pulumi.dart';
import 'message_args2.dart';
import 'parsed_data_response2.dart';
import 'patient_id_response2.dart';
import 'schematized_data_response2.dart';

/// Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received.
class Message3 extends CustomResource {
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
  late final Output<ParsedDataResponse2> parsedData;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  late final Output<List<PatientIdResponse2>> patientIds;
  late final Output<String> project;

  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  late final Output<SchematizedDataResponse2> schematizedData;

  /// The hospital that this message came from. MSH-4.
  late final Output<String> sendFacility;

  /// The datetime the sending application sent this message. MSH-7.
  late final Output<String> sendTime;

  Message3(
    String name, {
    MessageArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Message',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.data = registerOutput<String>('data');
    this.datasetId = registerOutput<String>('datasetId');
    this.hl7V2StoreId = registerOutput<String>('hl7V2StoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.messageType = registerOutput<String>('messageType');
    this.name = registerOutput<String>('name');
    this.parsedData = registerOutput<ParsedDataResponse2>('parsedData');
    this.patientIds = registerOutput<List<PatientIdResponse2>>('patientIds');
    this.project = registerOutput<String>('project');
    this.schematizedData =
        registerOutput<SchematizedDataResponse2>('schematizedData');
    this.sendFacility = registerOutput<String>('sendFacility');
    this.sendTime = registerOutput<String>('sendTime');
  }
}
