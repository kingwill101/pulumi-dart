// ignore_for_file: unused_element, unnecessary_cast

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
