// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnUserInputInputDtmf {
  /// The dtmf digits.
  final String? digits;

  /// The finish digit (if any).
  final String? finishDigit;

  CxTestCaseLastTestResultConversationTurnUserInputInputDtmf({
    this.digits,
    this.finishDigit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digitsValue = digits;
    if (digitsValue != null) {
      map['digits'] = digitsValue;
    }
    final finishDigitValue = finishDigit;
    if (finishDigitValue != null) {
      map['finishDigit'] = finishDigitValue;
    }
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputDtmf.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputDtmf(
      digits: map['digits'] == null ? null : map['digits'] as String,
      finishDigit:
          map['finishDigit'] == null ? null : map['finishDigit'] as String,
    );
  }
}
