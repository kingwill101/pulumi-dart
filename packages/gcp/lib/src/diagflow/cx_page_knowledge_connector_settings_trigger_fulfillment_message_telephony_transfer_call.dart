// ignore_for_file: unused_element, unnecessary_cast

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
