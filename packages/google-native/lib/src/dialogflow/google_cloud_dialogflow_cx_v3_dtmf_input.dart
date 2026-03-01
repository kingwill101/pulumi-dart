// ignore_for_file: unused_element, unnecessary_cast

/// Represents the input for dtmf event.
class GoogleCloudDialogflowCxV3DtmfInput {
  /// The dtmf digits.
  final String? digits;

  /// The finish digit (if any).
  final String? finishDigit;

  /// Creates a new [GoogleCloudDialogflowCxV3DtmfInput].
  /// [digits] The dtmf digits.
  /// [finishDigit] The finish digit (if any).
  GoogleCloudDialogflowCxV3DtmfInput({this.digits, this.finishDigit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'digits': ?digits, 'finishDigit': ?finishDigit};
  }

  factory GoogleCloudDialogflowCxV3DtmfInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3DtmfInput(
      digits: map['digits'] == null ? null : map['digits'] as String,
      finishDigit: map['finishDigit'] == null
          ? null
          : map['finishDigit'] as String,
    );
  }
}
