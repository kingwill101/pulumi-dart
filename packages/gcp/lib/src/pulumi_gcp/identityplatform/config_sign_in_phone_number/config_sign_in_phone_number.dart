// ignore_for_file: unused_element, unnecessary_cast

class ConfigSignInPhoneNumber {
  /// Whether phone number auth is enabled for the project or not.
  final bool enabled;

  /// A map of <test phone number, fake code> that can be used for phone auth testing.
  final Map<String, String>? testPhoneNumbers;

  ConfigSignInPhoneNumber({
    required this.enabled,
    this.testPhoneNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final testPhoneNumbersValue = testPhoneNumbers;
    if (testPhoneNumbersValue != null) {
      map['testPhoneNumbers'] = testPhoneNumbersValue;
    }
    return map;
  }

  factory ConfigSignInPhoneNumber.fromMap(Map<String, dynamic> map) {
    return ConfigSignInPhoneNumber(
      enabled: map['enabled'] as bool,
      testPhoneNumbers: map['testPhoneNumbers'] == null
          ? null
          : (map['testPhoneNumbers'] as Map).cast<String, String>(),
    );
  }
}
