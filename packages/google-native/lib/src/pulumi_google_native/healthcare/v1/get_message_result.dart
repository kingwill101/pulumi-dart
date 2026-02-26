// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'parsed_data_response.dart';
import 'patient_id_response.dart';
import 'schematized_data_response.dart';

/// Result data returned by getMessage.
class GetMessageResult {
  /// The datetime when the message was created. Set by the server.
  final String createTime;

  /// Raw message bytes.
  final String data;

  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;

  /// The message type for this message. MSH-9.1.
  final String messageType;

  /// Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  final String name;

  /// The parsed version of the raw message data.
  final ParsedDataResponse parsedData;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  final List<PatientIdResponse> patientIds;

  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  final SchematizedDataResponse schematizedData;

  /// The hospital that this message came from. MSH-4.
  final String sendFacility;

  /// The datetime the sending application sent this message. MSH-7.
  final String sendTime;

  GetMessageResult({
    required this.createTime,
    required this.data,
    required this.labels,
    required this.messageType,
    required this.name,
    required this.parsedData,
    required this.patientIds,
    required this.schematizedData,
    required this.sendFacility,
    required this.sendTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['data'] = data;
    map['labels'] = labels;
    map['messageType'] = messageType;
    map['name'] = name;
    map['parsedData'] = parsedData.toMap();
    map['patientIds'] =
        Input.encodeList<PatientIdResponse, Map<String, dynamic>>(
            patientIds, (value) => value.toMap());
    map['schematizedData'] = schematizedData.toMap();
    map['sendFacility'] = sendFacility;
    map['sendTime'] = sendTime;
    return map;
  }

  factory GetMessageResult.fromMap(Map<String, dynamic> map) {
    return GetMessageResult(
      createTime: map['createTime'] as String,
      data: map['data'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      messageType: map['messageType'] as String,
      name: map['name'] as String,
      parsedData: ParsedDataResponse.fromMap(
          (map['parsedData'] as Map).cast<String, dynamic>()),
      patientIds: Input.decodeList<PatientIdResponse>(
          map['patientIds'],
          (value) => PatientIdResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      schematizedData: SchematizedDataResponse.fromMap(
          (map['schematizedData'] as Map).cast<String, dynamic>()),
      sendFacility: map['sendFacility'] as String,
      sendTime: map['sendTime'] as String,
    );
  }
}
