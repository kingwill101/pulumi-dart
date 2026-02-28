// ignore_for_file: unused_element, unnecessary_cast


/// Transfers the call in Telephony Gateway.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse {
  /// The phone number to transfer the call to in [E.164 format](https://en.wikipedia.org/wiki/E.164). We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  final String phoneNumber;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse].
  /// [phoneNumber] The phone number to transfer the call to in [E.164 format](https://en.wikipedia.org/wiki/E.164). We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

