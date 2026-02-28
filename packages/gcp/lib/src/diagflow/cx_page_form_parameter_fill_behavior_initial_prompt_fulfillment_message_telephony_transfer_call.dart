// ignore_for_file: unused_element, unnecessary_cast


class CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCall.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

