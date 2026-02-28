// ignore_for_file: unused_element, unnecessary_cast

class CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['phoneNumber'] = phoneNumber;
    return map;
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
      Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
