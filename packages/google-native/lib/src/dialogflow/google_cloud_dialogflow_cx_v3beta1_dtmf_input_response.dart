// ignore_for_file: unused_element, unnecessary_cast

/// Represents the input for dtmf event.
class GoogleCloudDialogflowCxV3beta1DtmfInputResponse {
  /// The dtmf digits.
  final String digits;

  /// The finish digit (if any).
  final String finishDigit;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1DtmfInputResponse].
  /// [digits] The dtmf digits.
  /// [finishDigit] The finish digit (if any).
  GoogleCloudDialogflowCxV3beta1DtmfInputResponse({
    required this.digits,
    required this.finishDigit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'digits': digits, 'finishDigit': finishDigit};
  }

  factory GoogleCloudDialogflowCxV3beta1DtmfInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1DtmfInputResponse(
      digits: map['digits'] as String,
      finishDigit: map['finishDigit'] as String,
    );
  }
}
