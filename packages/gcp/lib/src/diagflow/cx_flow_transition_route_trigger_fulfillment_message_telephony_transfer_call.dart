// ignore_for_file: unused_element, unnecessary_cast

class CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
