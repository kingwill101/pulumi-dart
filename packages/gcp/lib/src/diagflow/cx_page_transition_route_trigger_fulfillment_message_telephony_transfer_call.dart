// ignore_for_file: unused_element, unnecessary_cast

class CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
