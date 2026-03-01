// ignore_for_file: unused_element, unnecessary_cast

class CxPageEntryFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxPageEntryFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxPageEntryFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory CxPageEntryFulfillmentMessageTelephonyTransferCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageEntryFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
