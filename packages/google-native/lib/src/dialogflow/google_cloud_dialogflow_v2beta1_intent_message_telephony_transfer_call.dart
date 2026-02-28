// ignore_for_file: unused_element, unnecessary_cast


/// Transfers the call in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall {
  /// The phone number to transfer the call to in [E.164 format](https://en.wikipedia.org/wiki/E.164). We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  final String phoneNumber;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall].
  /// [phoneNumber] The phone number to transfer the call to in [E.164 format](https://en.wikipedia.org/wiki/E.164). We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

