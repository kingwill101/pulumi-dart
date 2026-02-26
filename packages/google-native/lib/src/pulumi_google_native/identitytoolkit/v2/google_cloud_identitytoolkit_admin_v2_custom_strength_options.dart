// ignore_for_file: unused_element, unnecessary_cast

/// Custom strength options to enforce on user passwords.
class GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions {
  /// The password must contain a lower case character.
  final bool? containsLowercaseCharacter;

  /// The password must contain a non alpha numeric character.
  final bool? containsNonAlphanumericCharacter;

  /// The password must contain a number.
  final bool? containsNumericCharacter;

  /// The password must contain an upper case character.
  final bool? containsUppercaseCharacter;

  /// Maximum password length. No default max length
  final int? maxPasswordLength;

  /// Minimum password length. Range from 6 to 30
  final int? minPasswordLength;

  GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions({
    this.containsLowercaseCharacter,
    this.containsNonAlphanumericCharacter,
    this.containsNumericCharacter,
    this.containsUppercaseCharacter,
    this.maxPasswordLength,
    this.minPasswordLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containsLowercaseCharacterValue = containsLowercaseCharacter;
    if (containsLowercaseCharacterValue != null) {
      map['containsLowercaseCharacter'] = containsLowercaseCharacterValue;
    }
    final containsNonAlphanumericCharacterValue =
        containsNonAlphanumericCharacter;
    if (containsNonAlphanumericCharacterValue != null) {
      map['containsNonAlphanumericCharacter'] =
          containsNonAlphanumericCharacterValue;
    }
    final containsNumericCharacterValue = containsNumericCharacter;
    if (containsNumericCharacterValue != null) {
      map['containsNumericCharacter'] = containsNumericCharacterValue;
    }
    final containsUppercaseCharacterValue = containsUppercaseCharacter;
    if (containsUppercaseCharacterValue != null) {
      map['containsUppercaseCharacter'] = containsUppercaseCharacterValue;
    }
    final maxPasswordLengthValue = maxPasswordLength;
    if (maxPasswordLengthValue != null) {
      map['maxPasswordLength'] = maxPasswordLengthValue;
    }
    final minPasswordLengthValue = minPasswordLength;
    if (minPasswordLengthValue != null) {
      map['minPasswordLength'] = minPasswordLengthValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions(
      containsLowercaseCharacter: map['containsLowercaseCharacter'] == null
          ? null
          : map['containsLowercaseCharacter'] as bool,
      containsNonAlphanumericCharacter:
          map['containsNonAlphanumericCharacter'] == null
              ? null
              : map['containsNonAlphanumericCharacter'] as bool,
      containsNumericCharacter: map['containsNumericCharacter'] == null
          ? null
          : map['containsNumericCharacter'] as bool,
      containsUppercaseCharacter: map['containsUppercaseCharacter'] == null
          ? null
          : map['containsUppercaseCharacter'] as bool,
      maxPasswordLength: map['maxPasswordLength'] == null
          ? null
          : map['maxPasswordLength'] as int,
      minPasswordLength: map['minPasswordLength'] == null
          ? null
          : map['minPasswordLength'] as int,
    );
  }
}
