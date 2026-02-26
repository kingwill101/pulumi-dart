// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'patient_id.dart';
import 'schematized_data.dart';

/// The set of arguments for Message.
class MessageArgs {
  /// Raw message bytes.
  final Input<String>? data;
  final Input<String> datasetId;
  final Input<String> hl7V2StoreId;

  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The message type for this message. MSH-9.1.
  final Input<String>? messageType;

  /// Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  final Input<String>? name;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  final Input<List<PatientId>>? patientIds;
  final Input<String>? project;

  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  final Input<SchematizedData>? schematizedData;

  /// The hospital that this message came from. MSH-4.
  final Input<String>? sendFacility;

  /// The datetime the sending application sent this message. MSH-7.
  final Input<String>? sendTime;

  MessageArgs({
    this.data,
    required this.datasetId,
    required this.hl7V2StoreId,
    this.labels,
    this.location,
    this.messageType,
    this.name,
    this.patientIds,
    this.project,
    this.schematizedData,
    this.sendFacility,
    this.sendTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['datasetId'] = datasetId;
    map['hl7V2StoreId'] = hl7V2StoreId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final messageTypeValue = messageType;
    if (messageTypeValue != null) {
      map['messageType'] = messageTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final patientIdsValue = patientIds;
    if (patientIdsValue != null) {
      map['patientIds'] = Input.mapOptionalInputValue<List<PatientId>,
              List<Map<String, dynamic>>>(
          patientIdsValue,
          (value) => Input.encodeList<PatientId, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final schematizedDataValue = schematizedData;
    if (schematizedDataValue != null) {
      map['schematizedData'] =
          Input.mapOptionalInputValue<SchematizedData, Map<String, dynamic>>(
              schematizedDataValue, (value) => value.toMap());
    }
    final sendFacilityValue = sendFacility;
    if (sendFacilityValue != null) {
      map['sendFacility'] = sendFacilityValue;
    }
    final sendTimeValue = sendTime;
    if (sendTimeValue != null) {
      map['sendTime'] = sendTimeValue;
    }
    return map;
  }

  factory MessageArgs.fromMap(Map<String, dynamic> map) {
    return MessageArgs(
      data: Input.asOptionalInput<String>(map['data']),
      datasetId: Input.asInput<String>(map['datasetId']),
      hl7V2StoreId: Input.asInput<String>(map['hl7V2StoreId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      messageType: Input.asOptionalInput<String>(map['messageType']),
      name: Input.asOptionalInput<String>(map['name']),
      patientIds: Input.asOptionalInput<List<PatientId>>(map['patientIds']),
      project: Input.asOptionalInput<String>(map['project']),
      schematizedData:
          Input.asOptionalInput<SchematizedData>(map['schematizedData']),
      sendFacility: Input.asOptionalInput<String>(map['sendFacility']),
      sendTime: Input.asOptionalInput<String>(map['sendTime']),
    );
  }
}
