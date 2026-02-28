// ignore_for_file: unused_element, unnecessary_cast

/// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  final String? phoneNumber;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall({
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final phoneNumberValue = phoneNumber;
    if (phoneNumberValue != null) {
      map['phoneNumber'] = phoneNumberValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall(
      phoneNumber:
          map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
    );
  }
}
